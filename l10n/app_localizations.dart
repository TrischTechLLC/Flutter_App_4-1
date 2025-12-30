import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('gu'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('kn'),
    Locale('ml'),
    Locale('mr'),
    Locale('pt'),
    Locale('ru'),
    Locale('ta'),
    Locale('te'),
    Locale('ur')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'FLEETHUAL'**
  String get appTitle;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'“Drive Smart. Drive Safe.”'**
  String get tagline;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @driverSignUp.
  ///
  /// In en, this message translates to:
  /// **'Driver sign up'**
  String get driverSignUp;

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get logIn;

  /// No description provided for @loginComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Log In feature coming soon'**
  String get loginComingSoon;

  /// No description provided for @serverConnected.
  ///
  /// In en, this message translates to:
  /// **'Server connected'**
  String get serverConnected;

  /// No description provided for @serverOffline.
  ///
  /// In en, this message translates to:
  /// **'Server offline'**
  String get serverOffline;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get lastName;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @mobilePrimary.
  ///
  /// In en, this message translates to:
  /// **'Mobile number (primary)'**
  String get mobilePrimary;

  /// No description provided for @numberLinkedToWhatsapp.
  ///
  /// In en, this message translates to:
  /// **'This number is linked to WhatsApp'**
  String get numberLinkedToWhatsapp;

  /// No description provided for @altWhatsappNumber.
  ///
  /// In en, this message translates to:
  /// **'Alternate WhatsApp mobile number'**
  String get altWhatsappNumber;

  /// No description provided for @truckId.
  ///
  /// In en, this message translates to:
  /// **'Truck ID'**
  String get truckId;

  /// No description provided for @emailOptional.
  ///
  /// In en, this message translates to:
  /// **'Email (optional)'**
  String get emailOptional;

  /// No description provided for @driverSummary.
  ///
  /// In en, this message translates to:
  /// **'Driver summary'**
  String get driverSummary;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @truckIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Truck ID'**
  String get truckIdLabel;

  /// No description provided for @mobileLabel.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobileLabel;

  /// No description provided for @addressLabel.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get addressLabel;

  /// No description provided for @licenseOnFileSample.
  ///
  /// In en, this message translates to:
  /// **'License on file (sample)'**
  String get licenseOnFileSample;

  /// No description provided for @provideWhatsappNumber.
  ///
  /// In en, this message translates to:
  /// **'Please provide a WhatsApp-linked mobile number.'**
  String get provideWhatsappNumber;

  /// No description provided for @signupFailedTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Signup failed. Please try again.'**
  String get signupFailedTryAgain;

  /// No description provided for @signupServerError.
  ///
  /// In en, this message translates to:
  /// **'Signup server error:'**
  String get signupServerError;

  /// No description provided for @signupError.
  ///
  /// In en, this message translates to:
  /// **'Signup error:'**
  String get signupError;

  /// No description provided for @otpAuthentication.
  ///
  /// In en, this message translates to:
  /// **'OTP Authentication'**
  String get otpAuthentication;

  /// No description provided for @enterOtpSentTo.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP sent to {mobile}'**
  String enterOtpSentTo(String mobile);

  /// No description provided for @verifyOtp.
  ///
  /// In en, this message translates to:
  /// **'Verify OTP'**
  String get verifyOtp;

  /// No description provided for @invalidOtpTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP. Please try again.'**
  String get invalidOtpTryAgain;

  /// No description provided for @faceIdAuthenticationTitle.
  ///
  /// In en, this message translates to:
  /// **'Face ID authentication'**
  String get faceIdAuthenticationTitle;

  /// No description provided for @authenticateToContinue.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to continue'**
  String get authenticateToContinue;

  /// No description provided for @deviceBiometricsVerified.
  ///
  /// In en, this message translates to:
  /// **'Device biometrics verified'**
  String get deviceBiometricsVerified;

  /// No description provided for @biometricsFailedOrCanceled.
  ///
  /// In en, this message translates to:
  /// **'Biometrics failed or canceled'**
  String get biometricsFailedOrCanceled;

  /// No description provided for @biometricsError.
  ///
  /// In en, this message translates to:
  /// **'Biometrics error:'**
  String get biometricsError;

  /// No description provided for @useDeviceFaceId.
  ///
  /// In en, this message translates to:
  /// **'Use device Face ID'**
  String get useDeviceFaceId;

  /// No description provided for @useBiometricForSecurity.
  ///
  /// In en, this message translates to:
  /// **'Use biometric authentication for security'**
  String get useBiometricForSecurity;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @emergencyAlerts.
  ///
  /// In en, this message translates to:
  /// **'Emergency Alerts'**
  String get emergencyAlerts;

  /// No description provided for @helloVerified.
  ///
  /// In en, this message translates to:
  /// **'Hello {name}, you are verified!'**
  String helloVerified(String name);

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quickActions;

  /// No description provided for @sendEmergencyAlert.
  ///
  /// In en, this message translates to:
  /// **'Send Emergency Alert'**
  String get sendEmergencyAlert;

  /// No description provided for @emergencyAlertSent.
  ///
  /// In en, this message translates to:
  /// **'Emergency alert sent'**
  String get emergencyAlertSent;

  /// No description provided for @captureGoodsPhoto.
  ///
  /// In en, this message translates to:
  /// **'Capture Goods Photo (Fraud Detection)'**
  String get captureGoodsPhoto;

  /// No description provided for @openGoodsCapture.
  ///
  /// In en, this message translates to:
  /// **'Open goods capture'**
  String get openGoodsCapture;

  /// No description provided for @submitFeedback.
  ///
  /// In en, this message translates to:
  /// **'Submit Feedback'**
  String get submitFeedback;

  /// No description provided for @feedbackSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Feedback submitted'**
  String get feedbackSubmitted;

  /// No description provided for @enterMobile.
  ///
  /// In en, this message translates to:
  /// **'Please enter your mobile number'**
  String get enterMobile;

  /// No description provided for @driver.
  ///
  /// In en, this message translates to:
  /// **'Driver'**
  String get driver;

  /// No description provided for @noAccountFoundPleaseSignUp.
  ///
  /// In en, this message translates to:
  /// **'No account found. Please sign up first.'**
  String get noAccountFoundPleaseSignUp;

  /// No description provided for @loginServerError.
  ///
  /// In en, this message translates to:
  /// **'Login failed due to server error'**
  String get loginServerError;

  /// No description provided for @loginError.
  ///
  /// In en, this message translates to:
  /// **'Login error'**
  String get loginError;

  /// No description provided for @returningDriverLogin.
  ///
  /// In en, this message translates to:
  /// **'Returning driver login'**
  String get returningDriverLogin;

  /// No description provided for @emergencyPetrolFill.
  ///
  /// In en, this message translates to:
  /// **'Petrol fill'**
  String get emergencyPetrolFill;

  /// No description provided for @emergencyTrafficAhead.
  ///
  /// In en, this message translates to:
  /// **'Traffic ahead'**
  String get emergencyTrafficAhead;

  /// No description provided for @emergencyMachineRepair.
  ///
  /// In en, this message translates to:
  /// **'Machine repair'**
  String get emergencyMachineRepair;

  /// No description provided for @emergencyClimaticConditions.
  ///
  /// In en, this message translates to:
  /// **'Climatic conditions'**
  String get emergencyClimaticConditions;

  /// No description provided for @emergencyOther.
  ///
  /// In en, this message translates to:
  /// **'Other emergency'**
  String get emergencyOther;

  /// No description provided for @goodsPhotoCaptured.
  ///
  /// In en, this message translates to:
  /// **'Goods photo captured'**
  String get goodsPhotoCaptured;

  /// No description provided for @voiceNoteSaved.
  ///
  /// In en, this message translates to:
  /// **'Voice note saved'**
  String get voiceNoteSaved;

  /// No description provided for @emergencyAlertFailed.
  ///
  /// In en, this message translates to:
  /// **'Emergency alert failed'**
  String get emergencyAlertFailed;

  /// No description provided for @emergencyAlertError.
  ///
  /// In en, this message translates to:
  /// **'Emergency alert error'**
  String get emergencyAlertError;

  /// No description provided for @emergencyAlertsTitle.
  ///
  /// In en, this message translates to:
  /// **'Emergency Alerts'**
  String get emergencyAlertsTitle;

  /// No description provided for @helloDriver.
  ///
  /// In en, this message translates to:
  /// **'Hello {driverName}, welcome!'**
  String helloDriver(Object driverName);

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @sendAlert.
  ///
  /// In en, this message translates to:
  /// **'Send Alert'**
  String get sendAlert;

  /// No description provided for @stopVoiceNote.
  ///
  /// In en, this message translates to:
  /// **'Stop voice note'**
  String get stopVoiceNote;

  /// No description provided for @recordVoiceNote.
  ///
  /// In en, this message translates to:
  /// **'Record voice note'**
  String get recordVoiceNote;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'bn',
        'de',
        'en',
        'es',
        'fr',
        'gu',
        'hi',
        'id',
        'it',
        'kn',
        'ml',
        'mr',
        'pt',
        'ru',
        'ta',
        'te',
        'ur'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'kn':
      return AppLocalizationsKn();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'ur':
      return AppLocalizationsUr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
