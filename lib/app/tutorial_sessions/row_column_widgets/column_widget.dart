import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            //to change order of children
            //verticalDirection: VerticalDirection.up,
            children: [
              Container(
                width: 100,
                height: 40,
                color: Colors.black,
              ),
              Container(
                width: 100,
                height: 40,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 40,
                color: Colors.green,
              ),
              const SizedBox(height: 20,),
              const Row(
                textBaseline: TextBaseline.alphabetic,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text('US\$',style: TextStyle(fontSize: 15),),
                  Text('.............................'),
                  Text('\$3000',style: TextStyle(fontSize: 30),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}