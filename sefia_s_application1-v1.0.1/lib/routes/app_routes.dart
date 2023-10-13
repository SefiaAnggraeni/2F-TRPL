import 'package:flutter/material.dart';
import 'package:sefia_s_application1/presentation/iphone_14_plus_one_screen/iphone_14_plus_one_screen.dart';
import 'package:sefia_s_application1/presentation/iphone_14_plus_two_screen/iphone_14_plus_two_screen.dart';
import 'package:sefia_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone14PlusOneScreen = '/iphone_14_plus_one_screen';

  static const String iphone14PlusTwoScreen = '/iphone_14_plus_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone14PlusOneScreen: (context) => Iphone14PlusOneScreen(),
    iphone14PlusTwoScreen: (context) => Iphone14PlusTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
