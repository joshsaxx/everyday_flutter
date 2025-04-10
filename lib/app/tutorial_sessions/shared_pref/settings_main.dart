import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/shared_pref/models/theme_settings.dart';
import 'package:flutter_tuts/app/tutorial_sessions/shared_pref/pages/settings.dart';

class SettingsMain extends StatelessWidget {
  const SettingsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: const SharedPrefSettings(),
    );
  }
}