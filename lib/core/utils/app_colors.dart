import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryColor = Color(0xff6200ea); // Purple
  static const Color secondaryColor = Color(0xff03dac6); // Teal

  // Background Colors
  static const Color lightBackgroundColor = Colors.white;
  static const Color darkBackgroundColor = Color(0xff121212);

  // Text Colors
  static const Color lightTextColor = Colors.black87;
  static const Color darkTextColor = Colors.white70;

  // Other Colors
  static const Color transparent = Colors.transparent;
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  // Neutral Colors
  static const Color white70Color = Colors.white70;
  static const Color white60Color = Colors.white60;
  static const Color black45Color = Colors.black45;
  static const Color black54Color = Colors.black54;
  static const Color greyColor = Color(0xFF6B7280); // Medium grey
  static const Color lightGreyColor = Color(0xFFF3F4F6); // Very light grey

  // Status Colors
  static const Color success = Color(0xFF00C48C); // Green
  static const Color error = Color(0xFFFF5A5F); // Red
  static const Color warning = Color(0xFFFFC107); // Yellow


  // Material Primary Swatch
  static Map<int, Color> materialColorMap = {
    50: const Color(0xFFE3F2FD),
    100: const Color(0xFFBBDEFB),
    200: const Color(0xFF90CAF9),
    300: const Color(0xFF64B5F6),
    400: const Color(0xFF42A5F5),
    500: const Color(0xFF2196F3),
    600: const Color(0xFF1E88E5),
    700: const Color(0xFF1976D2),
    800: const Color(0xFF1565C0),
    900: const Color(0xFF0D47A1),
  };

  static MaterialColor materialPrimaryColor =
  MaterialColor(primaryColor.value, materialColorMap);
}
