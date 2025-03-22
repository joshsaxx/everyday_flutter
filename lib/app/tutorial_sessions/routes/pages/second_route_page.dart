import 'package:flutter/material.dart';

class SecondRoutePage extends StatefulWidget {
  const SecondRoutePage({super.key});

  @override
  State<SecondRoutePage> createState() => _SecondRoutePageState();
}

class _SecondRoutePageState extends State<SecondRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //remove <- button added when using .push
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[300],
        title: const Text("Second Route Page"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[400],
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            )
          ),
          onPressed: (){
            Navigator.pop(context);
          }, 
          child: const Text('Go back to Main Page')),
      ),

    );
  }
}