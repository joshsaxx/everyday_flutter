import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/pages/login.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/pages/main_page.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/pages/settings.dart';


class RouteManager {
  static const String loginPage = '/';
  static const String mainPage = '/mainPage';
  static const String settingsPage = '/settingsPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );

      case mainPage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );

      case settingsPage:
        return MaterialPageRoute(
          builder: (context) => const Settings(),
        );

      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}
