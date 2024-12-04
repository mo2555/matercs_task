import 'package:fk_task/core/shared/loading_widget.dart';
import 'package:fk_task/features/orders/presentation/controllers/orders_controller.dart';
import 'package:fk_task/features/splash/presentation/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<SplashController>()
          .initSplash(context.read<OrdersController>());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoadingWidget(),
    );
  }
}
