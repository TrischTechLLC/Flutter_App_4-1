// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“Berkendara Cerdas. Berkendara Aman.”';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get driverSignUp => 'Daftar Pengemudi';

  @override
  String get logIn => 'Masuk';

  @override
  String get loginComingSoon => 'Fitur Masuk segera hadir';

  @override
  String get serverConnected => 'Server terhubung';

  @override
  String get serverOffline => 'Server offline';

  @override
  String get firstName => 'Nama depan';

  @override
  String get lastName => 'Nama belakang';

  @override
  String get address => 'Alamat';

  @override
  String get mobilePrimary => 'Nomor ponsel (utama)';

  @override
  String get numberLinkedToWhatsapp => 'Nomor ini terkait dengan WhatsApp';

  @override
  String get altWhatsappNumber => 'Nomor WhatsApp alternatif';

  @override
  String get truckId => 'ID Truk';

  @override
  String get emailOptional => 'Email (opsional)';

  @override
  String get driverSummary => 'Ringkasan Pengemudi';

  @override
  String get nameLabel => 'Nama';

  @override
  String get truckIdLabel => 'ID Truk';

  @override
  String get mobileLabel => 'Ponsel';

  @override
  String get addressLabel => 'Alamat';

  @override
  String get licenseOnFileSample => 'Lisensi tersimpan (contoh)';

  @override
  String get provideWhatsappNumber =>
      'Harap berikan nomor ponsel yang terkait dengan WhatsApp.';

  @override
  String get signupFailedTryAgain => 'Pendaftaran gagal. Silakan coba lagi.';

  @override
  String get signupServerError => 'Error server pendaftaran:';

  @override
  String get signupError => 'Error pendaftaran:';

  @override
  String get otpAuthentication => 'Autentikasi OTP';

  @override
  String enterOtpSentTo(String mobile) {
    return 'Masukkan OTP yang dikirim ke $mobile';
  }

  @override
  String get verifyOtp => 'Verifikasi OTP';

  @override
  String get invalidOtpTryAgain => 'OTP tidak valid. Silakan coba lagi.';

  @override
  String get faceIdAuthenticationTitle => 'Autentikasi Face ID';

  @override
  String get authenticateToContinue => 'Autentikasi untuk melanjutkan';

  @override
  String get deviceBiometricsVerified => 'Biometrik perangkat terverifikasi';

  @override
  String get biometricsFailedOrCanceled => 'Biometrik gagal atau dibatalkan';

  @override
  String get biometricsError => 'Error biometrik:';

  @override
  String get useDeviceFaceId => 'Gunakan Face ID perangkat';

  @override
  String get useBiometricForSecurity =>
      'Gunakan autentikasi biometrik untuk keamanan';

  @override
  String get welcome => 'Selamat Datang';

  @override
  String get emergencyAlerts => 'Peringatan Darurat';

  @override
  String helloVerified(String name) {
    return 'Halo $name, Anda telah terverifikasi!';
  }

  @override
  String get quickActions => 'Aksi Cepat';

  @override
  String get sendEmergencyAlert => 'Kirim Peringatan Darurat';

  @override
  String get emergencyAlertSent => 'Peringatan darurat terkirim';

  @override
  String get captureGoodsPhoto => 'Ambil Foto Barang (Deteksi Penipuan)';

  @override
  String get openGoodsCapture => 'Buka pengambilan barang';

  @override
  String get submitFeedback => 'Kirim Umpan Balik';

  @override
  String get feedbackSubmitted => 'Umpan balik terkirim';

  @override
  String get enterMobile => 'Masukkan nomor ponsel Anda';

  @override
  String get driver => 'Pengemudi';

  @override
  String get noAccountFoundPleaseSignUp =>
      'Tidak ditemukan akun. Silakan daftar terlebih dahulu.';

  @override
  String get loginServerError => 'Login gagal karena kesalahan server';

  @override
  String get loginError => 'Kesalahan login';

  @override
  String get returningDriverLogin => 'Login pengemudi yang kembali';

  @override
  String get emergencyPetrolFill => 'Isi bensin';

  @override
  String get emergencyTrafficAhead => 'Kemacetan di depan';

  @override
  String get emergencyMachineRepair => 'Perbaikan mesin';

  @override
  String get emergencyClimaticConditions => 'Kondisi iklim';

  @override
  String get emergencyOther => 'Darurat lainnya';

  @override
  String get goodsPhotoCaptured => 'Foto barang tertangkap';

  @override
  String get voiceNoteSaved => 'Catatan suara disimpan';

  @override
  String get emergencyAlertFailed => 'Peringatan darurat gagal';

  @override
  String get emergencyAlertError => 'Kesalahan peringatan darurat';

  @override
  String get emergencyAlertsTitle => 'Peringatan Darurat';

  @override
  String helloDriver(Object driverName) {
    return 'Halo $driverName, selamat datang!';
  }

  @override
  String get emailLabel => 'Email';

  @override
  String get sendAlert => 'Kirim Peringatan';

  @override
  String get stopVoiceNote => 'Hentikan catatan suara';

  @override
  String get recordVoiceNote => 'Rekam catatan suara';
}
