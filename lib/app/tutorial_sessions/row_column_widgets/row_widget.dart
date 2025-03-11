import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            //to change order of children
            textDirection: TextDirection.ltr,
            children: [
              Container(
                width: 80,
                height: 40,
                color: Colors.black,
              ),
              Container(
                width: 80,
                height: 40,
                color: Colors.yellow,
              ),
              Container(
                width: 80,
                height: 40,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}