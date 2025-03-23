import 'package:flutter/material.dart';

class LastRoutePage extends StatefulWidget {
  final String name;

  const LastRoutePage({super.key,required this.name});

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
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[400],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
          onPressed: (){
            Navigator.pop(context, 'Hey folks!');
        }, 
        //widget.name cos name is not found in the state class of LastPageRoute
        child: Text('Hi ${widget.name}. Go back to Main Page')),
      ),

    );
  }
}