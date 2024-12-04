import 'package:fk_task/core/utils/app_colors.dart';
import 'package:fk_task/core/utils/app_styles.dart';
import 'package:fk_task/core/utils/font_sizes.dart';
import 'package:flutter/material.dart';

ThemeData getDarkTheme() => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: AppColors.materialPrimaryColor,
      scaffoldBackgroundColor: AppColors.blackColor,
      appBarTheme: AppBarTheme(
        color: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.whiteColor),
        titleTextStyle: AppStyles.getBoldStyle(
          color: AppColors.whiteColor,
          fontSize: FontSizes.s20,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: AppStyles.getBoldStyle(
          color: AppColors.whiteColor,
          fontSize: FontSizes.s36,
        ),
        displayMedium: AppStyles.getBoldStyle(
          fontSize: FontSizes.s30,
          color: AppColors.primaryColor,
        ),
        bodyLarge: AppStyles.getRegularStyle(
          fontSize: FontSizes.s16,
          color: AppColors.white70Color,
        ),
        bodyMedium: AppStyles.getRegularStyle(
          fontSize: FontSizes.s14,
          color: AppColors.white60Color,
        ),
        bodySmall: AppStyles.getBoldStyle(
          fontSize: FontSizes.s16,
          color: AppColors.error,
        ),
      ),
    );
