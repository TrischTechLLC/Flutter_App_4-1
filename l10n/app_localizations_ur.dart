// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“ہوشیار ڈرائیو کریں۔ محفوظ ڈرائیو کریں۔”';

  @override
  String get selectLanguage => 'زبان منتخب کریں';

  @override
  String get driverSignUp => 'ڈرائیور سائن اپ';

  @override
  String get logIn => 'لاگ ان';

  @override
  String get loginComingSoon => 'لاگ ان فیچر جلد آ رہا ہے';

  @override
  String get serverConnected => 'سرور منسلک';

  @override
  String get serverOffline => 'سرور آف لائن';

  @override
  String get firstName => 'پہلا نام';

  @override
  String get lastName => 'آخری نام';

  @override
  String get address => 'پتہ';

  @override
  String get mobilePrimary => 'موبائل نمبر (پرائمری)';

  @override
  String get numberLinkedToWhatsapp => 'یہ نمبر WhatsApp سے منسلک ہے';

  @override
  String get altWhatsappNumber => 'متبادل WhatsApp موبائل نمبر';

  @override
  String get truckId => 'ٹرک ID';

  @override
  String get emailOptional => 'ای میل (اختیاری)';

  @override
  String get driverSummary => 'ڈرائیور کا خلاصہ';

  @override
  String get nameLabel => 'نام';

  @override
  String get truckIdLabel => 'ٹرک ID';

  @override
  String get mobileLabel => 'موبائل';

  @override
  String get addressLabel => 'پتہ';

  @override
  String get licenseOnFileSample => 'فائل پر لائسنس (نمونہ)';

  @override
  String get provideWhatsappNumber =>
      'براہ مہربانی WhatsApp سے منسلک موبائل نمبر فراہم کریں۔';

  @override
  String get signupFailedTryAgain =>
      'سائن اپ ناکام۔ براہ مہربانی دوبارہ کوشش کریں۔';

  @override
  String get signupServerError => 'سائن اپ سرور ایرر:';

  @override
  String get signupError => 'سائن اپ ایرر:';

  @override
  String get otpAuthentication => 'OTP توثیق';

  @override
  String enterOtpSentTo(String mobile) {
    return '$mobile پر بھیجا گیا OTP درج کریں';
  }

  @override
  String get verifyOtp => 'OTP کی توثیق کریں';

  @override
  String get invalidOtpTryAgain => 'غلط OTP۔ براہ مہربانی دوبارہ کوشش کریں۔';

  @override
  String get faceIdAuthenticationTitle => 'Face ID توثیق';

  @override
  String get authenticateToContinue => 'جاری رکھنے کے لیے توثیق کریں';

  @override
  String get deviceBiometricsVerified => 'ڈیوائس بائیو میٹرکس توثیق شدہ';

  @override
  String get biometricsFailedOrCanceled => 'بائیو میٹرکس ناکام یا منسوخ';

  @override
  String get biometricsError => 'بائیو میٹرکس ایرر:';

  @override
  String get useDeviceFaceId => 'ڈیوائس Face ID استعمال کریں';

  @override
  String get useBiometricForSecurity =>
      'سیکیورٹی کے لیے بائیو میٹرک توثیق استعمال کریں';

  @override
  String get welcome => 'خوش آمدید';

  @override
  String get emergencyAlerts => 'ایمرجنسی الرٹس';

  @override
  String helloVerified(String name) {
    return 'ہیلو $name، آپ توثیق شدہ ہیں!';
  }

  @override
  String get quickActions => 'فوری اقدامات';

  @override
  String get sendEmergencyAlert => 'ایمرجنسی الرٹ بھیجیں';

  @override
  String get emergencyAlertSent => 'ایمرجنسی الرٹ بھیج دی گئی';

  @override
  String get captureGoodsPhoto => 'سامان کی تصویر لیں (دھوکہ دہی کا پتہ لگانا)';

  @override
  String get openGoodsCapture => 'سامان کیپچر کھولیں';

  @override
  String get submitFeedback => 'فیڈ بیک جمع کروائیں';

  @override
  String get feedbackSubmitted => 'فیڈ بیک جمع کر دی گئی';

  @override
  String get enterMobile => 'براہ مہربانی اپنا موبائل نمبر درج کریں';

  @override
  String get driver => 'ڈرائیور';

  @override
  String get noAccountFoundPleaseSignUp =>
      'کوئی اکاؤنٹ نہیں ملا۔ براہ مہربانی پہلے سائن اپ کریں۔';

  @override
  String get loginServerError => 'سرور کی خرابی کی وجہ سے لاگ ان ناکام';

  @override
  String get loginError => 'لاگ ان خرابی';

  @override
  String get returningDriverLogin => 'واپس آنے والے ڈرائیور کا لاگ ان';

  @override
  String get emergencyPetrolFill => 'پیٹرول بھرنا';

  @override
  String get emergencyTrafficAhead => 'آگے ٹریفک';

  @override
  String get emergencyMachineRepair => 'مشین کی مرمت';

  @override
  String get emergencyClimaticConditions => 'موسمی حالات';

  @override
  String get emergencyOther => 'دیگر ایمرجنسی';

  @override
  String get goodsPhotoCaptured => 'سامان کی تصویر لی گئی';

  @override
  String get voiceNoteSaved => 'وائس نوٹ محفوظ ہو گئی';

  @override
  String get emergencyAlertFailed => 'ایمرجنسی الرٹ ناکام';

  @override
  String get emergencyAlertError => 'ایمرجنسی الرٹ خرابی';

  @override
  String get emergencyAlertsTitle => 'ایمرجنسی الرٹس';

  @override
  String helloDriver(Object driverName) {
    return 'ہیلو $driverName، خوش آمدید!';
  }

  @override
  String get emailLabel => 'ای میل';

  @override
  String get sendAlert => 'الرٹ بھیجیں';

  @override
  String get stopVoiceNote => 'وائس نوٹ روکیں';

  @override
  String get recordVoiceNote => 'وائس نوٹ ریکارڈ کریں';
}
