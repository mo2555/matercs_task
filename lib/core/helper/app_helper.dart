
import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/core/utils/app_colors.dart';
import 'package:fk_task/core/utils/app_exceptions.dart';
import 'package:fk_task/translations/locale_keys.g.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppHelper {
  static Future<void> showToast({
    required String message,
    ToastGravity gravity = ToastGravity.CENTER,
  }) async {
    await Fluttertoast.showToast(
      msg: message,
      gravity: gravity,
      textColor: AppColors.whiteColor,
      backgroundColor: AppColors.primaryColor,
    );
  }

  static Future<void> copy(String text) async {
    await Clipboard.setData(
      ClipboardData(
        text: text,
      ),
    );
    AppExceptions.success(
      LocaleKeys.copied.tr(),
    );
  }


  static Map<String, String> getHeader() {
    return {
      "Accept": "application/json",
    };
  }
  static String setNumbers(num number, {bool fraction = false}) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(fraction ? 1 : 0)} M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(fraction ? 1 : 0)} K';
    }

    return number.toStringAsFixed(fraction ? 1 : 0);
  }


}
