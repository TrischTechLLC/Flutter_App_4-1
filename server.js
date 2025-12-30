require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const multer = require('multer');
const WebSocket = require('ws');
const http = require('http');
const cors = require('cors');
const sharp = require('sharp');

// Build MongoDB URI dynamically without exposing credentials in code
const {
  MONGO_USER,
  MONGO_PASS,
  MONGO_CLUSTER,
  MONGO_DB,
  PORT
} = process.env;

const MONGO_URI = `mongodb+srv://${MONGO_USER}:${encodeURIComponent(MONGO_PASS)}@${MONGO_CLUSTER}/${MONGO_DB}?retryWrites=true&w=majority`;

// Connect to MongoDB Atlas
mongoose
  .connect(MONGO_URI, { autoIndex: true })
  .then(() => console.log('✅ MongoDB connected'))
  .catch(err => console.error('❌ MongoDB error:', err.message));

// Driver schema
const DriverSchema = new mongoose.Schema(
  {
    firstName: { type: String, index: true },
    lastName: String,
    address: String,
    mobile: { type: String, index: true, unique: true, sparse: true },
    truckId: String,
    email: { type: String, index: true, sparse: true },
    photo: Buffer, // stored selfie
  },
  { timestamps: true }
);

const Driver = mongoose.model('Driver', DriverSchema);

const app = express();

// Multer in-memory storage
const upload = multer({
  storage: multer.memoryStorage(),
  limits: { fileSize: 5 * 1024 * 1024 }, // 5MB
});

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Root and health-check
app.get('/', (req, res) => res.send('FleetHaul backend running'));
app.get('/api/ping', (req, res) => res.json({ status: 'ok', message: 'pong' }));

// ----------------------
// Register selfie
// ----------------------
app.post('/api/registerSelfie', upload.single('selfie'), async (req, res) => {
  try {
    const { driverName, mobile, email } = req.body;
    if (!req.file?.buffer) {
      return res.status(400).json({ status: 'error', message: 'No selfie uploaded' });
    }

    let driver =
      (mobile && (await Driver.findOne({ mobile }))) ||
      (email && (await Driver.findOne({ email }))) ||
      (driverName && (await Driver.findOne({ firstName: driverName })));

    if (!driver) {
      driver = new Driver({
        firstName: driverName || 'Unknown',
        mobile,
        email,
        photo: req.file.buffer,
      });
    } else {
      driver.photo = req.file.buffer;
    }

    await driver.save();
    res.json({ status: 'ok', id: driver._id.toString(), message: 'Selfie stored' });
  } catch (err) {
    console.error('RegisterSelfie error:', err);
    res.status(500).json({ status: 'error', message: 'Failed to store image' });
  }
});

// ----------------------
// Verify selfie
// ----------------------
app.post('/api/verifySelfie', upload.single('selfie'), async (req, res) => {
  try {
    const { driverName, mobile, email } = req.body;
    const freshPhoto = req.file?.buffer;

    if (!freshPhoto) {
      return res.status(400).json({ status: 'error', message: 'No selfie uploaded' });
    }

    const driver =
      (mobile && (await Driver.findOne({ mobile }))) ||
      (email && (await Driver.findOne({ email }))) ||
      (driverName && (await Driver.findOne({ firstName: driverName })));

    if (!driver || !driver.photo) {
      return res.status(404).json({ verified: false, message: 'No stored selfie found' });
    }

    const toVec = async (buf) => {
      const img = await sharp(buf).resize(64, 64).grayscale().raw().toBuffer();
      return img;
    };

    const [a, b] = await Promise.all([toVec(driver.photo), toVec(freshPhoto)]);
    let mse = 0;
    for (let i = 0; i < a.length; i++) {
      const d = a[i] - b[i];
      mse += d * d;
    }
    mse /= a.length;

    const THRESHOLD = 2000;
    const verified = mse < THRESHOLD;
    const confidence = Math.max(0, Math.min(1, (THRESHOLD - mse) / THRESHOLD));

    res.json({ verified, confidence, mse });
  } catch (err) {
    console.error('Verify error:', err);
    res.status(500).json({ status: 'error', message: 'Verification failed' });
  }
});

// ----------------------
// Signup
// ----------------------
app.post('/api/signup', upload.single('photo'), async (req, res) => {
  try {
    const driver = new Driver({
      firstName: req.body.firstName,
      lastName: req.body.lastName,
      address: req.body.address,
      mobile: req.body.mobile,
      truckId: req.body.truckId,
      email: req.body.email,
      photo: req.file ? req.file.buffer : undefined,
    });
    await driver.save();
    res.json({ status: 'ok', id: driver._id.toString() });
  } catch (err) {
    console.error('Signup error:', err);
    res.status(500).json({ status: 'error', message: 'Signup failed' });
  }
});

// ----------------------
// Login lookup endpoint
// ----------------------
app.get('/api/driver', async (req, res) => {
  try {
    const { firstName, lastName, mobile } = req.query;
    if (!firstName || !lastName || !mobile) {
      return res.status(400).json({ status: 'error', message: 'Missing parameters' });
    }

    const driver = await Driver.findOne({ firstName, lastName, mobile });
    if (!driver) {
      return res.status(404).json({ status: 'error', message: 'Driver not found' });
    }

    res.json({ status: 'ok', driver });
  } catch (err) {
    console.error('Driver lookup error:', err);
    res.status(500).json({ status: 'error', message: 'Server error' });
  }
});

// ----------------------
// HTTP + WebSocket server
// ----------------------
const server = http.createServer(app);
const wss = new WebSocket.Server({ server });

wss.on('connection', ws => {
  console.log('WebSocket client connected');

  ws.on('message', async raw => {
    let data;
    try {
      data = JSON.parse(raw);
    } catch {
      return;
    }

    if (data.type === 'getDriverByMobile') {
      try {
        const driver = await Driver.findOne({ mobile: data.mobile });
        ws.send(JSON.stringify({ status: 'ok', driver }));
      } catch (err) {
        ws.send(JSON.stringify({ status: 'error', message: err.message }));
      }
    }
  });

  ws.on('error', err => {
    console.error('WebSocket error:', err.message);
  });
});

server.listen(PORT, () => {
  console.log(`🚀 Server running at http://0.0.0.0:${PORT}`);
});
