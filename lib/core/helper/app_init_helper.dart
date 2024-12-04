import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/core/services/di/di.dart';
import 'package:fk_task/core/utils/app_constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class AppInitHelper {
  static initApp() async {
    HttpOverrides.global = MyHttpOverrides();
    await Hive.initFlutter();
    await EasyLocalization.ensureInitialized();
    await Hive.openBox(
      AppConstants.appBox,
    );
    setUp();
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
