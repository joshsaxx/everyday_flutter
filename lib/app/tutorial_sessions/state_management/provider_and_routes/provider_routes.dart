import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/models/settings_data.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/models/user.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/routes/routes.dart';
import 'package:provider/provider.dart';

class ProviderRoutes extends StatelessWidget {
  const ProviderRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SettingsData()),
        ChangeNotifierProvider(create: (context) => User())
      ],
      builder: (context, child) {
        return const MaterialApp(
          initialRoute: RouteManager.loginPage,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
