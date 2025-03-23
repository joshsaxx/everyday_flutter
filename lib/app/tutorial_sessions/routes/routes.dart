import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/pages/last_route_page.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/pages/main_index_page.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/pages/second_route_page.dart';

class RouteManager {
  static const String mainIndex = '/';
  static const String secondRoutePage = '/secondRoutePage';
  static const String lastRoutePage = '/lastRoutePage';

  static Route<dynamic> generateRoute(RouteSettings settings) {

    var valuePased;

    if(settings.arguments != null){
      //Map<String,dynamic>--declaring how the map is going to be returned key being String and value a dynamic
      valuePased = settings.arguments as Map<String,dynamic>;
    }

    switch (settings.name) {
      case mainIndex:
        return MaterialPageRoute(builder: (context) => const MainIndexPage());

      case secondRoutePage:
        return MaterialPageRoute(builder: (context) => const SecondRoutePage());

      case lastRoutePage:
        return MaterialPageRoute(builder: (context) => LastRoutePage(
          name: valuePased['name'],
        ));

      default:
      throw const FormatException("Oops!! Route not found.");
    }
  }
}
