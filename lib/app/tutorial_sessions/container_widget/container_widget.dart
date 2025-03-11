import 'package:flutter/material.dart';

class ContainerWidgetScreen extends StatelessWidget {
  const ContainerWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.centerRight,
          height: 360,
          width: 360,
          decoration: BoxDecoration(
              color: Colors.red[700],
              //shape: BoxShape.circle
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          padding: const EdgeInsets.all(20.0),
          child: const Text(
            "Hello ",
            //textAlign: TextAlign.center,
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
