// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline =>
      '“புத்திசாலித்தனமாக ஓட்டுங்கள். பாதுகாப்பாக ஓட்டுங்கள்.”';

  @override
  String get selectLanguage => 'மொழி தேர்வு செய்யவும்';

  @override
  String get driverSignUp => 'டிரைவர் பதிவு';

  @override
  String get logIn => 'உள்நுழை';

  @override
  String get loginComingSoon => 'உள்நுழைவு விரைவில் வருகிறது';

  @override
  String get serverConnected => 'சர்வர் இணைக்கப்பட்டது';

  @override
  String get serverOffline => 'சர்வர் ஆஃப்லைன்';

  @override
  String get firstName => 'முதல் பெயர்';

  @override
  String get lastName => 'கடைசி பெயர்';

  @override
  String get address => 'முகவரி';

  @override
  String get mobilePrimary => 'மொபைல் எண் (முதன்மை)';

  @override
  String get numberLinkedToWhatsapp =>
      'இந்த எண் WhatsApp உடன் இணைக்கப்பட்டுள்ளது';

  @override
  String get altWhatsappNumber => 'மாற்று WhatsApp மொபைல் எண்';

  @override
  String get truckId => 'டிரக் ID';

  @override
  String get emailOptional => 'மின்னஞ்சல் (விருப்பத்தேர்வு)';

  @override
  String get driverSummary => 'டிரைவர் சுருக்கம்';

  @override
  String get nameLabel => 'பெயர்';

  @override
  String get truckIdLabel => 'டிரக் ID';

  @override
  String get mobileLabel => 'மொபைல்';

  @override
  String get addressLabel => 'முகவரி';

  @override
  String get licenseOnFileSample => 'கோப்பில் உள்ள உரிமம் (மாதிரி)';

  @override
  String get provideWhatsappNumber =>
      'WhatsApp உடன் இணைக்கப்பட்ட மொபைல் எண்ணை வழங்கவும்.';

  @override
  String get signupFailedTryAgain => 'பதிவு தோல்வி. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get signupServerError => 'பதிவு சர்வர் பிழை:';

  @override
  String get signupError => 'பதிவு பிழை:';

  @override
  String get otpAuthentication => 'OTP அங்கீகாரம்';

  @override
  String enterOtpSentTo(String mobile) {
    return '$mobile க்கு அனுப்பப்பட்ட OTP ஐ உள்ளிடவும்';
  }

  @override
  String get verifyOtp => 'OTP ஐ சரிபார்க்கவும்';

  @override
  String get invalidOtpTryAgain => 'தவறான OTP. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get faceIdAuthenticationTitle => 'Face ID அங்கீகாரம்';

  @override
  String get authenticateToContinue => 'தொடர அங்கீகரிக்கவும்';

  @override
  String get deviceBiometricsVerified =>
      'சாதன பயோமெட்ரிக்ஸ் சரிபார்க்கப்பட்டது';

  @override
  String get biometricsFailedOrCanceled => 'பயோமெட்ரிக்ஸ் தோல்வி அல்லது ரத்து';

  @override
  String get biometricsError => 'பயோமெட்ரிக்ஸ் பிழை:';

  @override
  String get useDeviceFaceId => 'சாதன Face ID ஐ பயன்படுத்தவும்';

  @override
  String get useBiometricForSecurity =>
      'பாதுகாப்பிற்கு பயோமெட்ரிக் அங்கீகாரத்தை பயன்படுத்தவும்';

  @override
  String get welcome => 'வரவேற்கிறோம்';

  @override
  String get emergencyAlerts => 'அவசர எச்சரிக்கைகள்';

  @override
  String helloVerified(String name) {
    return 'வணக்கம் $name, நீங்கள் சரிபார்க்கப்பட்டுள்ளீர்கள்!';
  }

  @override
  String get quickActions => 'விரைவு செயல்கள்';

  @override
  String get sendEmergencyAlert => 'அவசர எச்சரிக்கை அனுப்பு';

  @override
  String get emergencyAlertSent => 'அவசர எச்சரிக்கை அனுப்பப்பட்டது';

  @override
  String get captureGoodsPhoto => 'பொருள் புகைப்படம் எடு (மோசடி கண்டறிதல்)';

  @override
  String get openGoodsCapture => 'பொருள் பிடிப்பை திறக்கவும்';

  @override
  String get submitFeedback => 'கருத்தை சமர்ப்பிக்கவும்';

  @override
  String get feedbackSubmitted => 'கருத்து சமர்ப்பிக்கப்பட்டது';

  @override
  String get enterMobile => 'தயவுசெய்து உங்கள் மொபைல் எண்ணை உள்ளிடவும்';

  @override
  String get driver => 'ஓட்டுநர்';

  @override
  String get noAccountFoundPleaseSignUp =>
      'கணக்கு எதுவும் கிடைக்கவில்லை. முதலில் பதிவு செய்யவும்.';

  @override
  String get loginServerError => 'சர்வர் பிழை காரணமாக உள்நுழைவு தோல்வி';

  @override
  String get loginError => 'உள்நுழைவு பிழை';

  @override
  String get returningDriverLogin => 'திரும்பும் ஓட்டுநர் உள்நுழைவு';

  @override
  String get emergencyPetrolFill => 'பெட்ரோல் நிரப்புதல்';

  @override
  String get emergencyTrafficAhead => 'முன்னால் போக்குவரத்து நெரிசல்';

  @override
  String get emergencyMachineRepair => 'இயந்திர பழுது';

  @override
  String get emergencyClimaticConditions => 'காலநிலை நிலைமைகள்';

  @override
  String get emergencyOther => 'பிற அவசரநிலை';

  @override
  String get goodsPhotoCaptured => 'பொருள் புகைப்படம் எடுக்கப்பட்டது';

  @override
  String get voiceNoteSaved => 'குரல் குறிப்பு சேமிக்கப்பட்டது';

  @override
  String get emergencyAlertFailed => 'அவசர எச்சரிக்கை தோல்வி';

  @override
  String get emergencyAlertError => 'அவசர எச்சரிக்கை பிழை';

  @override
  String get emergencyAlertsTitle => 'அவசர எச்சரிக்கைகள்';

  @override
  String helloDriver(Object driverName) {
    return 'வணக்கம் $driverName, வரவேற்கிறோம்!';
  }

  @override
  String get emailLabel => 'மின்னஞ்சல்';

  @override
  String get sendAlert => 'எச்சரிக்கை அனுப்பு';

  @override
  String get stopVoiceNote => 'குரல் குறிப்பை நிறுத்து';

  @override
  String get recordVoiceNote => 'குரல் குறிப்பை பதிவு செய்';
}
