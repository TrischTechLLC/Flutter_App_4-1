// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“સ્માર્ટ ડ્રાઇવ કરો. સુરક્ષિત ડ્રાઇવ કરો.”';

  @override
  String get selectLanguage => 'ભાષા પસંદ કરો';

  @override
  String get driverSignUp => 'ડ્રાઇવર સાઇન અપ';

  @override
  String get logIn => 'લૉગ ઇન';

  @override
  String get loginComingSoon => 'લૉગ ઇન ફીચર ટૂંક સમયમાં આવશે';

  @override
  String get serverConnected => 'સર્વર કનેક્ટેડ';

  @override
  String get serverOffline => 'સર્વર ઑફલાઇન';

  @override
  String get firstName => 'પ્રથમ નામ';

  @override
  String get lastName => 'અટક';

  @override
  String get address => 'સરનામું';

  @override
  String get mobilePrimary => 'મોબાઇલ નંબર (પ્રાથમિક)';

  @override
  String get numberLinkedToWhatsapp => 'આ નંબર WhatsApp સાથે જોડાયેલ છે';

  @override
  String get altWhatsappNumber => 'વૈકલ્પિક WhatsApp મોબાઇલ નંબર';

  @override
  String get truckId => 'ટ્રક ID';

  @override
  String get emailOptional => 'ઇમેઇલ (વૈકલ્પિક)';

  @override
  String get driverSummary => 'ડ્રાઇવર સારાંશ';

  @override
  String get nameLabel => 'નામ';

  @override
  String get truckIdLabel => 'ટ્રક ID';

  @override
  String get mobileLabel => 'મોબાઇલ';

  @override
  String get addressLabel => 'સરનામું';

  @override
  String get licenseOnFileSample => 'ફાઇલમાં લાઇસન્સ (નમૂનો)';

  @override
  String get provideWhatsappNumber =>
      'કૃપા કરીને WhatsApp સાથે જોડાયેલ મોબાઇલ નંબર આપો.';

  @override
  String get signupFailedTryAgain =>
      'સાઇન અપ નિષ્ફળ. કૃપા કરીને ફરીથી પ્રયાસ કરો.';

  @override
  String get signupServerError => 'સાઇન અપ સર્વર ભૂલ:';

  @override
  String get signupError => 'સાઇન અપ ભૂલ:';

  @override
  String get otpAuthentication => 'OTP પ્રમાણીકરણ';

  @override
  String enterOtpSentTo(String mobile) {
    return '$mobile પર મોકલેલ OTP દાખલ કરો';
  }

  @override
  String get verifyOtp => 'OTP ચકાસો';

  @override
  String get invalidOtpTryAgain => 'અમાન્ય OTP. કૃપા કરીને ફરીથી પ્રયાસ કરો.';

  @override
  String get faceIdAuthenticationTitle => 'Face ID પ્રમાણીકરણ';

  @override
  String get authenticateToContinue => 'ચાલુ રાખવા માટે પ્રમાણિત કરો';

  @override
  String get deviceBiometricsVerified => 'ઉપકરણ બાયોમેટ્રિક્સ ચકાસાયેલ';

  @override
  String get biometricsFailedOrCanceled => 'બાયોમેટ્રિક્સ નિષ્ફળ અથવા રદ કરેલ';

  @override
  String get biometricsError => 'બાયોમેટ્રિક્સ ભૂલ:';

  @override
  String get useDeviceFaceId => 'ઉપકરણ Face ID વાપરો';

  @override
  String get useBiometricForSecurity =>
      'સુરક્ષા માટે બાયોમેટ્રિક પ્રમાણીકરણ વાપરો';

  @override
  String get welcome => 'સ્વાગત છે';

  @override
  String get emergencyAlerts => 'ઇમર્જન્સી એલર્ટ્સ';

  @override
  String helloVerified(String name) {
    return 'હેલો $name, તમે ચકાસાયેલ છો!';
  }

  @override
  String get quickActions => 'ઝડપી ક્રિયાઓ';

  @override
  String get sendEmergencyAlert => 'ઇમર્જન્સી એલર્ટ મોકલો';

  @override
  String get emergencyAlertSent => 'ઇમર્જન્સી એલર્ટ મોકલાયેલ';

  @override
  String get captureGoodsPhoto => 'માલનો ફોટો લો (ફ્રોડ ડિટેક્શન)';

  @override
  String get openGoodsCapture => 'માલ કેપ્ચર ખોલો';

  @override
  String get submitFeedback => 'પ્રતિસાદ સબમિટ કરો';

  @override
  String get feedbackSubmitted => 'પ્રતિસાદ સબમિટ કરેલ';

  @override
  String get enterMobile => 'કૃપા કરીને તમારો મોબાઇલ નંબર દાખલ કરો';

  @override
  String get driver => 'ડ્રાઇવર';

  @override
  String get noAccountFoundPleaseSignUp =>
      'કોઈ એકાઉન્ટ મળ્યું નથી. કૃપા કરીને પહેલા સાઇન અપ કરો.';

  @override
  String get loginServerError => 'સર્વર ભૂલને કારણે લૉગિન નિષ્ફળ';

  @override
  String get loginError => 'લૉગિન ભૂલ';

  @override
  String get returningDriverLogin => 'પરત આવતા ડ્રાઇવરનું લૉગિન';

  @override
  String get emergencyPetrolFill => 'પેટ્રોલ ભરવું';

  @override
  String get emergencyTrafficAhead => 'આગળ ટ્રાફિક';

  @override
  String get emergencyMachineRepair => 'મશીનની સમારકામ';

  @override
  String get emergencyClimaticConditions => 'આબોહવાની સ્થિતિ';

  @override
  String get emergencyOther => 'અન્ય ઇમર્જન્સી';

  @override
  String get goodsPhotoCaptured => 'માલનો ફોટો લેવાયો';

  @override
  String get voiceNoteSaved => 'વૉઇસ નોટ સેવ થઈ';

  @override
  String get emergencyAlertFailed => 'ઇમર્જન્સી અલર્ટ નિષ્ફળ';

  @override
  String get emergencyAlertError => 'ઇમર્જન્સી અલર્ટ ભૂલ';

  @override
  String get emergencyAlertsTitle => 'ઇમર્જન્સી અલર્ટ્સ';

  @override
  String helloDriver(Object driverName) {
    return 'હેલો $driverName, સ્વાગત છે!';
  }

  @override
  String get emailLabel => 'ઈમેઇલ';

  @override
  String get sendAlert => 'અલર્ટ મોકલો';

  @override
  String get stopVoiceNote => 'વૉઇસ નોટ બંધ કરો';

  @override
  String get recordVoiceNote => 'વૉઇસ નોટ રેકોર્ડ કરો';
}
