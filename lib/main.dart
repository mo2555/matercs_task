import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/app/effects_app.dart';
import 'package:fk_task/core/helper/app_init_helper.dart';
import 'package:fk_task/core/helper/provider_helper.dart';
import 'package:fk_task/translations/codegen_loader.g.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await AppInitHelper.initApp();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale(
          'en',
        ),
        Locale(
          'ar',
        ),
      ],
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale(
        'en',
      ),
      startLocale: const Locale(
        'en',
      ),
      child: MultiProvider(
        providers: ControllersHelper.controllers,
        child: FkTaskApp(),
      ),
    ),
  );
}
