import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/shared_pref/models/theme_settings.dart';
import 'package:flutter_tuts/app/tutorial_sessions/shared_pref/pages/settings.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/models/settings_data.dart';
import 'package:provider/provider.dart';

class SettingsMain extends StatelessWidget {
  const SettingsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeSettings(),
        )
      ],
      child: Consumer<ThemeSettings>(
        builder: (context, value, child) {
          return value.doneLoading ? MaterialApp(
            //if value.dartkTheme is false, then lightTheme else vice-versa
            theme: value.darkTheme ? darkTheme : lightTheme,
            home: const SharedPrefSettings(),
          ): LoadingScreen(context: context,);
        },
      ),
    );
  }
}


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.context});

  final BuildContext context;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getDate();
  }

void getDate() async {
  await Future.delayed(
    const Duration(seconds: 4)
    );
    widget.context.read<ThemeSettings>().doneLoading = true;
}
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/drawer.jpg'),
              //CircularProgressIndicator(),
              const Text('Loading... Please Wait...')
            ],
          ),
        ),
      ),
    );
  }
}
