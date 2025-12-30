// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'FLEETHUAL';

  @override
  String get tagline => '“স্মার্ট চালান। নিরাপদ চালান।”';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন করুন';

  @override
  String get driverSignUp => 'ড্রাইভার সাইন আপ';

  @override
  String get logIn => 'লগ ইন';

  @override
  String get loginComingSoon => 'লগ ইন ফিচার শীঘ্রই আসছে';

  @override
  String get serverConnected => 'সার্ভার সংযুক্ত';

  @override
  String get serverOffline => 'সার্ভার অফলাইন';

  @override
  String get firstName => 'প্রথম নাম';

  @override
  String get lastName => 'শেষ নাম';

  @override
  String get address => 'ঠিকানা';

  @override
  String get mobilePrimary => 'মোবাইল নম্বর (প্রধান)';

  @override
  String get numberLinkedToWhatsapp => 'এই নম্বরটি WhatsApp এর সাথে যুক্ত';

  @override
  String get altWhatsappNumber => 'বিকল্প WhatsApp নম্বর';

  @override
  String get truckId => 'ট্রাক আইডি';

  @override
  String get emailOptional => 'ইমেইল (ঐচ্ছিক)';

  @override
  String get driverSummary => 'ড্রাইভার সারাংশ';

  @override
  String get nameLabel => 'নাম';

  @override
  String get truckIdLabel => 'ট্রাক আইডি';

  @override
  String get mobileLabel => 'মোবাইল';

  @override
  String get addressLabel => 'ঠিকানা';

  @override
  String get licenseOnFileSample => 'লাইসেন্স ফাইলে (নমুনা)';

  @override
  String get provideWhatsappNumber =>
      'একটি WhatsApp যুক্ত মোবাইল নম্বর প্রদান করুন।';

  @override
  String get signupFailedTryAgain => 'সাইন আপ ব্যর্থ হয়েছে। আবার চেষ্টা করুন।';

  @override
  String get signupServerError => 'সাইন আপ সার্ভার ত্রুটি:';

  @override
  String get signupError => 'সাইন আপ ত্রুটি:';

  @override
  String get otpAuthentication => 'OTP প্রমাণীকরণ';

  @override
  String enterOtpSentTo(String mobile) {
    return 'OTP প্রবেশ করুন $mobile এ পাঠানো হয়েছে';
  }

  @override
  String get verifyOtp => 'OTP যাচাই করুন';

  @override
  String get invalidOtpTryAgain => 'অবৈধ OTP। আবার চেষ্টা করুন।';

  @override
  String get faceIdAuthenticationTitle => 'Face ID প্রমাণীকরণ';

  @override
  String get authenticateToContinue => 'চালিয়ে যেতে প্রমাণীকরণ করুন';

  @override
  String get deviceBiometricsVerified => 'ডিভাইস বায়োমেট্রিক যাচাই করা হয়েছে';

  @override
  String get biometricsFailedOrCanceled =>
      'বায়োমেট্রিক ব্যর্থ বা বাতিল হয়েছে';

  @override
  String get biometricsError => 'বায়োমেট্রিক ত্রুটি:';

  @override
  String get useDeviceFaceId => 'ডিভাইস Face ID ব্যবহার করুন';

  @override
  String get useBiometricForSecurity =>
      'নিরাপত্তার জন্য বায়োমেট্রিক ব্যবহার করুন';

  @override
  String get welcome => 'স্বাগতম';

  @override
  String get emergencyAlerts => 'জরুরি সতর্কতা';

  @override
  String helloVerified(String name) {
    return 'হ্যালো $name, আপনি যাচাই করা হয়েছে!';
  }

  @override
  String get quickActions => 'দ্রুত ক্রিয়াকলাপ';

  @override
  String get sendEmergencyAlert => 'জরুরি সতর্কতা পাঠান';

  @override
  String get emergencyAlertSent => 'জরুরি সতর্কতা পাঠানো হয়েছে';

  @override
  String get captureGoodsPhoto => 'পণ্য ছবি তুলুন (প্রতারণা সনাক্তকরণ)';

  @override
  String get openGoodsCapture => 'পণ্য ক্যাপচার খুলুন';

  @override
  String get submitFeedback => 'প্রতিক্রিয়া জমা দিন';

  @override
  String get feedbackSubmitted => 'প্রতিক্রিয়া জমা হয়েছে';

  @override
  String get enterMobile => 'আপনার মোবাইল নম্বর লিখুন';

  @override
  String get driver => 'ড্রাইভার';

  @override
  String get noAccountFoundPleaseSignUp =>
      'কোনো অ্যাকাউন্ট পাওয়া যায়নি। প্রথমে সাইন আপ করুন।';

  @override
  String get loginServerError => 'সার্ভার ত্রুটির কারণে লগইন ব্যর্থ হয়েছে';

  @override
  String get loginError => 'লগইন ত্রুটি';

  @override
  String get returningDriverLogin => 'ফিরে আসা ড্রাইভার লগইন';

  @override
  String get emergencyPetrolFill => 'পেট্রোল ভরুন';

  @override
  String get emergencyTrafficAhead => 'সামনে যানজট';

  @override
  String get emergencyMachineRepair => 'মেশিন মেরামত';

  @override
  String get emergencyClimaticConditions => 'আবহাওয়া পরিস্থিতি';

  @override
  String get emergencyOther => 'অন্যান্য জরুরি অবস্থা';

  @override
  String get goodsPhotoCaptured => 'পণ্যের ছবি তোলা হয়েছে';

  @override
  String get voiceNoteSaved => 'ভয়েস নোট সংরক্ষিত হয়েছে';

  @override
  String get emergencyAlertFailed => 'জরুরি সতর্কতা ব্যর্থ হয়েছে';

  @override
  String get emergencyAlertError => 'জরুরি সতর্কতা ত্রুটি';

  @override
  String get emergencyAlertsTitle => 'জরুরি সতর্কতা';

  @override
  String helloDriver(Object driverName) {
    return 'হ্যালো $driverName, স্বাগতম!';
  }

  @override
  String get emailLabel => 'ইমেইল';

  @override
  String get sendAlert => 'সতর্কতা পাঠান';

  @override
  String get stopVoiceNote => 'ভয়েস নোট বন্ধ করুন';

  @override
  String get recordVoiceNote => 'ভয়েস নোট রেকর্ড করুন';
}
