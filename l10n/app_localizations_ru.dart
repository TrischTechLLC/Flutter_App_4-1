// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“Водите умно. Водите безопасно.”';

  @override
  String get selectLanguage => 'Выбрать язык';

  @override
  String get driverSignUp => 'Регистрация водителя';

  @override
  String get logIn => 'Войти';

  @override
  String get loginComingSoon => 'Функция входа скоро появится';

  @override
  String get serverConnected => 'Сервер подключён';

  @override
  String get serverOffline => 'Сервер офлайн';

  @override
  String get firstName => 'Имя';

  @override
  String get lastName => 'Фамилия';

  @override
  String get address => 'Адрес';

  @override
  String get mobilePrimary => 'Номер телефона (основной)';

  @override
  String get numberLinkedToWhatsapp => 'Этот номер связан с WhatsApp';

  @override
  String get altWhatsappNumber => 'Альтернативный номер WhatsApp';

  @override
  String get truckId => 'ID грузовика';

  @override
  String get emailOptional => 'Email (необязательно)';

  @override
  String get driverSummary => 'Сводка водителя';

  @override
  String get nameLabel => 'Имя';

  @override
  String get truckIdLabel => 'ID грузовика';

  @override
  String get mobileLabel => 'Телефон';

  @override
  String get addressLabel => 'Адрес';

  @override
  String get licenseOnFileSample => 'Лицензия в файле (пример)';

  @override
  String get provideWhatsappNumber =>
      'Пожалуйста, укажите номер телефона, связанный с WhatsApp.';

  @override
  String get signupFailedTryAgain =>
      'Регистрация не удалась. Повторите попытку.';

  @override
  String get signupServerError => 'Ошибка сервера регистрации:';

  @override
  String get signupError => 'Ошибка регистрации:';

  @override
  String get otpAuthentication => 'Аутентификация OTP';

  @override
  String enterOtpSentTo(String mobile) {
    return 'Введите OTP, отправленный на $mobile';
  }

  @override
  String get verifyOtp => 'Проверить OTP';

  @override
  String get invalidOtpTryAgain => 'Неверный OTP. Повторите попытку.';

  @override
  String get faceIdAuthenticationTitle => 'Аутентификация Face ID';

  @override
  String get authenticateToContinue => 'Аутентифицируйтесь для продолжения';

  @override
  String get deviceBiometricsVerified => 'Биометрия устройства подтверждена';

  @override
  String get biometricsFailedOrCanceled => 'Биометрия не удалась или отменена';

  @override
  String get biometricsError => 'Ошибка биометрии:';

  @override
  String get useDeviceFaceId => 'Использовать Face ID устройства';

  @override
  String get useBiometricForSecurity =>
      'Использовать биометрическую аутентификацию для безопасности';

  @override
  String get welcome => 'Добро пожаловать';

  @override
  String get emergencyAlerts => 'Экстренные оповещения';

  @override
  String helloVerified(String name) {
    return 'Привет, $name, вы подтверждены!';
  }

  @override
  String get quickActions => 'Быстрые действия';

  @override
  String get sendEmergencyAlert => 'Отправить экстренное оповещение';

  @override
  String get emergencyAlertSent => 'Экстренное оповещение отправлено';

  @override
  String get captureGoodsPhoto =>
      'Сфотографировать груз (Обнаружение мошенничества)';

  @override
  String get openGoodsCapture => 'Открыть захват груза';

  @override
  String get submitFeedback => 'Отправить отзыв';

  @override
  String get feedbackSubmitted => 'Отзыв отправлен';

  @override
  String get enterMobile => 'Пожалуйста, введите ваш номер мобильного телефона';

  @override
  String get driver => 'Водитель';

  @override
  String get noAccountFoundPleaseSignUp =>
      'Аккаунт не найден. Пожалуйста, зарегистрируйтесь сначала.';

  @override
  String get loginServerError => 'Ошибка входа из-за проблемы с сервером';

  @override
  String get loginError => 'Ошибка входа';

  @override
  String get returningDriverLogin => 'Вход для возвращающегося водителя';

  @override
  String get emergencyPetrolFill => 'Заправка топлива';

  @override
  String get emergencyTrafficAhead => 'Пробка впереди';

  @override
  String get emergencyMachineRepair => 'Ремонт машины';

  @override
  String get emergencyClimaticConditions => 'Климатические условия';

  @override
  String get emergencyOther => 'Другая чрезвычайная ситуация';

  @override
  String get goodsPhotoCaptured => 'Фото товаров сделано';

  @override
  String get voiceNoteSaved => 'Голосовая заметка сохранена';

  @override
  String get emergencyAlertFailed => 'Аварийное оповещение не удалось';

  @override
  String get emergencyAlertError => 'Ошибка аварийного оповещения';

  @override
  String get emergencyAlertsTitle => 'Аварийные оповещения';

  @override
  String helloDriver(Object driverName) {
    return 'Привет, $driverName, добро пожаловать!';
  }

  @override
  String get emailLabel => 'Электронная почта';

  @override
  String get sendAlert => 'Отправить оповещение';

  @override
  String get stopVoiceNote => 'Остановить голосовую заметку';

  @override
  String get recordVoiceNote => 'Записать голосовую заметку';
}
