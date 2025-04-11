import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/shared_pref/models/theme_settings.dart';
import 'package:provider/provider.dart';

class SharedPrefSettings extends StatelessWidget {
  const SharedPrefSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const Card(
            child: ListTile(
              title: Text('Theme'),
            ),
          ),
          //Wrap with Consumer so we can listen for "value"
          Consumer<ThemeSettings>(
            builder: (context, value, child) {
              return SwitchListTile(
              activeColor: Colors.white,
              activeTrackColor: Colors.blue[400],
              title: const Text('Dark Mode'),
              //value.darkTheme cos that's the default value which in here == false
              value: value.darkTheme,
              onChanged: (newValue) {
                value.toggleTheme();
              },
            );
            },
          
          )
        ],
      ),
    );
  }
}
