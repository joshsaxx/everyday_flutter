import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/pages/last_route_page.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/pages/main_index_page.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/pages/second_route_page.dart';

class RouteManager {
  static const String mainIndex = '/';
  static const String secondRoutePage = '/secondRoutePage';
  static const String lastRoutePage = '/lastRoutePage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainIndex:
        return MaterialPageRoute(builder: (context) => const MainIndexPage());

      case secondRoutePage:
        return MaterialPageRoute(builder: (context) => const SecondRoutePage());

      case lastRoutePage:
        return MaterialPageRoute(builder: (context) => const LastRoutePage());

      default:
      throw const FormatException("Oops!! Route not found.");
    }
  }
}
