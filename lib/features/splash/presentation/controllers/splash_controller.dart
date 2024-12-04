import 'package:fk_task/core/extensions/context_extension.dart';
import 'package:fk_task/core/routing/app_router.dart';
import 'package:fk_task/core/services/navigator/navigator_service.dart';
import 'package:fk_task/features/orders/presentation/controllers/orders_controller.dart';
import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier {
  void initSplash(OrdersController orders) {
    orders.getOrders().then((_) {
      NavigatorService.getContext()!.pushReplacement(AppRoutes.homeView);
    });
  }
}
