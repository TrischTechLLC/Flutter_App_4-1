// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'फ्लीटहॉल';

  @override
  String get tagline => '“स्मार्ट चलाएँ। सुरक्षित चलाएँ।”';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get driverSignUp => 'ड्राइवर साइन अप';

  @override
  String get logIn => 'लॉग इन';

  @override
  String get loginComingSoon => 'लॉग इन सुविधा जल्द ही आ रही है';

  @override
  String get serverConnected => 'सर्वर जुड़ा हुआ है';

  @override
  String get serverOffline => 'सर्वर ऑफ़लाइन है';

  @override
  String get firstName => 'पहला नाम';

  @override
  String get lastName => 'अंतिम नाम';

  @override
  String get address => 'पता';

  @override
  String get mobilePrimary => 'मोबाइल नंबर (प्राथमिक)';

  @override
  String get numberLinkedToWhatsapp => 'यह नंबर WhatsApp से लिंक है';

  @override
  String get altWhatsappNumber => 'वैकल्पिक WhatsApp मोबाइल नंबर';

  @override
  String get truckId => 'ट्रक आईडी';

  @override
  String get emailOptional => 'ईमेल (वैकल्पिक)';

  @override
  String get driverSummary => 'ड्राइवर सारांश';

  @override
  String get nameLabel => 'नाम';

  @override
  String get truckIdLabel => 'ट्रक आईडी';

  @override
  String get mobileLabel => 'मोबाइल';

  @override
  String get addressLabel => 'पता';

  @override
  String get licenseOnFileSample => 'लाइसेंस फाइल में (नमूना)';

  @override
  String get provideWhatsappNumber =>
      'कृपया WhatsApp से लिंक किया हुआ मोबाइल नंबर प्रदान करें।';

  @override
  String get signupFailedTryAgain => 'साइन अप विफल। कृपया पुनः प्रयास करें।';

  @override
  String get signupServerError => 'साइन अप सर्वर त्रुटि:';

  @override
  String get signupError => 'साइन अप त्रुटि:';

  @override
  String get otpAuthentication => 'OTP प्रमाणीकरण';

  @override
  String enterOtpSentTo(String mobile) {
    return '$mobile पर भेजा गया OTP दर्ज करें';
  }

  @override
  String get verifyOtp => 'OTP सत्यापित करें';

  @override
  String get invalidOtpTryAgain => 'अमान्य OTP। कृपया पुनः प्रयास करें।';

  @override
  String get faceIdAuthenticationTitle => 'Face ID प्रमाणीकरण';

  @override
  String get authenticateToContinue => 'जारी रखने के लिए प्रमाणीकरण करें';

  @override
  String get deviceBiometricsVerified => 'डिवाइस बायोमेट्रिक्स सत्यापित';

  @override
  String get biometricsFailedOrCanceled => 'बायोमेट्रिक्स विफल या रद्द';

  @override
  String get biometricsError => 'बायोमेट्रिक्स त्रुटि:';

  @override
  String get useDeviceFaceId => 'डिवाइस Face ID उपयोग करें';

  @override
  String get useBiometricForSecurity =>
      'सुरक्षा के लिए बायोमेट्रिक प्रमाणीकरण उपयोग करें';

  @override
  String get welcome => 'स्वागत है';

  @override
  String get emergencyAlerts => 'आपातकालीन चेतावनियाँ';

  @override
  String helloVerified(String name) {
    return 'नमस्ते $name, आप सत्यापित हैं!';
  }

  @override
  String get quickActions => 'त्वरित क्रियाएँ';

  @override
  String get sendEmergencyAlert => 'आपातकालीन चेतावनी भेजें';

  @override
  String get emergencyAlertSent => 'आपातकालीन चेतावनी भेजी गई';

  @override
  String get captureGoodsPhoto => 'सामान की फोटो लें (धोखाधड़ी पहचान)';

  @override
  String get openGoodsCapture => 'सामान कैप्चर खोलें';

  @override
  String get submitFeedback => 'फीडबैक भेजें';

  @override
  String get feedbackSubmitted => 'फीडबैक भेजा गया';

  @override
  String get enterMobile => 'कृपया अपना मोबाइल नंबर दर्ज करें';

  @override
  String get driver => 'ड्राइवर';

  @override
  String get noAccountFoundPleaseSignUp =>
      'कोई खाता नहीं मिला। कृपया पहले साइन अप करें।';

  @override
  String get loginServerError => 'सर्वर त्रुटि के कारण लॉगिन विफल';

  @override
  String get loginError => 'लॉगिन त्रुटि';

  @override
  String get returningDriverLogin => 'वापस आने वाले ड्राइवर का लॉगिन';

  @override
  String get emergencyPetrolFill => 'पेट्रोल भरना';

  @override
  String get emergencyTrafficAhead => 'आगे ट्रैफिक';

  @override
  String get emergencyMachineRepair => 'मशीन की मरम्मत';

  @override
  String get emergencyClimaticConditions => 'जलवायु स्थितियाँ';

  @override
  String get emergencyOther => 'अन्य आपातकाल';

  @override
  String get goodsPhotoCaptured => 'माल की फोटो ली गई';

  @override
  String get voiceNoteSaved => 'वॉइस नोट सेव की गई';

  @override
  String get emergencyAlertFailed => 'आपातकालीन अलर्ट विफल';

  @override
  String get emergencyAlertError => 'आपातकालीन अलर्ट त्रुटि';

  @override
  String get emergencyAlertsTitle => 'आपातकालीन अलर्ट';

  @override
  String helloDriver(Object driverName) {
    return 'नमस्ते $driverName, स्वागत है!';
  }

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get sendAlert => 'अलर्ट भेजें';

  @override
  String get stopVoiceNote => 'वॉइस नोट रोकें';

  @override
  String get recordVoiceNote => 'वॉइस नोट रिकॉर्ड करें';
}
