import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/models/settings_data.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    print('Building Settings');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //used to avoid rebuilding the entire page cos it identifies a part of the UI to be rebuilt
            Consumer<SettingsData>(
              builder: (context, value, child) {
                return Text(
                  'Choose color scheme for AppBar',
                  style: TextStyle(
                      color: context.watch<SettingsData>().appBarColor),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                //read is used inside a function cos "listen" is automatically false
                context.read<SettingsData>().appBarColor = Colors.blue;
              },
              child: const Text('Blue'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                context.read<SettingsData>().appBarColor = Colors.purple;
              },
              child: const Text('Purple'),
            ),
          ],
        ),
      ),
    );
  }
}
