// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'FLEETHAUL';

  @override
  String get tagline => '« Conduisez intelligemment. Conduisez en sécurité. »';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String get driverSignUp => 'Inscription conducteur';

  @override
  String get logIn => 'Connexion';

  @override
  String get loginComingSoon => 'La fonction de connexion arrive bientôt';

  @override
  String get serverConnected => 'Serveur connecté';

  @override
  String get serverOffline => 'Serveur hors ligne';

  @override
  String get firstName => 'Prénom';

  @override
  String get lastName => 'Nom';

  @override
  String get address => 'Adresse';

  @override
  String get mobilePrimary => 'Numéro de mobile (principal)';

  @override
  String get numberLinkedToWhatsapp => 'Ce numéro est lié à WhatsApp';

  @override
  String get altWhatsappNumber => 'Numéro WhatsApp alternatif';

  @override
  String get truckId => 'ID du camion';

  @override
  String get emailOptional => 'E-mail (facultatif)';

  @override
  String get driverSummary => 'Résumé du conducteur';

  @override
  String get nameLabel => 'Nom';

  @override
  String get truckIdLabel => 'ID du camion';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get addressLabel => 'Adresse';

  @override
  String get licenseOnFileSample => 'Permis enregistré (exemple)';

  @override
  String get provideWhatsappNumber =>
      'Veuillez fournir un numéro mobile lié à WhatsApp.';

  @override
  String get signupFailedTryAgain =>
      'Échec de l’inscription. Veuillez réessayer.';

  @override
  String get signupServerError => 'Erreur du serveur d’inscription :';

  @override
  String get signupError => 'Erreur d’inscription :';

  @override
  String get otpAuthentication => 'Authentification OTP';

  @override
  String enterOtpSentTo(String mobile) {
    return 'Entrez l’OTP envoyé à $mobile';
  }

  @override
  String get verifyOtp => 'Vérifier OTP';

  @override
  String get invalidOtpTryAgain => 'OTP invalide. Veuillez réessayer.';

  @override
  String get faceIdAuthenticationTitle => 'Authentification Face ID';

  @override
  String get authenticateToContinue => 'Authentifiez-vous pour continuer';

  @override
  String get deviceBiometricsVerified => 'Biométrie du dispositif vérifiée';

  @override
  String get biometricsFailedOrCanceled =>
      'La biométrie a échoué ou a été annulée';

  @override
  String get biometricsError => 'Erreur biométrique :';

  @override
  String get useDeviceFaceId => 'Utiliser le Face ID du dispositif';

  @override
  String get useBiometricForSecurity =>
      'Utiliser l’authentification biométrique pour la sécurité';

  @override
  String get welcome => 'Bienvenue';

  @override
  String get emergencyAlerts => 'Alertes d’urgence';

  @override
  String helloVerified(String name) {
    return 'Bonjour $name, vous êtes vérifié !';
  }

  @override
  String get quickActions => 'Actions rapides';

  @override
  String get sendEmergencyAlert => 'Envoyer une alerte d’urgence';

  @override
  String get emergencyAlertSent => 'Alerte d’urgence envoyée';

  @override
  String get captureGoodsPhoto =>
      'Capturer la photo des marchandises (Détection de fraude)';

  @override
  String get openGoodsCapture => 'Ouvrir la capture des marchandises';

  @override
  String get submitFeedback => 'Envoyer des commentaires';

  @override
  String get feedbackSubmitted => 'Commentaires envoyés';

  @override
  String get enterMobile => 'Veuillez entrer votre numéro de mobile';

  @override
  String get driver => 'Conducteur';

  @override
  String get noAccountFoundPleaseSignUp =>
      'Aucun compte trouvé. Veuillez vous inscrire d\'abord.';

  @override
  String get loginServerError =>
      'Échec de connexion en raison d\'une erreur serveur';

  @override
  String get loginError => 'Erreur de connexion';

  @override
  String get returningDriverLogin => 'Connexion pour conducteur de retour';

  @override
  String get emergencyPetrolFill => 'Remplissage d\'essence';

  @override
  String get emergencyTrafficAhead => 'Embouteillage devant';

  @override
  String get emergencyMachineRepair => 'Réparation de machine';

  @override
  String get emergencyClimaticConditions => 'Conditions climatiques';

  @override
  String get emergencyOther => 'Autre urgence';

  @override
  String get goodsPhotoCaptured => 'Photo des marchandises capturée';

  @override
  String get voiceNoteSaved => 'Note vocale enregistrée';

  @override
  String get emergencyAlertFailed => 'Alerte d\'urgence échouée';

  @override
  String get emergencyAlertError => 'Erreur d\'alerte d\'urgence';

  @override
  String get emergencyAlertsTitle => 'Alertes d\'urgence';

  @override
  String helloDriver(Object driverName) {
    return 'Bonjour $driverName, bienvenue !';
  }

  @override
  String get emailLabel => 'E-mail';

  @override
  String get sendAlert => 'Envoyer l\'alerte';

  @override
  String get stopVoiceNote => 'Arrêter la note vocale';

  @override
  String get recordVoiceNote => 'Enregistrer une note vocale';
}
