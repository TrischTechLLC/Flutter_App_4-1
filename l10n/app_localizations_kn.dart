// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“ಸ್ಮಾರ್ಟ್ ಆಗಿ ಚಾಲನೆ ಮಾಡಿ. ಸುರಕ್ಷಿತವಾಗಿ ಚಾಲನೆ ಮಾಡಿ.”';

  @override
  String get selectLanguage => 'ಭಾಷೆ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get driverSignUp => 'ಚಾಲಕ ನೋಂದಣಿ';

  @override
  String get logIn => 'ಲಾಗಿನ್';

  @override
  String get loginComingSoon => 'ಲಾಗಿನ್ ಸೌಲಭ್ಯ ಶೀಘ್ರದಲ್ಲೇ';

  @override
  String get serverConnected => 'ಸರ್ವರ್ ಸಂಪರ್ಕಿತ';

  @override
  String get serverOffline => 'ಸರ್ವರ್ ಆಫ್‌ಲೈನ್';

  @override
  String get firstName => 'ಮೊದಲ ಹೆಸರು';

  @override
  String get lastName => 'ಕೊನೆಯ ಹೆಸರು';

  @override
  String get address => 'ವಿಳಾಸ';

  @override
  String get mobilePrimary => 'ಮೊಬೈಲ್ ಸಂಖ್ಯೆ (ಪ್ರಾಥಮಿಕ)';

  @override
  String get numberLinkedToWhatsapp => 'ಈ ಸಂಖ್ಯೆ WhatsApp ಗೆ ಲಿಂಕ್ ಆಗಿದೆ';

  @override
  String get altWhatsappNumber => 'ಪರ್ಯಾಯ WhatsApp ಮೊಬೈಲ್ ಸಂಖ್ಯೆ';

  @override
  String get truckId => 'ಟ್ರಕ್ ID';

  @override
  String get emailOptional => 'ಇಮೇಲ್ (ಐಚ್ಛಿಕ)';

  @override
  String get driverSummary => 'ಚಾಲಕ ಸಾರಾಂಶ';

  @override
  String get nameLabel => 'ಹೆಸರು';

  @override
  String get truckIdLabel => 'ಟ್ರಕ್ ID';

  @override
  String get mobileLabel => 'ಮೊಬೈಲ್';

  @override
  String get addressLabel => 'ವಿಳಾಸ';

  @override
  String get licenseOnFileSample => 'ಫೈಲ್‌ನಲ್ಲಿ ಲೈಸೆನ್ಸ್ (ಮಾದರಿ)';

  @override
  String get provideWhatsappNumber =>
      'ದಯವಿಟ್ಟು WhatsApp ಗೆ ಲಿಂಕ್ ಆದ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ನೀಡಿ.';

  @override
  String get signupFailedTryAgain =>
      'ನೋಂದಣಿ ವಿಫಲವಾಗಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get signupServerError => 'ನೋಂದಣಿ ಸರ್ವರ್ ದೋಷ:';

  @override
  String get signupError => 'ನೋಂದಣಿ ದೋಷ:';

  @override
  String get otpAuthentication => 'OTP ದೃಢೀಕರಣ';

  @override
  String enterOtpSentTo(String mobile) {
    return '$mobile ಗೆ ಕಳುಹಿಸಿದ OTP ನಮೂದಿಸಿ';
  }

  @override
  String get verifyOtp => 'OTP ಪರಿಶೀಲಿಸಿ';

  @override
  String get invalidOtpTryAgain => 'ಅಮಾನ್ಯ OTP. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get faceIdAuthenticationTitle => 'Face ID ದೃಢೀಕರಣ';

  @override
  String get authenticateToContinue => 'ಮುಂದುವರಿಯಲು ದೃಢೀಕರಿಸಿ';

  @override
  String get deviceBiometricsVerified => 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get biometricsFailedOrCanceled =>
      'ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ವಿಫಲ ಅಥವಾ ರದ್ದುಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get biometricsError => 'ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ದೋಷ:';

  @override
  String get useDeviceFaceId => 'ಸಾಧನ Face ID ಬಳಸಿ';

  @override
  String get useBiometricForSecurity => 'ಭದ್ರತೆಗಾಗಿ ಬಯೋಮೆಟ್ರಿಕ್ ದೃಢೀಕರಣ ಬಳಸಿ';

  @override
  String get welcome => 'ಸ್ವಾಗತ';

  @override
  String get emergencyAlerts => 'ತುರ್ತು ಎಚ್ಚರಿಕೆಗಳು';

  @override
  String helloVerified(String name) {
    return 'ಹಲೋ $name, ನೀವು ಪರಿಶೀಲಿಸಲ್ಪಟ್ಟಿದ್ದೀರಿ!';
  }

  @override
  String get quickActions => 'ತ್ವರಿತ ಕ್ರಿಯೆಗಳು';

  @override
  String get sendEmergencyAlert => 'ತುರ್ತು ಎಚ್ಚರಿಕೆ ಕಳುಹಿಸಿ';

  @override
  String get emergencyAlertSent => 'ತುರ್ತು ಎಚ್ಚರಿಕೆ ಕಳುಹಿಸಲಾಗಿದೆ';

  @override
  String get captureGoodsPhoto => 'ಸರಕು ಫೋಟೋ ತೆಗೆದುಕೊಳ್ಳಿ (ಮೋಸ ಪತ್ತೆ)';

  @override
  String get openGoodsCapture => 'ಸರಕು ಸೆರೆಹಿಡಿಯುವುದನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get submitFeedback => 'ಪ್ರತಿಕ್ರಿಯೆ ಸಲ್ಲಿಸಿ';

  @override
  String get feedbackSubmitted => 'ಪ್ರತಿಕ್ರಿಯೆ ಸಲ್ಲಿಸಲಾಗಿದೆ';

  @override
  String get enterMobile => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get driver => 'ಚಾಲಕ';

  @override
  String get noAccountFoundPleaseSignUp =>
      'ಯಾವುದೇ ಖಾತೆ ಕಂಡುಬಂದಿಲ್ಲ. ದಯವಿಟ್ಟು ಮೊದಲು ಸೈನ್ ಅಪ್ ಮಾಡಿ.';

  @override
  String get loginServerError => 'ಸರ್ವರ್ ದೋಷದಿಂದ ಲಾಗಿನ್ ವಿಫಲವಾಗಿದೆ';

  @override
  String get loginError => 'ಲಾಗಿನ್ ದೋಷ';

  @override
  String get returningDriverLogin => 'ಮರಳಿ ಬರುವ ಚಾಲಕ ಲಾಗಿನ್';

  @override
  String get emergencyPetrolFill => 'ಪೆಟ್ರೋಲ್ ತುಂಬಿಸುವಿಕೆ';

  @override
  String get emergencyTrafficAhead => 'ಮುಂದೆ ಟ್ರಾಫಿಕ್';

  @override
  String get emergencyMachineRepair => 'ಯಂತ್ರದ ದುರಸ್ತಿ';

  @override
  String get emergencyClimaticConditions => 'ಹವಾಮಾನ ಸ್ಥಿತಿಗಳು';

  @override
  String get emergencyOther => 'ಇತರ ತುರ್ತು';

  @override
  String get goodsPhotoCaptured => 'ಸರಕು ಫೋಟೋ ತೆಗೆದುಕೊಳ್ಳಲಾಗಿದೆ';

  @override
  String get voiceNoteSaved => 'ವಾಯ್ಸ್ ನೋಟ್ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get emergencyAlertFailed => 'ತುರ್ತು ಅಲರ್ಟ್ ವಿಫಲವಾಗಿದೆ';

  @override
  String get emergencyAlertError => 'ತುರ್ತು ಅಲರ್ಟ್ ದೋಷ';

  @override
  String get emergencyAlertsTitle => 'ತುರ್ತು ಅಲರ್ಟ್‌ಗಳು';

  @override
  String helloDriver(Object driverName) {
    return 'ಹಲೋ $driverName, ಸ್ವಾಗತ!';
  }

  @override
  String get emailLabel => 'ಇಮೇಲ್';

  @override
  String get sendAlert => 'ಅಲರ್ಟ್ ಕಳುಹಿಸಿ';

  @override
  String get stopVoiceNote => 'ವಾಯ್ಸ್ ನೋಟ್ ನಿಲ್ಲಿಸಿ';

  @override
  String get recordVoiceNote => 'ವಾಯ್ಸ್ ನೋಟ್ ರೆಕಾರ್ಡ್ ಮಾಡಿ';
}
