import 'package:flutter/material.dart';

extension Navigate on BuildContext {
  double topPadding() {
    return MediaQuery.of(this).padding.top;
  }

  push(String route, {arguments}) {
    Navigator.pushNamed(
      this,
      route,
      arguments: arguments,
    );
  }

  pop() => Navigator.of(
        this,
      ).pop();

  pushReplacement(String route, {arguments}) {
    Navigator.pushReplacementNamed(
      this,
      route,
      arguments: arguments,
    );
  }

  pushAndRemoveUtils(String route, {arguments}) {
    Navigator.pushNamedAndRemoveUntil(
      this,
      route,
      arguments: arguments,
      (route) => false,
    );
  }
}
