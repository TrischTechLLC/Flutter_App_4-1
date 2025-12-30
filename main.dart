// lib/main.dart
// FleetHaul — multilingual, first-time signup + OTP, returning login without OTP,
// enhanced Emergency Alerts with localized options, camera, voice notes, and animated FABs.

import 'dart:math' as math;
import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Localization
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:owner_app/l10n/app_localizations.dart';

// Camera & voice
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FleetHaulApp());
}

// -------------------------------
// Root app
// -------------------------------
class FleetHaulApp extends StatefulWidget {
  const FleetHaulApp({super.key});

  @override
  State<FleetHaulApp> createState() => _FleetHaulAppState();
}

class _FleetHaulAppState extends State<FleetHaulApp> {
  Locale selectedLocale = const Locale('en');

  void _setLanguage(String code) {
    setState(() {
      selectedLocale = Locale(code);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FleetHaul',
      locale: selectedLocale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
        Locale('fr'),
        Locale('de'),
        Locale('it'),
        Locale('pt'),
        Locale('ru'),
        Locale('hi'),
        Locale('bn'),
        Locale('te'),
        Locale('mr'),
        Locale('ta'),
        Locale('ur'),
        Locale('gu'),
        Locale('kn'),
        Locale('ml'),
        Locale('id'),
      ],
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFF1A3A52),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xFF2D5F7E),
          contentTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      home: IntroductionPage(
        selectedLocale: selectedLocale,
        onLanguageChanged: _setLanguage,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LanguageList {
  static final List<Map<String, String>> languages = [
    {'code': 'en', 'name': 'English', 'flag': '🇬🇧'},
    {'code': 'es', 'name': 'Español', 'flag': '🇪🇸'},
    {'code': 'fr', 'name': 'Français', 'flag': '🇫🇷'},
    {'code': 'de', 'name': 'Deutsch', 'flag': '🇩🇪'},
    {'code': 'it', 'name': 'Italiano', 'flag': '🇮🇹'},
    {'code': 'pt', 'name': 'Português', 'flag': '🇵🇹'},
    {'code': 'ru', 'name': 'Русский', 'flag': '🇷🇺'},
    {'code': 'hi', 'name': 'हिन्दी', 'flag': '🇮🇳'},
    {'code': 'bn', 'name': 'বাংলা', 'flag': '🇧🇩'},
    {'code': 'te', 'name': 'తెలుగు', 'flag': '🇮🇳'},
    {'code': 'mr', 'name': 'मराठी', 'flag': '🇮🇳'},
    {'code': 'ta', 'name': 'தமிழ்', 'flag': '🇮🇳'},
    {'code': 'ur', 'name': 'اردو', 'flag': '🇮🇳'},
    {'code': 'gu', 'name': 'ગુજરાતી', 'flag': '🇮🇳'},
    {'code': 'kn', 'name': 'ಕನ್ನಡ', 'flag': '🇮🇳'},
    {'code': 'ml', 'name': 'മലയാളം', 'flag': '🇮🇳'},
    {'code': 'id', 'name': 'Bahasa Indonesia', 'flag': '🇮🇩'},
  ];
}

// -------------------------------
// Introduction / Landing
// -------------------------------
class IntroductionPage extends StatefulWidget {
  final Locale selectedLocale;
  final Function(String) onLanguageChanged;
  const IntroductionPage({
    super.key,
    required this.selectedLocale,
    required this.onLanguageChanged,
  });

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 1500));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showLanguageMenu(BuildContext context, String currentLanguage) {
    final t = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Color(0xFF1A3A52),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                t.selectLanguage,
                style:
                    const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: LanguageList.languages.length,
                itemBuilder: (context, index) {
                  final lang = LanguageList.languages[index];
                  final isSelected = lang['code'] == widget.selectedLocale.languageCode;
                  return ListTile(
                    leading: Text(lang['flag']!, style: const TextStyle(fontSize: 24)),
                    title: Text(
                      lang['name']!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    trailing: isSelected
                        ? const Icon(Icons.check, color: Color(0xFF4ECDC4))
                        : null,
                    onTap: () {
                      widget.onLanguageChanged(lang['code']!);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter,
            colors: [Color(0xFF1A3A52), Color(0xFF2D5F7E), Color(0xFF1A3A52)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).padding.top + 16,
              right: 16,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white.withOpacity(0.3)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () => _showLanguageMenu(context, widget.selectedLocale.languageCode),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.language, color: Colors.white, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        LanguageList.languages.firstWhere(
                          (l) => l['code'] == widget.selectedLocale.languageCode,
                          orElse: () => {'flag': '🇬🇧'},
                        )['flag']!,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        LanguageList.languages.firstWhere(
                          (l) => l['code'] == widget.selectedLocale.languageCode,
                          orElse: () => {'name': 'English'},
                        )['name']!,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.arrow_drop_down, color: Colors.white, size: 20),
                    ],
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 32 : 64),
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: SlideTransition(
                        position: _slideAnimation,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const _TruckLogo(),
                            SizedBox(height: isSmallScreen ? 40 : 60),
                            Text(
                              t.appTitle,
                              style: TextStyle(
                                fontSize: isSmallScreen ? 36 : 48,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 4,
                              ),
                            ),
                            SizedBox(height: isSmallScreen ? 16 : 24),
                            Text(
                              t.tagline,
                              style: TextStyle(
                                fontSize: isSmallScreen ? 16 : 20,
                                color: Colors.white.withOpacity(0.9),
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: isSmallScreen ? 60 : 80),
                            // Sign up
                            _PrimaryCTA(
                              label: t.driverSignUp,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => const SignUpPage()),
                                );
                              },
                            ),
                            const SizedBox(height: 16),
                            // Login (returning drivers)
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => const LoginPage()),
                                );
                              },
                              child: Text(
                                t.logIn,
                                style: TextStyle(
                                  fontSize: 16, color: Colors.white.withOpacity(0.85),
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              right: 40,
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Icon(Icons.auto_awesome, size: 40, color: Colors.white.withOpacity(0.3)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PrimaryCTA extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _PrimaryCTA({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 56,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFF4ECDC4), Color(0xFF44A08D)]),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4ECDC4).withOpacity(0.5),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(28),
          onTap: onTap,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Logo
class _TruckLogo extends StatelessWidget {
  const _TruckLogo();

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 180, height: 180, child: CustomPaint(painter: _TruckLogoPainter()));
  }
}
class _TruckLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF4ECDC4)
      ..style = PaintingStyle.fill;

    final truckBody = Path()
      ..moveTo(size.width * 0.3, size.height * 0.5)
      ..lineTo(size.width * 0.7, size.height * 0.5)
      ..lineTo(size.width * 0.7, size.height * 0.7)
      ..lineTo(size.width * 0.3, size.height * 0.7)
      ..close();
    canvas.drawPath(truckBody, paint);

    final cabin = Path()
      ..moveTo(size.width * 0.25, size.height * 0.35)
      ..lineTo(size.width * 0.4, size.height * 0.35)
      ..lineTo(size.width * 0.4, size.height * 0.5)
      ..lineTo(size.width * 0.25, size.height * 0.5)
      ..close();
    canvas.drawPath(cabin, paint);

    canvas.drawCircle(Offset(size.width * 0.35, size.height * 0.75), size.width * 0.08, paint);
    canvas.drawCircle(Offset(size.width * 0.65, size.height * 0.75), size.width * 0.08, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ------------------------ DRIVER SIGN-UP PAGE ------------------------
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _addressController = TextEditingController();
  final _mobileController = TextEditingController();
  final _altMobileController = TextEditingController();
  final _truckIdController = TextEditingController();
  final _emailController = TextEditingController();
  bool _isWhatsApp = false;
  bool _uploading = false;

  static const String signupBgAsset = 'assets/signup_bg.jpg';
  static const String licenseSampleAsset = 'assets/license_sample.jpg';

  String get _baseHost {
    if (kIsWeb) return 'http://localhost:8080';
    try {
      if (io.Platform.isAndroid) return 'http://10.0.2.2:8080';
      return 'http://localhost:8080';
    } catch (_) {
      return 'http://localhost:8080';
    }
  }

  bool get _showSummary {
    return _firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _addressController.text.isNotEmpty &&
        _mobileController.text.isNotEmpty &&
        _truckIdController.text.isNotEmpty;
  }

  Future<void> _submit() async {
    final t = AppLocalizations.of(context)!;
    if (!_formKey.currentState!.validate()) return;
    final primaryMobile = _mobileController.text.trim();
    final altMobile = _altMobileController.text.trim();
    final mobileToUse = _isWhatsApp ? primaryMobile : altMobile;
    if (mobileToUse.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(t.provideWhatsappNumber)));
      return;
    }

    final firstName = _firstNameController.text.trim();
    final lastName = _lastNameController.text.trim();
    final address = _addressController.text.trim();
    final truckId = _truckIdController.text.trim();
    final email = _emailController.text.trim();
    final fullName = '$firstName $lastName';

    setState(() => _uploading = true);
    try {
      final uri = Uri.parse('$_baseHost/api/signup');
      final req = http.MultipartRequest('POST', uri)
        ..fields['firstName'] = firstName
        ..fields['lastName'] = lastName
        ..fields['address'] = address
        ..fields['mobile'] = mobileToUse
        ..fields['truckId'] = truckId
        ..fields['email'] = email.isEmpty ? '' : email;

      final resp = await req.send();
      final body = await resp.stream.bytesToString();

      if (resp.statusCode == 200) {
        final signupData = jsonDecode(body);
        if (signupData['status'] == 'ok' && signupData['id'] != null) {
          // Store identifier to allow direct login next time (after OTP success).
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => OtpVerificationPage(
                driverId: signupData['id'].toString(),
                driverName: fullName,
                mobile: mobileToUse,
              ),
            ),
          );
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(t.signupFailedTryAgain)));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${t.signupServerError} ${resp.statusCode}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${t.signupError} $e')));
    } finally {
      if (mounted) setState(() => _uploading = false);
    }
  }

  Widget _buildField(
    TextEditingController controller,
    String label, {
    TextInputType keyboardType = TextInputType.text,
    bool required = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(color: Colors.white),
        validator: required
            ? (v) => (v == null || v.trim().isEmpty) ? '$label is required' : null
            : null,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white70),
          filled: true,
          fillColor: Colors.black.withOpacity(0.35),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white24),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF4ECDC4)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.driverSignUp), backgroundColor: const Color(0xFF1A3A52)),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(signupBgAsset), fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 540),
              child: Card(
                color: Colors.black.withOpacity(0.48),
                surfaceTintColor: Colors.transparent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    onChanged: () => setState(() {}),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          const Icon(Icons.wifi, color: Color(0xFF4ECDC4), size: 18),
                          const SizedBox(width: 6),
                          Text(
                            t.serverConnected,
                            style: const TextStyle(color: Color(0xFF4ECDC4), fontSize: 12),
                          ),
                        ]),
                        const SizedBox(height: 12),
                        _buildField(_firstNameController, t.firstName, required: true),
                        _buildField(_lastNameController, t.lastName, required: true),
                        _buildField(_addressController, t.address, required: true),
                        _buildField(
                          _mobileController,
                          t.mobilePrimary,
                          keyboardType: TextInputType.phone,
                          required: true,
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            Checkbox(
                              value: _isWhatsApp,
                              onChanged: (val) => setState(() => _isWhatsApp = val ?? false),
                              activeColor: const Color(0xFF4ECDC4),
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                t.numberLinkedToWhatsapp,
                                style: const TextStyle(color: Colors.white70),
                              ),
                            ),
                          ],
                        ),
                        if (!_isWhatsApp)
                          _buildField(
                            _altMobileController,
                            t.altWhatsappNumber,
                            keyboardType: TextInputType.phone,
                            required: true,
                          ),
                        _buildField(_truckIdController, t.truckId, required: true),
                        _buildField(
                          _emailController,
                          t.emailOptional,
                          keyboardType: TextInputType.emailAddress,
                          required: false,
                        ),
                        const SizedBox(height: 14),
                        AnimatedOpacity(
                          opacity: _showSummary ? 1 : 0.45,
                          duration: const Duration(milliseconds: 250),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: Colors.white24),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  t.driverSummary,
                                  style: const TextStyle(
                                      color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        licenseSampleAsset,
                                        width: 140,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: DefaultTextStyle(
                                        style: const TextStyle(color: Colors.white70, fontSize: 12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                '${t.nameLabel}: ${_firstNameController.text} ${_lastNameController.text}'),
                                            Text('${t.truckIdLabel}: ${_truckIdController.text}'),
                                            Text(
                                                '${t.mobileLabel}: ${_isWhatsApp ? _mobileController.text : _altMobileController.text}'),
                                            Text('${t.addressLabel}: ${_addressController.text}'),
                                            const SizedBox(height: 6),
                                            Text(
                                              t.licenseOnFileSample,
                                              style: const TextStyle(color: Color(0xFF4ECDC4)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: _uploading ? null : _submit,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4ECDC4),
                              foregroundColor: Colors.black,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            child: _uploading
                                ? const SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: CircularProgressIndicator(
                                        strokeWidth: 2, color: Colors.black),
                                  )
                                : Text(t.driverSignUp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ------------------------ LOGIN PAGE (Returning drivers skip OTP) ------------------------
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _mobileController = TextEditingController();
  bool _loading = false;

  String get _baseHost {
    if (kIsWeb) return 'http://localhost:8080';
    try {
      if (io.Platform.isAndroid) return 'http://10.0.2.2:8080';
      return 'http://localhost:8080';
    } catch (_) {
      return 'http://localhost:8080';
    }
  }

  Future<void> _login() async {
    final t = AppLocalizations.of(context)!;
    final firstName = _firstNameController.text.trim();
    final lastName = _lastNameController.text.trim();
    final mobile = _mobileController.text.trim();

    if (firstName.isEmpty || lastName.isEmpty || mobile.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.enterMobile)),
      );
      return;
    }

    setState(() => _loading = true);
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedMobile = prefs.getString('auth_mobile');
      final savedFirstName = prefs.getString('driver_firstName');
      final savedLastName = prefs.getString('driver_lastName');

      // If already stored locally, skip OTP
      if (savedMobile == mobile &&
          savedFirstName == firstName &&
          savedLastName == lastName) {
        final driverName = "$savedFirstName $savedLastName";
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => EmergencyAlertsPage(
              driverName: driverName,
              driverInfo: {
                'mobile': mobile,
                'firstName': savedFirstName,
                'lastName': savedLastName,
              },
            ),
          ),
        );
        return;
      }

      // Otherwise check backend
      final resp = await http.get(Uri.parse(
          '$_baseHost/api/driver?firstName=$firstName&lastName=$lastName&mobile=$mobile'));
      if (resp.statusCode == 200) {
        final data = jsonDecode(resp.body);
        final driver = data['driver'];
        if (driver != null) {
          await prefs.setString('auth_mobile', mobile);
          await prefs.setString('driver_firstName', driver['firstName'] ?? '');
          await prefs.setString('driver_lastName', driver['lastName'] ?? '');
          final driverName =
              "${driver['firstName'] ?? ''} ${driver['lastName'] ?? ''}";
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => EmergencyAlertsPage(
                driverName: driverName,
                driverInfo: driver,
              ),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(t.noAccountFoundPleaseSignUp)),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(t.loginServerError)),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${t.loginError} $e')),
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  static const String loginBgAsset = 'assets/signup_bg.jpg';

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.logIn), backgroundColor: const Color(0xFF1A3A52)),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(loginBgAsset), fit: BoxFit.cover),
        ),
        child: Center(
          child: Card(
            color: Colors.black.withOpacity(0.5),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 12,
            child: SizedBox(
              width: 360,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.person_pin, size: 48, color: Color(0xFF4ECDC4)),
                  const SizedBox(height: 12),
                  Text(
                    t.returningDriverLogin,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _firstNameController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: t.firstName,
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.35),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _lastNameController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: t.lastName,
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.35),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _mobileController,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: t.mobilePrimary,
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.35),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: _loading ? null : _login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4ECDC4),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: _loading
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                            )
                          : Text(t.logIn),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ------------------------ OTP PAGE (after first-time signup) ------------------------
class OtpVerificationPage extends StatefulWidget {
  final String driverId;
  final String driverName;
  final String mobile;
  const OtpVerificationPage({
    super.key,
    required this.driverId,
    required this.driverName,
    required this.mobile,
  });

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final List<TextEditingController> _otpControllers =
      List.generate(6, (_) => TextEditingController());
  final _formKey = GlobalKey<FormState>();
  static const String _testOtp = '345621'; // demo OTP

  static const String otpBgAsset = 'assets/otp_bg.jpg';

  @override
  void dispose() {
    for (final c in _otpControllers) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _verifyOtp() async {
    final t = AppLocalizations.of(context)!;
    final enteredOtp = _otpControllers.map((c) => c.text.trim()).join();
    if (enteredOtp != _testOtp) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(t.invalidOtpTryAgain)));
      return;
    }
    // Persist mobile + name to allow direct login next time
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_mobile', widget.mobile);
    await prefs.setString('driver_name', widget.driverName);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => EmergencyAlertsPage(
          driverName: widget.driverName,
          driverInfo: {'mobile': widget.mobile, 'id': widget.driverId},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(otpBgAsset), fit: BoxFit.cover),
        ),
        child: Center(
          child: Card(
            color: Colors.black.withOpacity(0.55),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 12,
            child: SizedBox(
              width: 380,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    const Icon(Icons.verified_user, size: 48, color: Color(0xFF4ECDC4)),
                    const SizedBox(height: 12),
                    Text(
                      t.otpAuthentication,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      t.enterOtpSentTo(widget.mobile),
                      style: const TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(6, (i) {
                        return SizedBox(
                          width: 42,
                          child: TextField(
                            controller: _otpControllers[i],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            style: const TextStyle(color: Colors.white, fontSize: 20),
                            decoration: InputDecoration(
                              counterText: '',
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(color: Colors.white24),
                              ),
                            ),
                            onChanged: (v) {
                              if (v.isNotEmpty && i < 5) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4ECDC4),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: _verifyOtp,
                        child: Text(t.verifyOtp),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// -------------------------------
// Emergency Alerts Page (enhanced)
// -------------------------------
class EmergencyAlertsPage extends StatefulWidget {
  final String driverName;
  final Map<String, dynamic>? driverInfo;
  const EmergencyAlertsPage({
    super.key,
    required this.driverName,
    this.driverInfo,
  });

  @override
  State<EmergencyAlertsPage> createState() => _EmergencyAlertsPageState();
}

class _EmergencyAlertsPageState extends State<EmergencyAlertsPage>
    with SingleTickerProviderStateMixin {
  final ImagePicker _picker = ImagePicker();
  XFile? _goodsPhoto;
  bool _recording = false;
  String? _audioPath;
  String _selectedEmergency = 'petrolFill';
  late AnimationController _fabController;
  late Animation<double> _fabScale;

  static const String emergencyBgAsset = 'assets/emergency_bg.jpg';

  String get _baseHost {
    if (kIsWeb) return 'http://localhost:8080';
    try {
      if (io.Platform.isAndroid) return 'http://10.0.2.2:8080';
      return 'http://localhost:8080';
    } catch (_) {
      return 'http://localhost:8080';
    }
  }

  @override
  void initState() {
    super.initState();
    _fabController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 600))
          ..repeat(reverse: true);
    _fabScale = Tween<double>(begin: 1.0, end: 1.06)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(_fabController);
  }

  @override
  void dispose() {
    _fabController.dispose();
    super.dispose();
  }

  List<Map<String, String>> _localizedEmergencyOptions(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return [
      {'key': 'petrolFill', 'label': t.emergencyPetrolFill},
      {'key': 'trafficAhead', 'label': t.emergencyTrafficAhead},
      {'key': 'machineRepair', 'label': t.emergencyMachineRepair},
      {'key': 'climaticConditions', 'label': t.emergencyClimaticConditions},
      {'key': 'other', 'label': t.emergencyOther},
    ];
  }

  Future<void> _captureGoodsPhoto() async {
    await Permission.camera.request();
    final img = await _picker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
      imageQuality: 85,
    );
    if (img != null) {
      setState(() {
        _goodsPhoto = img;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.goodsPhotoCaptured)),
      );
    }
  }

  Future<void> _toggleVoiceRecording() async {
    await Permission.microphone.request();
    setState(() {
      _recording = !_recording;
    });
    if (!_recording) {
      if (kIsWeb) {
        _audioPath = 'web_temp/emergency_note.aac';
      } else {
        final dir = await getTemporaryDirectory();
        _audioPath = '${dir.path}/emergency_note.aac';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.voiceNoteSaved)),
      );
    }
  }

  Future<void> _sendEmergencyAlert() async {
    final t = AppLocalizations.of(context)!;
    try {
      final body = {
        'type': _selectedEmergency,
        'driverName': widget.driverName,
        'mobile': widget.driverInfo?['mobile']?.toString() ?? '',
        'email': widget.driverInfo?['email']?.toString() ?? '',
        'truckId': widget.driverInfo?['truckId']?.toString() ?? '',
        'timestamp': DateTime.now().toIso8601String(),
      };
      final resp = await http.post(
        Uri.parse('$_baseHost/api/emergencyAlert'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      if (resp.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(t.emergencyAlertSent)),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${t.emergencyAlertFailed} ${resp.statusCode}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${t.emergencyAlertError} $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final options = _localizedEmergencyOptions(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.emergencyAlertsTitle),
        backgroundColor: const Color(0xFF1A3A52),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              emergencyBgAsset,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.35),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(24),
            child: ListView(
              children: [
                Text(
                  t.helloDriver(widget.driverName),
                  style: const TextStyle(
                      fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                if (widget.driverInfo != null) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDriverInfoRow(t.mobileLabel,
                            widget.driverInfo!['mobile']?.toString() ?? 'N/A'),
                        if (widget.driverInfo!['email'] != null)
                          _buildDriverInfoRow(t.emailLabel, widget.driverInfo!['email']),
                        if (widget.driverInfo!['truckId'] != null)
                          _buildDriverInfoRow(t.truckIdLabel, widget.driverInfo!['truckId']),
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                Card(
                  color: Colors.black.withOpacity(0.45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          t.quickActions,
                          style: const TextStyle(
                              color: Color(0xFF4ECDC4),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                initialValue: _selectedEmergency,
                                dropdownColor: const Color(0xFF1A3A52),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.black.withOpacity(0.3),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                items: options.map((e) {
                                  return DropdownMenuItem<String>(
                                    value: e['key'],
                                    child: Text(
                                      e['label']!,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (v) => setState(() {
                                  _selectedEmergency = v ?? 'petrolFill';
                                }),
                              ),
                            ),
                            const SizedBox(width: 12),
                            ElevatedButton.icon(
                              onPressed: _sendEmergencyAlert,
                              icon: const Icon(Icons.warning_amber_rounded),
                              label: Text(t.sendAlert),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                foregroundColor: Colors.white,
                                minimumSize: const Size(160, 48),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        // Photo preview
                        if (_goodsPhoto != null) ...[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: kIsWeb
                                ? Image.network(
                                    _goodsPhoto!.path,
                                    height: 160,
                                    fit: BoxFit.cover,
                                  )
                                : Image.file(
                                    io.File(_goodsPhoto!.path),
                                    height: 160,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Animated FAB dock with labels
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: ScaleTransition(
              scale: _fabScale,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _ActionButton(
                      icon: Icons.camera_alt,
                      label: t.captureGoodsPhoto,
                      color: const Color(0xFF4ECDC4),
                      onPressed: _captureGoodsPhoto,
                    ),
                    _ActionButton(
                      icon: _recording ? Icons.stop_circle : Icons.keyboard_voice,
                      label: _recording ? t.stopVoiceNote : t.recordVoiceNote,
                      color: Colors.tealAccent,
                      onPressed: _toggleVoiceRecording,
                    ),
                    _ActionButton(
                      icon: Icons.warning_amber_rounded,
                      label: t.sendAlert,
                      color: Colors.redAccent,
                      onPressed: _sendEmergencyAlert,
                    ),
                    _ActionButton(
                      icon: Icons.feedback,
                      label: t.submitFeedback,
                      color: Colors.amberAccent,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(t.feedbackSubmitted)),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDriverInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.white70, fontSize: 13)),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onPressed;
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          heroTag: label,
          onPressed: onPressed,
          backgroundColor: color,
          foregroundColor: Colors.black,
          elevation: 6,
          child: Icon(icon),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
