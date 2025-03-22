import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/pages/main_index_page.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/routes.dart';

class MainRoute extends StatelessWidget {
  const MainRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteManager.mainIndex,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}