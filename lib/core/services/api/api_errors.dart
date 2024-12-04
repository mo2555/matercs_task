
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/core/utils/app_exceptions.dart';
import 'package:fk_task/translations/locale_keys.g.dart';


abstract class Failure {
  String msg;
  int? statusCode;

  Failure(
    this.msg, {
    this.statusCode,
  });
}

class ServerFailure extends Failure {
  ServerFailure(
    super.msg, {
    super.statusCode,
  });

  factory ServerFailure.generalException(exception) {
    try {
      if (exception is DioException) {
        log(exception.response!.statusCode.toString());
        return ServerFailure._fromDioException(
          exception,
        );
      }
    } catch (e) {
      return ServerFailure(
        LocaleKeys.opps_an_unexpected_error_occurred_please_try_again_later
            .tr(),
      );
    }
    return ServerFailure(
      exception.toString(),
    );
  }

  factory ServerFailure._fromDioException(DioException exception) {
    log(exception.response!.data.toString());
    switch (exception.type) {
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          LocaleKeys.send_time_out_please_try_again_later.tr(),
            statusCode:
            exception.response?.statusCode,
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          LocaleKeys.receive_time_out_please_try_again_later.tr(),statusCode:
        exception.response?.statusCode,
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          LocaleKeys.connection_error_please_try_again_later.tr(),statusCode:
        exception.response?.statusCode,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          LocaleKeys.request_has_been_cancelled_please_try_again_later.tr(),statusCode:
        exception.response?.statusCode,
        );
      case DioExceptionType.badResponse:
        if (exception.response!.statusCode == 401) {
          AppExceptions.unAuthException(
            LocaleKeys.opps_you_need_to_login_again.tr(),
          );

          return ServerFailure(
            LocaleKeys.opps_you_need_to_login_again.tr(),
            statusCode: 401,
          );
        } else if (exception.response!.data['errors'] != null &&
            exception.response!.data['errors'] is List) {
          return ServerFailure(
            exception.response!.data['errors'].first['message'],statusCode:
          exception.response?.statusCode,
          );
        }
        return ServerFailure(
          LocaleKeys.opps_an_unexpected_error_occurred_please_try_again_later
              .tr(),statusCode:
        exception.response?.statusCode,
        );
      default:
        return ServerFailure(
          LocaleKeys.opps_an_unexpected_error_occurred_please_try_again_later
              .tr(),statusCode:
        exception.response?.statusCode,
        );
    }
  }
}
