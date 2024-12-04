import 'package:fk_task/features/home/presentation/views/home_view.dart';
import 'package:fk_task/features/orders/presentation/views/orders_view.dart';
import 'package:fk_task/features/splash/presentation/controllers/splash_controller.dart';
import 'package:fk_task/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case AppRoutes.splashView:
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider.value(
            value: SplashController(),
            child: const SplashView(),
          ),
          settings: settings,
        );
      case AppRoutes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

abstract class AppRoutes {
  static const String splashView = '/';
  static const String homeView = '/homeView';
}
