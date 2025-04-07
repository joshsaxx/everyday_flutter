import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/models/settings_data.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/models/user.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/routes/routes.dart';
import 'package:provider/provider.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      appBar: AppBar(
        //context.watch cos it listens and read doesn't
        backgroundColor: context.watch<SettingsData>().appBarColor,
        automaticallyImplyLeading: false,
        title: const Text('Main Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.settingsPage);
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<User>(
              builder: (context, value, child) {
                //value.username cos value is now an instance of User thanks to consumer
                return Text(
                'Welcome, ${value.username}',
                style: const TextStyle(fontSize: 24),
              );
              }
              
            ),
          ],
        ),
      ),
    );
  }
}
