// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“Drive Smart. Drive Safe.”';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get driverSignUp => 'Driver sign up';

  @override
  String get logIn => 'Log In';

  @override
  String get loginComingSoon => 'Log In feature coming soon';

  @override
  String get serverConnected => 'Server connected';

  @override
  String get serverOffline => 'Server offline';

  @override
  String get firstName => 'First name';

  @override
  String get lastName => 'Last name';

  @override
  String get address => 'Address';

  @override
  String get mobilePrimary => 'Mobile number (primary)';

  @override
  String get numberLinkedToWhatsapp => 'This number is linked to WhatsApp';

  @override
  String get altWhatsappNumber => 'Alternate WhatsApp mobile number';

  @override
  String get truckId => 'Truck ID';

  @override
  String get emailOptional => 'Email (optional)';

  @override
  String get driverSummary => 'Driver summary';

  @override
  String get nameLabel => 'Name';

  @override
  String get truckIdLabel => 'Truck ID';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get addressLabel => 'Address';

  @override
  String get licenseOnFileSample => 'License on file (sample)';

  @override
  String get provideWhatsappNumber =>
      'Please provide a WhatsApp-linked mobile number.';

  @override
  String get signupFailedTryAgain => 'Signup failed. Please try again.';

  @override
  String get signupServerError => 'Signup server error:';

  @override
  String get signupError => 'Signup error:';

  @override
  String get otpAuthentication => 'OTP Authentication';

  @override
  String enterOtpSentTo(String mobile) {
    return 'Enter OTP sent to $mobile';
  }

  @override
  String get verifyOtp => 'Verify OTP';

  @override
  String get invalidOtpTryAgain => 'Invalid OTP. Please try again.';

  @override
  String get faceIdAuthenticationTitle => 'Face ID authentication';

  @override
  String get authenticateToContinue => 'Authenticate to continue';

  @override
  String get deviceBiometricsVerified => 'Device biometrics verified';

  @override
  String get biometricsFailedOrCanceled => 'Biometrics failed or canceled';

  @override
  String get biometricsError => 'Biometrics error:';

  @override
  String get useDeviceFaceId => 'Use device Face ID';

  @override
  String get useBiometricForSecurity =>
      'Use biometric authentication for security';

  @override
  String get welcome => 'Welcome';

  @override
  String get emergencyAlerts => 'Emergency Alerts';

  @override
  String helloVerified(String name) {
    return 'Hello $name, you are verified!';
  }

  @override
  String get quickActions => 'Quick Actions';

  @override
  String get sendEmergencyAlert => 'Send Emergency Alert';

  @override
  String get emergencyAlertSent => 'Emergency alert sent';

  @override
  String get captureGoodsPhoto => 'Capture Goods Photo (Fraud Detection)';

  @override
  String get openGoodsCapture => 'Open goods capture';

  @override
  String get submitFeedback => 'Submit Feedback';

  @override
  String get feedbackSubmitted => 'Feedback submitted';

  @override
  String get enterMobile => 'Please enter your mobile number';

  @override
  String get driver => 'Driver';

  @override
  String get noAccountFoundPleaseSignUp =>
      'No account found. Please sign up first.';

  @override
  String get loginServerError => 'Login failed due to server error';

  @override
  String get loginError => 'Login error';

  @override
  String get returningDriverLogin => 'Returning driver login';

  @override
  String get emergencyPetrolFill => 'Petrol fill';

  @override
  String get emergencyTrafficAhead => 'Traffic ahead';

  @override
  String get emergencyMachineRepair => 'Machine repair';

  @override
  String get emergencyClimaticConditions => 'Climatic conditions';

  @override
  String get emergencyOther => 'Other emergency';

  @override
  String get goodsPhotoCaptured => 'Goods photo captured';

  @override
  String get voiceNoteSaved => 'Voice note saved';

  @override
  String get emergencyAlertFailed => 'Emergency alert failed';

  @override
  String get emergencyAlertError => 'Emergency alert error';

  @override
  String get emergencyAlertsTitle => 'Emergency Alerts';

  @override
  String helloDriver(Object driverName) {
    return 'Hello $driverName, welcome!';
  }

  @override
  String get emailLabel => 'Email';

  @override
  String get sendAlert => 'Send Alert';

  @override
  String get stopVoiceNote => 'Stop voice note';

  @override
  String get recordVoiceNote => 'Record voice note';
}
