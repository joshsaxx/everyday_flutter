import 'package:flutter/material.dart';

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
          SwitchListTile(
            activeColor: Colors.white,
            activeTrackColor: Colors.blue[400],
            title: const Text('Dark Mode'),
            value: true,
            onChanged: (value) {
              
            },
          )
        ],
      ),
    );
  }
}
