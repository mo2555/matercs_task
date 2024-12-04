import 'package:flutter/material.dart';

abstract class NavigatorService{

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


  static BuildContext? getContext() => navigatorKey.currentContext;


}