// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;
import 'package:fk_task/translations/locale_keys.g.dart';

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ar = {
    LocaleKeys.copied: "تم النسخ",
    LocaleKeys.network_error:
        "الرجاء التحقق من اتصالك بالشبكة ومحاولة مرة أخرى",
    LocaleKeys.unexpected_error: "خطأ غير متوقع",
    LocaleKeys.please_check_your_email:
        "من فضلك تحقق من البريد الالكترونى الخاص بك",
    LocaleKeys.please_check_your_password:
        "من فضلك تحقق من كلمة المرور الخاصه بك",
    LocaleKeys.send_time_out_please_try_again_later:
        "يرجى إعادة المحاولة لاحقًا.",
    LocaleKeys.receive_time_out_please_try_again_later:
        "يرجى المحاولة مرة أخرى فى وقت لاحق.",
    LocaleKeys.connection_error_please_try_again_later:
        "خطأ فى الاتصال، يرجى المحاولة مرة أخرى لاحقًا.",
    LocaleKeys.request_has_been_cancelled_please_try_again_later:
        "تم إلغاء الطلب، يرجى المحاولة مرة أخرى لاحقًا.",
    LocaleKeys.opps_you_need_to_login_again:
        "عذرًا، تحتاج إلى تسجيل الدخول مرة أخرى",
    LocaleKeys.opps_an_unexpected_error_occurred_please_try_again_later:
        "عفوًا، حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى لاحقًا",
    LocaleKeys.password_must_have_at_least_8_char:
        "يجب أن تحتوى كلمة المرور على الأقل ٨ أحرف",
    LocaleKeys.password_must_have_at_least_1_capital_char:
        "يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل",
    LocaleKeys.password_must_have_at_least_1_small_char:
        "يجب أن تحتوى كلمة المرور على حرف صغير واحد على الأقل",
    LocaleKeys.password_must_have_at_least_1_special_char:
        "يجب أن تحتوى كلمة المرور على علامة خاصة واحدة على الأقل",
    LocaleKeys.this_field_must_not_empty: "هذا الحقل لا يجب أن يكون فارغ",
    LocaleKeys.please_write_valid_email:
        "من فضلك اكتب البريد الالكتروني بطريقة صحيحة",
    LocaleKeys.security_description:
        "لا يمكنك المتابعة لأحد الأسباب التالية:\n1 - استخدام VPN\n2 - استخدام محاكي أو جهاز محاكاة\n3 - استخدام جهاز موبايل في وضع التصحيح",
    LocaleKeys.no_data:"لا يوجد بيانات"
  };

  static const Map<String, dynamic> en = {
    LocaleKeys.copied: "Copied",
    LocaleKeys.network_error:
        "Please check your network connection and try again",
    LocaleKeys.unexpected_error: "Unexpected error",
    LocaleKeys.please_check_your_email: "Please check your email",
    LocaleKeys.please_check_your_password: "Please check your password",
    LocaleKeys.send_time_out_please_try_again_later: "Please try again later.",
    LocaleKeys.receive_time_out_please_try_again_later:
        "Please try again later.",
    LocaleKeys.connection_error_please_try_again_later:
        "Connection error, please try again later.",
    LocaleKeys.request_has_been_cancelled_please_try_again_later:
        "The request has been cancelled, please try again later.",
    LocaleKeys.opps_you_need_to_login_again: "Oops, you need to log in again",
    LocaleKeys.opps_an_unexpected_error_occurred_please_try_again_later:
        "Oops, an unexpected error occurred. Please try again later",
    LocaleKeys.password_must_have_at_least_8_char:
        "Password must have at least 8 characters",
    LocaleKeys.password_must_have_at_least_1_capital_char:
        "Password must contain at least one uppercase letter",
    LocaleKeys.password_must_have_at_least_1_small_char:
        "Password must contain at least one lowercase letter",
    LocaleKeys.password_must_have_at_least_1_special_char:
        "Password must contain at least one special character",
    LocaleKeys.this_field_must_not_empty: "This field must not be empty",
    LocaleKeys.please_write_valid_email: "Please enter a valid email address",
    LocaleKeys.security_description:
        "You can not resume for one of this reasons:\n1 - Using VPN\n2 - Using Emulator or Simulator\n3 - Using mobile that enable debug mode",
    LocaleKeys.no_data:"No data here."
  };

  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en
  };
}
