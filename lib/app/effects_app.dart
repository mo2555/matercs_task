
import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/core/routing/app_router.dart';
import 'package:fk_task/core/services/navigator/navigator_service.dart';
import 'package:fk_task/core/themes/dart_theme.dart';
import 'package:fk_task/core/themes/light_theme.dart';
import 'package:fk_task/core/utils/app_constants.dart';
import 'package:fk_task/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

class FkTaskApp extends StatelessWidget {
  static const FkTaskApp instance = FkTaskApp._();

  const FkTaskApp._();

  factory FkTaskApp() => FkTaskApp.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigatorService.navigatorKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: AppConstants.appName,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute:AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.splashView,
    );
  }
}
