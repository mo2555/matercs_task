import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/core/enums/api_enum.dart';
import 'package:fk_task/translations/locale_keys.g.dart';

extension StringExtension on String {

  AnimationType getAnimationType() {
    if (endsWith('.svga')) {
      return AnimationType.svga;
    } else if (endsWith('.mp4')) {
      return AnimationType.vap;
    }
    return AnimationType.none;
  }

  bool get isEmailValid =>
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(this);

  bool get isPasswordValidLength => RegExp(r".{8,}").hasMatch(this);

  bool get isPasswordValidUpper => RegExp(r"^(?=.*[A-Z]).+$").hasMatch(this);

  bool get isPasswordValidLower => RegExp(r"^(?=.*[a-z]).+$").hasMatch(this);

  bool get isPasswordValidSpecialChar =>
      RegExp(r"^(?=.*[!@#\$%^&*()_+{}\[\]:;<>,.?\/\\]).+$").hasMatch(this);

  String? get passwordValidationMessage {
    String? message;

    if (!isPasswordValidLength) {
      message = LocaleKeys.password_must_have_at_least_8_char.tr();
    } else if (!isPasswordValidUpper) {
      message = LocaleKeys.password_must_have_at_least_1_capital_char.tr();
    } else if (!isPasswordValidLower) {
      message = LocaleKeys.password_must_have_at_least_1_small_char.tr();
    } else if (!isPasswordValidSpecialChar) {
      message = LocaleKeys.password_must_have_at_least_1_special_char.tr();
    }

    return message;
  }

  bool get isPhoneNumberValid => RegExp(r'\d{9,}').hasMatch(this);

  bool get hasLowerCase => RegExp(r'^(?=.*[a-z])').hasMatch(this);

  bool get hasUpperCase => RegExp(r'^(?=.*[A-Z])').hasMatch(this);

  bool get hasNumber => RegExp(r'^(?=.*?[0-9])').hasMatch(this);

  bool get hasSpecialCharacter =>
      RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(this);

  bool get hasMinLength => RegExp(r'^(?=.{8,})').hasMatch(this);
}
