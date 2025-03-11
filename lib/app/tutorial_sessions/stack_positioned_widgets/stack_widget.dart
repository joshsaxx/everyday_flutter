import 'package:flutter/material.dart';

class StackWidgetScreen extends StatelessWidget {
  const StackWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.purple,
            ),
          ),
          const Positioned(
            top: 200,
            //from the left
            left: 50,
            child: Icon(
              Icons.check,
              size: 50,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
