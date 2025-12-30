// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“स्मार्ट ड्राइव्ह करा. सुरक्षित ड्राइव्ह करा.”';

  @override
  String get selectLanguage => 'भाषा निवडा';

  @override
  String get driverSignUp => 'ड्रायव्हर साइन अप';

  @override
  String get logIn => 'लॉग इन';

  @override
  String get loginComingSoon => 'लॉग इन सुविधा लवकरच येत आहे';

  @override
  String get serverConnected => 'सर्व्हर कनेक्टेड';

  @override
  String get serverOffline => 'सर्व्हर ऑफलाइन';

  @override
  String get firstName => 'पहिले नाव';

  @override
  String get lastName => 'आडनाव';

  @override
  String get address => 'पत्ता';

  @override
  String get mobilePrimary => 'मोबाईल नंबर (प्राथमिक)';

  @override
  String get numberLinkedToWhatsapp => 'हा नंबर WhatsApp शी लिंक आहे';

  @override
  String get altWhatsappNumber => 'पर्यायी WhatsApp मोबाईल नंबर';

  @override
  String get truckId => 'ट्रक ID';

  @override
  String get emailOptional => 'ईमेल (पर्यायी)';

  @override
  String get driverSummary => 'ड्रायव्हर सारांश';

  @override
  String get nameLabel => 'नाव';

  @override
  String get truckIdLabel => 'ट्रक ID';

  @override
  String get mobileLabel => 'मोबाईल';

  @override
  String get addressLabel => 'पत्ता';

  @override
  String get licenseOnFileSample => 'फाइलवरील परवाना (नमुना)';

  @override
  String get provideWhatsappNumber =>
      'कृपया WhatsApp-लिंक केलेला मोबाईल नंबर द्या.';

  @override
  String get signupFailedTryAgain => 'साइन अप अपयशी. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get signupServerError => 'साइन अप सर्व्हर त्रुटी:';

  @override
  String get signupError => 'साइन अप त्रुटी:';

  @override
  String get otpAuthentication => 'OTP प्रमाणीकरण';

  @override
  String enterOtpSentTo(String mobile) {
    return '$mobile वर पाठवलेला OTP प्रविष्ट करा';
  }

  @override
  String get verifyOtp => 'OTP सत्यापित करा';

  @override
  String get invalidOtpTryAgain => 'अवैध OTP. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get faceIdAuthenticationTitle => 'Face ID प्रमाणीकरण';

  @override
  String get authenticateToContinue => 'पुढे जाण्यासाठी प्रमाणित करा';

  @override
  String get deviceBiometricsVerified => 'डिव्हाइस बायोमेट्रिक्स सत्यापित';

  @override
  String get biometricsFailedOrCanceled => 'बायोमेट्रिक्स अपयशी किंवा रद्द';

  @override
  String get biometricsError => 'बायोमेट्रिक्स त्रुटी:';

  @override
  String get useDeviceFaceId => 'डिव्हाइस Face ID वापरा';

  @override
  String get useBiometricForSecurity =>
      'सुरक्षेसाठी बायोमेट्रिक प्रमाणीकरण वापरा';

  @override
  String get welcome => 'स्वागत आहे';

  @override
  String get emergencyAlerts => 'आपत्कालीन अलर्ट';

  @override
  String helloVerified(String name) {
    return 'हॅलो $name, तुम्ही सत्यापित आहात!';
  }

  @override
  String get quickActions => 'जलद कृती';

  @override
  String get sendEmergencyAlert => 'आपत्कालीन अलर्ट पाठवा';

  @override
  String get emergencyAlertSent => 'आपत्कालीन अलर्ट पाठवला';

  @override
  String get captureGoodsPhoto => 'मालाचा फोटो घ्या (फ्रॉड डिटेक्शन)';

  @override
  String get openGoodsCapture => 'माल कॅप्चर उघडा';

  @override
  String get submitFeedback => 'फीडबॅक सबमिट करा';

  @override
  String get feedbackSubmitted => 'फीडबॅक सबमिट केला';

  @override
  String get enterMobile => 'कृपया तुमचा मोबाईल नंबर टाका';

  @override
  String get driver => 'ड्रायव्हर';

  @override
  String get noAccountFoundPleaseSignUp =>
      'खाते सापडले नाही. कृपया प्रथम साइन अप करा.';

  @override
  String get loginServerError => 'सर्व्हर एररमुळे लॉगिन अयशस्वी';

  @override
  String get loginError => 'लॉगिन एरर';

  @override
  String get returningDriverLogin => 'परत येणाऱ्या ड्रायव्हरचे लॉगिन';

  @override
  String get emergencyPetrolFill => 'पेट्रोल भरणे';

  @override
  String get emergencyTrafficAhead => 'पुढे ट्रॅफिक';

  @override
  String get emergencyMachineRepair => 'मशीन दुरुस्ती';

  @override
  String get emergencyClimaticConditions => 'हवामान परिस्थिती';

  @override
  String get emergencyOther => 'इतर आपत्कालीन';

  @override
  String get goodsPhotoCaptured => 'मालाचा फोटो घेतला';

  @override
  String get voiceNoteSaved => 'व्हॉइस नोट सेव्ह झाली';

  @override
  String get emergencyAlertFailed => 'आपत्कालीन अलर्ट अयशस्वी';

  @override
  String get emergencyAlertError => 'आपत्कालीन अलर्ट एरर';

  @override
  String get emergencyAlertsTitle => 'आपत्कालीन अलर्ट';

  @override
  String helloDriver(Object driverName) {
    return 'हॅलो $driverName, स्वागत आहे!';
  }

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get sendAlert => 'अलर्ट पाठवा';

  @override
  String get stopVoiceNote => 'व्हॉइस नोट थांबवा';

  @override
  String get recordVoiceNote => 'व्हॉइस नोट रेकॉर्ड करा';
}
