// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“Dirija com Inteligência. Dirija com Segurança.”';

  @override
  String get selectLanguage => 'Selecionar Idioma';

  @override
  String get driverSignUp => 'Cadastro de Motorista';

  @override
  String get logIn => 'Entrar';

  @override
  String get loginComingSoon => 'Recurso de login em breve';

  @override
  String get serverConnected => 'Servidor conectado';

  @override
  String get serverOffline => 'Servidor offline';

  @override
  String get firstName => 'Primeiro nome';

  @override
  String get lastName => 'Sobrenome';

  @override
  String get address => 'Endereço';

  @override
  String get mobilePrimary => 'Número de celular (principal)';

  @override
  String get numberLinkedToWhatsapp => 'Este número está vinculado ao WhatsApp';

  @override
  String get altWhatsappNumber => 'Número alternativo do WhatsApp';

  @override
  String get truckId => 'ID do Caminhão';

  @override
  String get emailOptional => 'E-mail (opcional)';

  @override
  String get driverSummary => 'Resumo do Motorista';

  @override
  String get nameLabel => 'Nome';

  @override
  String get truckIdLabel => 'ID do Caminhão';

  @override
  String get mobileLabel => 'Celular';

  @override
  String get addressLabel => 'Endereço';

  @override
  String get licenseOnFileSample => 'Licença arquivada (exemplo)';

  @override
  String get provideWhatsappNumber =>
      'Forneça um número de celular vinculado ao WhatsApp.';

  @override
  String get signupFailedTryAgain => 'Cadastro falhou. Tente novamente.';

  @override
  String get signupServerError => 'Erro no servidor de cadastro:';

  @override
  String get signupError => 'Erro de cadastro:';

  @override
  String get otpAuthentication => 'Autenticação OTP';

  @override
  String enterOtpSentTo(String mobile) {
    return 'Insira o OTP enviado para $mobile';
  }

  @override
  String get verifyOtp => 'Verificar OTP';

  @override
  String get invalidOtpTryAgain => 'OTP inválido. Tente novamente.';

  @override
  String get faceIdAuthenticationTitle => 'Autenticação Face ID';

  @override
  String get authenticateToContinue => 'Autentique para continuar';

  @override
  String get deviceBiometricsVerified => 'Biometria do dispositivo verificada';

  @override
  String get biometricsFailedOrCanceled => 'Biometria falhou ou cancelada';

  @override
  String get biometricsError => 'Erro de biometria:';

  @override
  String get useDeviceFaceId => 'Usar Face ID do dispositivo';

  @override
  String get useBiometricForSecurity =>
      'Usar autenticação biométrica para segurança';

  @override
  String get welcome => 'Bem-vindo';

  @override
  String get emergencyAlerts => 'Alertas de Emergência';

  @override
  String helloVerified(String name) {
    return 'Olá $name, você está verificado!';
  }

  @override
  String get quickActions => 'Ações Rápidas';

  @override
  String get sendEmergencyAlert => 'Enviar Alerta de Emergência';

  @override
  String get emergencyAlertSent => 'Alerta de emergência enviado';

  @override
  String get captureGoodsPhoto =>
      'Capturar Foto das Mercadorias (Detecção de Fraude)';

  @override
  String get openGoodsCapture => 'Abrir captura de mercadorias';

  @override
  String get submitFeedback => 'Enviar Feedback';

  @override
  String get feedbackSubmitted => 'Feedback enviado';

  @override
  String get enterMobile => 'Por favor, insira o seu número de celular';

  @override
  String get driver => 'Motorista';

  @override
  String get noAccountFoundPleaseSignUp =>
      'Nenhuma conta encontrada. Por favor, cadastre-se primeiro.';

  @override
  String get loginServerError => 'Falha no login devido a erro no servidor';

  @override
  String get loginError => 'Erro de login';

  @override
  String get returningDriverLogin => 'Login de motorista retornando';

  @override
  String get emergencyPetrolFill => 'Abastecimento de combustível';

  @override
  String get emergencyTrafficAhead => 'Tráfego à frente';

  @override
  String get emergencyMachineRepair => 'Reparo da máquina';

  @override
  String get emergencyClimaticConditions => 'Condições climáticas';

  @override
  String get emergencyOther => 'Outra emergência';

  @override
  String get goodsPhotoCaptured => 'Foto das mercadorias capturada';

  @override
  String get voiceNoteSaved => 'Nota de voz salva';

  @override
  String get emergencyAlertFailed => 'Alerta de emergência falhou';

  @override
  String get emergencyAlertError => 'Erro no alerta de emergência';

  @override
  String get emergencyAlertsTitle => 'Alertas de Emergência';

  @override
  String helloDriver(Object driverName) {
    return 'Olá $driverName, bem-vindo!';
  }

  @override
  String get emailLabel => 'E-mail';

  @override
  String get sendAlert => 'Enviar Alerta';

  @override
  String get stopVoiceNote => 'Parar nota de voz';

  @override
  String get recordVoiceNote => 'Gravar nota de voz';
}
