// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“Guida intelligente. Guida sicura.”';

  @override
  String get selectLanguage => 'Seleziona lingua';

  @override
  String get driverSignUp => 'Registrazione autista';

  @override
  String get logIn => 'Accedi';

  @override
  String get loginComingSoon => 'Funzione di accesso presto disponibile';

  @override
  String get serverConnected => 'Server connesso';

  @override
  String get serverOffline => 'Server offline';

  @override
  String get firstName => 'Nome';

  @override
  String get lastName => 'Cognome';

  @override
  String get address => 'Indirizzo';

  @override
  String get mobilePrimary => 'Numero di cellulare (principale)';

  @override
  String get numberLinkedToWhatsapp => 'Questo numero è collegato a WhatsApp';

  @override
  String get altWhatsappNumber => 'Numero WhatsApp alternativo';

  @override
  String get truckId => 'ID camion';

  @override
  String get emailOptional => 'Email (opzionale)';

  @override
  String get driverSummary => 'Riepilogo autista';

  @override
  String get nameLabel => 'Nome';

  @override
  String get truckIdLabel => 'ID camion';

  @override
  String get mobileLabel => 'Cellulare';

  @override
  String get addressLabel => 'Indirizzo';

  @override
  String get licenseOnFileSample => 'Licenza archiviata (esempio)';

  @override
  String get provideWhatsappNumber =>
      'Fornisci un numero di cellulare collegato a WhatsApp.';

  @override
  String get signupFailedTryAgain => 'Registrazione fallita. Riprova.';

  @override
  String get signupServerError => 'Errore del server di registrazione:';

  @override
  String get signupError => 'Errore di registrazione:';

  @override
  String get otpAuthentication => 'Autenticazione OTP';

  @override
  String enterOtpSentTo(String mobile) {
    return 'Inserisci OTP inviato a $mobile';
  }

  @override
  String get verifyOtp => 'Verifica OTP';

  @override
  String get invalidOtpTryAgain => 'OTP non valido. Riprova.';

  @override
  String get faceIdAuthenticationTitle => 'Autenticazione Face ID';

  @override
  String get authenticateToContinue => 'Autenticati per continuare';

  @override
  String get deviceBiometricsVerified => 'Biometria del dispositivo verificata';

  @override
  String get biometricsFailedOrCanceled => 'Biometria fallita o annullata';

  @override
  String get biometricsError => 'Errore biometrico:';

  @override
  String get useDeviceFaceId => 'Usa Face ID del dispositivo';

  @override
  String get useBiometricForSecurity =>
      'Usa autenticazione biometrica per sicurezza';

  @override
  String get welcome => 'Benvenuto';

  @override
  String get emergencyAlerts => 'Avvisi di emergenza';

  @override
  String helloVerified(String name) {
    return 'Ciao $name, sei verificato!';
  }

  @override
  String get quickActions => 'Azioni rapide';

  @override
  String get sendEmergencyAlert => 'Invia avviso di emergenza';

  @override
  String get emergencyAlertSent => 'Avviso di emergenza inviato';

  @override
  String get captureGoodsPhoto => 'Scatta foto merci (rilevamento frodi)';

  @override
  String get openGoodsCapture => 'Apri cattura merci';

  @override
  String get submitFeedback => 'Invia feedback';

  @override
  String get feedbackSubmitted => 'Feedback inviato';

  @override
  String get enterMobile => 'Inserisci il tuo numero di cellulare';

  @override
  String get driver => 'Autista';

  @override
  String get noAccountFoundPleaseSignUp =>
      'Nessun account trovato. Registrati prima.';

  @override
  String get loginServerError =>
      'Accesso fallito a causa di un errore del server';

  @override
  String get loginError => 'Errore di accesso';

  @override
  String get returningDriverLogin => 'Accesso autista di ritorno';

  @override
  String get emergencyPetrolFill => 'Rifornimento carburante';

  @override
  String get emergencyTrafficAhead => 'Traffico davanti';

  @override
  String get emergencyMachineRepair => 'Riparazione macchina';

  @override
  String get emergencyClimaticConditions => 'Condizioni climatiche';

  @override
  String get emergencyOther => 'Altra emergenza';

  @override
  String get goodsPhotoCaptured => 'Foto merci catturata';

  @override
  String get voiceNoteSaved => 'Nota vocale salvata';

  @override
  String get emergencyAlertFailed => 'Allerta emergenza fallita';

  @override
  String get emergencyAlertError => 'Errore allerta emergenza';

  @override
  String get emergencyAlertsTitle => 'Allerte di emergenza';

  @override
  String helloDriver(Object driverName) {
    return 'Ciao $driverName, benvenuto!';
  }

  @override
  String get emailLabel => 'Email';

  @override
  String get sendAlert => 'Invia allerta';

  @override
  String get stopVoiceNote => 'Ferma nota vocale';

  @override
  String get recordVoiceNote => 'Registra nota vocale';
}
