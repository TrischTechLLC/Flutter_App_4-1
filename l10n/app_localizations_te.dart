// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'ఫ్లీట్‌హాల్';

  @override
  String get tagline => '“స్మార్ట్‌గా నడపండి. సేఫ్‌గా నడపండి.”';

  @override
  String get selectLanguage => 'భాషను ఎంచుకోండి';

  @override
  String get driverSignUp => 'డ్రైవర్ సైన్ అప్';

  @override
  String get logIn => 'లాగిన్';

  @override
  String get loginComingSoon => 'లాగిన్ ఫీచర్ త్వరలో వస్తుంది';

  @override
  String get serverConnected => 'సర్వర్ కనెక్ట్ అయ్యింది';

  @override
  String get serverOffline => 'సర్వర్ ఆఫ్‌లైన్‌లో ఉంది';

  @override
  String get firstName => 'ఫస్ట్ నేమ్';

  @override
  String get lastName => 'లాస్ట్ నేమ్';

  @override
  String get address => 'చిరునామా';

  @override
  String get mobilePrimary => 'మొబైల్ నంబర్ (ప్రైమరీ)';

  @override
  String get numberLinkedToWhatsapp => 'ఈ నంబర్ WhatsApp కు లింక్ అయింది';

  @override
  String get altWhatsappNumber => 'ప్రత్యామ్నాయ WhatsApp మొబైల్ నంబర్';

  @override
  String get truckId => 'ట్రక్ ఐడి';

  @override
  String get emailOptional => 'ఇమెయిల్ (ఐచ్చికం)';

  @override
  String get driverSummary => 'డ్రైవర్ సమరీ';

  @override
  String get nameLabel => 'పేరు';

  @override
  String get truckIdLabel => 'ట్రక్ ఐడి';

  @override
  String get mobileLabel => 'మొబైల్';

  @override
  String get addressLabel => 'చిరునామా';

  @override
  String get licenseOnFileSample => 'లైసెన్స్ ఫైల్‌లో ఉంది (నమూనా)';

  @override
  String get provideWhatsappNumber =>
      'దయచేసి WhatsApp కు లింక్ అయిన మొబైల్ నంబర్ ఇవ్వండి.';

  @override
  String get signupFailedTryAgain =>
      'సైన్ అప్ విఫలమైంది. దయచేసి మళ్ళీ ప్రయత్నించండి.';

  @override
  String get signupServerError => 'సైన్ అప్ సర్వర్ లోపం:';

  @override
  String get signupError => 'సైన్ అప్ లోపం:';

  @override
  String get otpAuthentication => 'OTP ఆథెంటికేషన్';

  @override
  String enterOtpSentTo(String mobile) {
    return '$mobile కు పంపిన OTP ను ఎంటర్ చేయండి';
  }

  @override
  String get verifyOtp => 'OTP వెరిఫై చేయండి';

  @override
  String get invalidOtpTryAgain => 'చెల్లని OTP. దయచేసి మళ్ళీ ప్రయత్నించండి.';

  @override
  String get faceIdAuthenticationTitle => 'ఫేస్ ID ఆథెంటికేషన్';

  @override
  String get authenticateToContinue => 'కొనసాగేందుకు ఆథెంటికేట్ చేయండి';

  @override
  String get deviceBiometricsVerified => 'డివైస్ బయోమెట్రిక్స్ వెరిఫై అయ్యాయి';

  @override
  String get biometricsFailedOrCanceled =>
      'బయోమెట్రిక్స్ విఫలమయ్యాయి లేదా రద్దయ్యాయి';

  @override
  String get biometricsError => 'బయోమెట్రిక్స్ లోపం:';

  @override
  String get useDeviceFaceId => 'డివైస్ ఫేస్ ID ఉపయోగించండి';

  @override
  String get useBiometricForSecurity =>
      'భద్రత కోసం బయోమెట్రిక్ ఆథెంటికేషన్ ఉపయోగించండి';

  @override
  String get welcome => 'స్వాగతం';

  @override
  String get emergencyAlerts => 'ఎమర్జెన్సీ అలర్ట్స్';

  @override
  String helloVerified(String name) {
    return 'హలో $name, మీరు వెరిఫై అయ్యారు!';
  }

  @override
  String get quickActions => 'క్విక్ యాక్షన్స్';

  @override
  String get sendEmergencyAlert => 'ఎమర్జెన్సీ అలర్ట్ పంపండి';

  @override
  String get emergencyAlertSent => 'ఎమర్జెన్సీ అలర్ట్ పంపబడింది';

  @override
  String get captureGoodsPhoto => 'సరకుల ఫోటో తీసుకోండి (మోసం గుర్తింపు)';

  @override
  String get openGoodsCapture => 'సరకుల క్యాప్చర్ ఓపెన్ చేయండి';

  @override
  String get submitFeedback => 'ఫీడ్‌బ్యాక్ పంపండి';

  @override
  String get feedbackSubmitted => 'ఫీడ్‌బ్యాక్ పంపబడింది';

  @override
  String get enterMobile => 'దయచేసి మీ మొబైల్ నంబర్‌ను నమోదు చేయండి';

  @override
  String get driver => 'డ్రైవర్';

  @override
  String get noAccountFoundPleaseSignUp =>
      'ఖాతా కనుగొనబడలేదు. దయచేసి ముందుగా సైన్ అప్ చేయండి.';

  @override
  String get loginServerError => 'సర్వర్ లోపం కారణంగా లాగిన్ విఫలమైంది';

  @override
  String get loginError => 'లాగిన్ లోపం';

  @override
  String get returningDriverLogin => 'తిరిగి వచ్చే డ్రైవర్ లాగిన్';

  @override
  String get emergencyPetrolFill => 'పెట్రోల్ నింపడం';

  @override
  String get emergencyTrafficAhead => 'ముందు ట్రాఫిక్';

  @override
  String get emergencyMachineRepair => 'మెషిన్ రిపేర్';

  @override
  String get emergencyClimaticConditions => 'వాతావరణ పరిస్థితులు';

  @override
  String get emergencyOther => 'ఇతర అత్యవసర';

  @override
  String get goodsPhotoCaptured => 'వస్తువు ఫోటో తీసుకోబడింది';

  @override
  String get voiceNoteSaved => 'వాయిస్ నోట్ సేవ్ చేయబడింది';

  @override
  String get emergencyAlertFailed => 'అత్యవసర హెచ్చరిక విఫలమైంది';

  @override
  String get emergencyAlertError => 'అత్యవసర హెచ్చరిక లోపం';

  @override
  String get emergencyAlertsTitle => 'అత్యవసర హెచ్చరికలు';

  @override
  String helloDriver(Object driverName) {
    return 'హాయ్ $driverName, స్వాగతం!';
  }

  @override
  String get emailLabel => 'ఇమెయిల్';

  @override
  String get sendAlert => 'హెచ్చరిక పంపండి';

  @override
  String get stopVoiceNote => 'వాయిస్ నోట్ ఆపండి';

  @override
  String get recordVoiceNote => 'వాయిస్ నోట్ రికార్డ్ చేయండి';
}
