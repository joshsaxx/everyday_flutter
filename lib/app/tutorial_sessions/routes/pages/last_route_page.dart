import 'package:flutter/material.dart';

class LastRoutePage extends StatefulWidget {
  const LastRoutePage({super.key});

  @override
  State<LastRoutePage> createState() => _LastRoutePageState();
}

class _LastRoutePageState extends State<LastRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text("Last Route Page"),
      ),

    );
  }
}