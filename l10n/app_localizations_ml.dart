// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline =>
      '“സ്മാർട്ടായി ഡ്രൈവ് ചെയ്യൂ. സുരക്ഷിതമായി ഡ്രൈവ് ചെയ്യൂ.”';

  @override
  String get selectLanguage => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get driverSignUp => 'ഡ്രൈവർ രജിസ്റ്റർ ചെയ്യുക';

  @override
  String get logIn => 'ലോഗിൻ';

  @override
  String get loginComingSoon => 'ലോഗിൻ സൗകര്യം ഉടൻ';

  @override
  String get serverConnected => 'സെർവർ കണക്ടഡ്';

  @override
  String get serverOffline => 'സെർവർ ഓഫ്‌ലൈൻ';

  @override
  String get firstName => 'പേരിന്റെ ആദ്യഭാഗം';

  @override
  String get lastName => 'പേരിന്റെ അവസാനഭാഗം';

  @override
  String get address => 'വിലാസം';

  @override
  String get mobilePrimary => 'മൊബൈൽ നമ്പർ (പ്രൈമറി)';

  @override
  String get numberLinkedToWhatsapp =>
      'ഈ നമ്പർ WhatsApp-ലേക്ക് ലിങ്ക് ചെയ്തിരിക്കുന്നു';

  @override
  String get altWhatsappNumber => 'ഇതര WhatsApp മൊബൈൽ നമ്പർ';

  @override
  String get truckId => 'ട്രക്ക് ID';

  @override
  String get emailOptional => 'ഇമെയിൽ (ഓപ്ഷണൽ)';

  @override
  String get driverSummary => 'ഡ്രൈവർ സംഗ്രഹം';

  @override
  String get nameLabel => 'പേര്';

  @override
  String get truckIdLabel => 'ട്രക്ക് ID';

  @override
  String get mobileLabel => 'മൊബൈൽ';

  @override
  String get addressLabel => 'വിലാസം';

  @override
  String get licenseOnFileSample => 'ഫയലിലുള്ള ലൈസൻസ് (സാമ്പിൾ)';

  @override
  String get provideWhatsappNumber =>
      'WhatsApp-ലേക്ക് ലിങ്ക് ചെയ്ത മൊബൈൽ നമ്പർ നൽകുക.';

  @override
  String get signupFailedTryAgain =>
      'രജിസ്ട്രേഷൻ പരാജയപ്പെട്ടു. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get signupServerError => 'രജിസ്ട്രേഷൻ സെർവർ എറർ:';

  @override
  String get signupError => 'രജിസ്ട്രേഷൻ എറർ:';

  @override
  String get otpAuthentication => 'OTP പ്രാമാണീകരണം';

  @override
  String enterOtpSentTo(String mobile) {
    return '$mobile-ലേക്ക് അയച്ച OTP നൽകുക';
  }

  @override
  String get verifyOtp => 'OTP പരിശോധിക്കുക';

  @override
  String get invalidOtpTryAgain => 'അസാധുവായ OTP. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get faceIdAuthenticationTitle => 'Face ID പ്രാമാണീകരണം';

  @override
  String get authenticateToContinue => 'തുടരാൻ പ്രാമാണീകരിക്കുക';

  @override
  String get deviceBiometricsVerified => 'ഉപകരണ ബയോമെട്രിക്സ് പരിശോധിച്ചു';

  @override
  String get biometricsFailedOrCanceled =>
      'ബയോമെട്രിക്സ് പരാജയപ്പെട്ടു അല്ലെങ്കിൽ റദ്ദാക്കി';

  @override
  String get biometricsError => 'ബയോമെട്രിക്സ് എറർ:';

  @override
  String get useDeviceFaceId => 'ഉപകരണ Face ID ഉപയോഗിക്കുക';

  @override
  String get useBiometricForSecurity =>
      'സുരക്ഷയ്ക്കായി ബയോമെട്രിക് പ്രാമാണീകരണം ഉപയോഗിക്കുക';

  @override
  String get welcome => 'സ്വാഗതം';

  @override
  String get emergencyAlerts => 'അടിയന്തര അലേർട്ടുകൾ';

  @override
  String helloVerified(String name) {
    return 'ഹലോ $name, നിങ്ങൾ വെരിഫൈ ചെയ്തു!';
  }

  @override
  String get quickActions => 'ദ്രുത പ്രവർത്തനങ്ങൾ';

  @override
  String get sendEmergencyAlert => 'അടിയന്തര അലേർട്ട് അയക്കുക';

  @override
  String get emergencyAlertSent => 'അടിയന്തര അലേർട്ട് അയച്ചു';

  @override
  String get captureGoodsPhoto =>
      'ചരക്ക് ഫോട്ടോ പകർത്തുക (തട്ടിപ്പ് കണ്ടെത്തൽ)';

  @override
  String get openGoodsCapture => 'ചരക്ക് പകർത്തൽ തുറക്കുക';

  @override
  String get submitFeedback => 'ഫീഡ്ബാക്ക് സമർപ്പിക്കുക';

  @override
  String get feedbackSubmitted => 'ഫീഡ്ബാക്ക് സമർപ്പിച്ചു';

  @override
  String get enterMobile => 'ദയവായി നിങ്ങളുടെ മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get driver => 'ഡ്രൈവർ';

  @override
  String get noAccountFoundPleaseSignUp =>
      'അക്കൗണ്ട് കണ്ടെത്തിയില്ല. ദയവായി ആദ്യം സൈൻ അപ് ചെയ്യുക.';

  @override
  String get loginServerError => 'സെർവർ പിശക് കാരണം ലോഗിൻ പരാജയപ്പെട്ടു';

  @override
  String get loginError => 'ലോഗിൻ പിശക്';

  @override
  String get returningDriverLogin => 'മടങ്ങിവരുന്ന ഡ്രൈവറുടെ ലോഗിൻ';

  @override
  String get emergencyPetrolFill => 'പെട്രോൾ നിറയ്ക്കൽ';

  @override
  String get emergencyTrafficAhead => 'മുന്നിൽ ഗതാഗതക്കുരുക്ക്';

  @override
  String get emergencyMachineRepair => 'മെഷീൻ റിപ്പയർ';

  @override
  String get emergencyClimaticConditions => 'കാലാവസ്ഥാ സാഹചര്യങ്ങൾ';

  @override
  String get emergencyOther => 'മറ്റ് അടിയന്തരാവസ്ഥ';

  @override
  String get goodsPhotoCaptured => 'ചരക്കിന്റെ ഫോട്ടോ പകർത്തി';

  @override
  String get voiceNoteSaved => 'വോയ്സ് നോട്ട് സേവ് ചെയ്തു';

  @override
  String get emergencyAlertFailed => 'അടിയന്തര അലേർട്ട് പരാജയപ്പെട്ടു';

  @override
  String get emergencyAlertError => 'അടിയന്തര അലേർട്ട് പിശക്';

  @override
  String get emergencyAlertsTitle => 'അടിയന്തര അലേർട്ടുകൾ';

  @override
  String helloDriver(Object driverName) {
    return 'ഹലോ $driverName, സ്വാഗതം!';
  }

  @override
  String get emailLabel => 'ഇമെയിൽ';

  @override
  String get sendAlert => 'അലേർട്ട് അയയ്ക്കുക';

  @override
  String get stopVoiceNote => 'വോയ്സ് നോട്ട് നിർത്തുക';

  @override
  String get recordVoiceNote => 'വോയ്സ് നോട്ട് റെക്കോർഡ് ചെയ്യുക';
}
