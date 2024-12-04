

import 'package:fk_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget(
      {super.key, this.color = AppColors.primaryColor, this.size = 100});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: const CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
