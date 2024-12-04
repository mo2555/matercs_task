import 'package:fk_task/core/services/navigator/navigator_service.dart';
import 'package:flutter/material.dart';

extension SizeExtension on num {
  SizedBox get verticalSpace => NavigatorService.getContext() != null
      ? SizedBox(
          height: MediaQuery.sizeOf(NavigatorService.getContext()!).height *
              (this / 100))
      : const SizedBox(
          height: 0,
        );

  SizedBox get horizontalSpace => NavigatorService.getContext() != null
      ? SizedBox(
          width: MediaQuery.sizeOf(NavigatorService.getContext()!).width *
              (this / 100))
      : const SizedBox(
          width: 0,
        );

  double get h => NavigatorService.getContext() != null
      ? MediaQuery.sizeOf(NavigatorService.getContext()!).height * (this / 100)
      : 0;

  double get w => NavigatorService.getContext() != null
      ? MediaQuery.sizeOf(NavigatorService.getContext()!).width * (this / 100)
      : 0;
}
