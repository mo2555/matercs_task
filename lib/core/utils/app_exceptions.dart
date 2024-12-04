import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/core/extensions/context_extension.dart';
import 'package:fk_task/core/helper/app_helper.dart';
import 'package:fk_task/core/routing/app_router.dart';
import 'package:fk_task/core/services/cache/hive_service.dart';
import 'package:fk_task/core/services/navigator/navigator_service.dart';
import 'package:fk_task/core/utils/app_constants.dart';
import 'package:fk_task/features/splash/presentation/views/splash_view.dart';
import 'package:fk_task/translations/locale_keys.g.dart';

abstract class AppExceptions {
  static networkException() {
    AppHelper.showToast(
      message: LocaleKeys.network_error.tr(),
    );
  }

  static updateException([String? message]) {}

  static unAuthException([String? message]) {
    unExpectedException(message);
    HiveService().clear(AppConstants.appBox);

    NavigatorService.getContext()!.pushAndRemoveUtils(
      AppRoutes.splashView,
    );
  }

  static unExpectedException([String? message]) {
    AppHelper.showToast(
      message: message ?? LocaleKeys.unexpected_error.tr(),
    );
  }

  static success(String message) {
    AppHelper.showToast(
      message: message,
    );
  }
}
