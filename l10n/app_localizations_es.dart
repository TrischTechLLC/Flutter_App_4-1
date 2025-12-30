// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“Conduce Inteligente. Conduce Seguro.”';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get driverSignUp => 'Registro de conductor';

  @override
  String get logIn => 'Iniciar sesión';

  @override
  String get loginComingSoon => 'La función de inicio de sesión llegará pronto';

  @override
  String get serverConnected => 'Servidor conectado';

  @override
  String get serverOffline => 'Servidor fuera de línea';

  @override
  String get firstName => 'Nombre';

  @override
  String get lastName => 'Apellido';

  @override
  String get address => 'Dirección';

  @override
  String get mobilePrimary => 'Número móvil (principal)';

  @override
  String get numberLinkedToWhatsapp => 'Este número está vinculado a WhatsApp';

  @override
  String get altWhatsappNumber => 'Número alternativo de WhatsApp';

  @override
  String get truckId => 'ID del camión';

  @override
  String get emailOptional => 'Correo electrónico (opcional)';

  @override
  String get driverSummary => 'Resumen del conductor';

  @override
  String get nameLabel => 'Nombre';

  @override
  String get truckIdLabel => 'ID del camión';

  @override
  String get mobileLabel => 'Móvil';

  @override
  String get addressLabel => 'Dirección';

  @override
  String get licenseOnFileSample => 'Licencia en archivo (ejemplo)';

  @override
  String get provideWhatsappNumber =>
      'Proporcione un número vinculado a WhatsApp.';

  @override
  String get signupFailedTryAgain => 'Registro fallido. Inténtalo de nuevo.';

  @override
  String get signupServerError => 'Error del servidor de registro:';

  @override
  String get signupError => 'Error de registro:';

  @override
  String get otpAuthentication => 'Autenticación OTP';

  @override
  String enterOtpSentTo(String mobile) {
    return 'Ingrese el OTP enviado a $mobile';
  }

  @override
  String get verifyOtp => 'Verificar OTP';

  @override
  String get invalidOtpTryAgain => 'OTP inválido. Inténtalo de nuevo.';

  @override
  String get faceIdAuthenticationTitle => 'Autenticación Face ID';

  @override
  String get authenticateToContinue => 'Autentíquese para continuar';

  @override
  String get deviceBiometricsVerified => 'Biometría del dispositivo verificada';

  @override
  String get biometricsFailedOrCanceled => 'La biometría falló o fue cancelada';

  @override
  String get biometricsError => 'Error de biometría:';

  @override
  String get useDeviceFaceId => 'Usar Face ID del dispositivo';

  @override
  String get useBiometricForSecurity => 'Usa biometría por seguridad';

  @override
  String get welcome => 'Bienvenido';

  @override
  String get emergencyAlerts => 'Alertas de emergencia';

  @override
  String helloVerified(String name) {
    return 'Hola $name, ¡estás verificado!';
  }

  @override
  String get quickActions => 'Acciones rápidas';

  @override
  String get sendEmergencyAlert => 'Enviar alerta de emergencia';

  @override
  String get emergencyAlertSent => 'Alerta de emergencia enviada';

  @override
  String get captureGoodsPhoto =>
      'Capturar foto de mercancía (Detección de fraude)';

  @override
  String get openGoodsCapture => 'Abrir captura de mercancía';

  @override
  String get submitFeedback => 'Enviar comentarios';

  @override
  String get feedbackSubmitted => 'Comentarios enviados';

  @override
  String get enterMobile => 'Por favor, introduce tu número de móvil';

  @override
  String get driver => 'Conductor';

  @override
  String get noAccountFoundPleaseSignUp =>
      'No se encontró ninguna cuenta. Por favor, regístrate primero.';

  @override
  String get loginServerError =>
      'Error de inicio de sesión debido a un problema en el servidor';

  @override
  String get loginError => 'Error de inicio de sesión';

  @override
  String get returningDriverLogin =>
      'Inicio de sesión para conductor recurrente';

  @override
  String get emergencyPetrolFill => 'Llenado de combustible';

  @override
  String get emergencyTrafficAhead => 'Tráfico adelante';

  @override
  String get emergencyMachineRepair => 'Reparación de máquina';

  @override
  String get emergencyClimaticConditions => 'Condiciones climáticas';

  @override
  String get emergencyOther => 'Otra emergencia';

  @override
  String get goodsPhotoCaptured => 'Foto de mercancías capturada';

  @override
  String get voiceNoteSaved => 'Nota de voz guardada';

  @override
  String get emergencyAlertFailed => 'Alerta de emergencia fallida';

  @override
  String get emergencyAlertError => 'Error en alerta de emergencia';

  @override
  String get emergencyAlertsTitle => 'Alertas de emergencia';

  @override
  String helloDriver(Object driverName) {
    return '¡Hola $driverName, bienvenido!';
  }

  @override
  String get emailLabel => 'Correo electrónico';

  @override
  String get sendAlert => 'Enviar alerta';

  @override
  String get stopVoiceNote => 'Detener nota de voz';

  @override
  String get recordVoiceNote => 'Grabar nota de voz';
}
