// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'FLEETHAUL';

  @override
  String get tagline => '„Smart fahren. Sicher fahren.“';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get driverSignUp => 'Fahrer anmelden';

  @override
  String get logIn => 'Anmelden';

  @override
  String get loginComingSoon => 'Anmeldefunktion kommt bald';

  @override
  String get serverConnected => 'Server verbunden';

  @override
  String get serverOffline => 'Server offline';

  @override
  String get firstName => 'Vorname';

  @override
  String get lastName => 'Nachname';

  @override
  String get address => 'Adresse';

  @override
  String get mobilePrimary => 'Handynummer (primär)';

  @override
  String get numberLinkedToWhatsapp =>
      'Diese Nummer ist mit WhatsApp verknüpft';

  @override
  String get altWhatsappNumber => 'Alternative WhatsApp-Nummer';

  @override
  String get truckId => 'LKW-ID';

  @override
  String get emailOptional => 'E-Mail (optional)';

  @override
  String get driverSummary => 'Fahrerübersicht';

  @override
  String get nameLabel => 'Name';

  @override
  String get truckIdLabel => 'LKW-ID';

  @override
  String get mobileLabel => 'Mobil';

  @override
  String get addressLabel => 'Adresse';

  @override
  String get licenseOnFileSample => 'Führerschein gespeichert (Beispiel)';

  @override
  String get provideWhatsappNumber =>
      'Bitte geben Sie eine mit WhatsApp verknüpfte Handynummer an.';

  @override
  String get signupFailedTryAgain =>
      'Anmeldung fehlgeschlagen. Bitte versuchen Sie es erneut.';

  @override
  String get signupServerError => 'Anmeldeserverfehler:';

  @override
  String get signupError => 'Anmeldefehler:';

  @override
  String get otpAuthentication => 'OTP-Authentifizierung';

  @override
  String enterOtpSentTo(String mobile) {
    return 'Geben Sie den an $mobile gesendeten OTP ein';
  }

  @override
  String get verifyOtp => 'OTP verifizieren';

  @override
  String get invalidOtpTryAgain => 'Ungültiger OTP. Bitte erneut versuchen.';

  @override
  String get faceIdAuthenticationTitle => 'Face ID-Authentifizierung';

  @override
  String get authenticateToContinue =>
      'Authentifizieren Sie sich, um fortzufahren';

  @override
  String get deviceBiometricsVerified => 'Gerätebiometrie verifiziert';

  @override
  String get biometricsFailedOrCanceled =>
      'Biometrie fehlgeschlagen oder abgebrochen';

  @override
  String get biometricsError => 'Biometriefehler:';

  @override
  String get useDeviceFaceId => 'Face ID des Geräts verwenden';

  @override
  String get useBiometricForSecurity =>
      'Biometrische Authentifizierung für Sicherheit verwenden';

  @override
  String get welcome => 'Willkommen';

  @override
  String get emergencyAlerts => 'Notfallwarnungen';

  @override
  String helloVerified(String name) {
    return 'Hallo $name, Sie sind verifiziert!';
  }

  @override
  String get quickActions => 'Schnellaktionen';

  @override
  String get sendEmergencyAlert => 'Notfallwarnung senden';

  @override
  String get emergencyAlertSent => 'Notfallwarnung gesendet';

  @override
  String get captureGoodsPhoto => 'Warenfoto aufnehmen (Betrugserkennung)';

  @override
  String get openGoodsCapture => 'Warenaufnahme öffnen';

  @override
  String get submitFeedback => 'Feedback senden';

  @override
  String get feedbackSubmitted => 'Feedback gesendet';

  @override
  String get enterMobile => 'Bitte geben Sie Ihre Handynummer ein';

  @override
  String get driver => 'Fahrer';

  @override
  String get noAccountFoundPleaseSignUp =>
      'Kein Konto gefunden. Bitte zuerst registrieren.';

  @override
  String get loginServerError =>
      'Anmeldung aufgrund eines Serverfehlers fehlgeschlagen';

  @override
  String get loginError => 'Anmeldefehler';

  @override
  String get returningDriverLogin => 'Login für zurückkehrende Fahrer';

  @override
  String get emergencyPetrolFill => 'Tankfüllung';

  @override
  String get emergencyTrafficAhead => 'Verkehr voraus';

  @override
  String get emergencyMachineRepair => 'Maschinenreparatur';

  @override
  String get emergencyClimaticConditions => 'Wetterbedingungen';

  @override
  String get emergencyOther => 'Andere Notfälle';

  @override
  String get goodsPhotoCaptured => 'Warenfoto aufgenommen';

  @override
  String get voiceNoteSaved => 'Sprachnotiz gespeichert';

  @override
  String get emergencyAlertFailed => 'Notfallalarm fehlgeschlagen';

  @override
  String get emergencyAlertError => 'Fehler beim Notfallalarm';

  @override
  String get emergencyAlertsTitle => 'Notfallalarme';

  @override
  String helloDriver(Object driverName) {
    return 'Hallo $driverName, willkommen!';
  }

  @override
  String get emailLabel => 'E-Mail';

  @override
  String get sendAlert => 'Alarm senden';

  @override
  String get stopVoiceNote => 'Sprachnotiz stoppen';

  @override
  String get recordVoiceNote => 'Sprachnotiz aufnehmen';
}
