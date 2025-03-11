import 'package:flutter/material.dart';

class ListViewWidgetScreen extends StatelessWidget {
  const ListViewWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = [
      ListTile(
        leading: const Text(
          'J',
          style: TextStyle(
            fontSize: 40, 
            fontWeight: FontWeight.w800),
        ),
        title: const Text(
          'John Rambo',
        ),
        subtitle: Text('Never runs out of bullets!'),
        trailing: const Text(
          'Invincible',
          style: TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.w800),
        ),
      ),
      ListTile(
        leading: const Text(
          'J',
          style: TextStyle(
            fontSize: 40, 
            fontWeight: FontWeight.w800),
        ),
        title: const Text(
          'John Rambo',
        ),
        subtitle: Text('Never runs out of bullets!'),
        trailing: const Text(
          'Invincible',
          style: TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.w800),
        ),
      ),
      ListTile(
        leading: const Text(
          'J',
          style: TextStyle(
            fontSize: 40, 
            fontWeight: FontWeight.w800),
        ),
        title: const Text(
          'John Rambo',
        ),
        subtitle: Text('Never runs out of bullets!'),
        trailing: const Text(
          'Invincible',
          style: TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.w800),
        ),
      ),
      ListTile(
        leading: const Text(
          'J',
          style: TextStyle(
            fontSize: 40, 
            fontWeight: FontWeight.w800),
        ),
        title: const Text(
          'John Rambo',
        ),
        subtitle: Text('Never runs out of bullets!'),
        trailing: const Text(
          'Invincible',
          style: TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.w800),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView in Flutter",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            // child: ListView(
            //   //handles the direction of the children in a row form
            //   //scrollDirection: Axis.horizontal,
            //   padding: EdgeInsets.all(8) ,
            //   children: const [
            //     Text(
            //       'Jay',
            //       style: TextStyle(fontSize: 20, color: Colors.blue),
            //     ),
            //     Text(
            //       'Nay',
            //       style: TextStyle(fontSize: 20, color: Colors.blue),
            //     ),
            //     Text(
            //       'May',
            //       style: TextStyle(fontSize: 20, color: Colors.blue),
            //     ),

            //   ],
            // ),
            child: ListView.builder(
                itemCount: widgets.length,
                itemBuilder: (context, index) {
                  return widgets[index];
                }),
          ),
          const Text(
            'Hello World',
            style: TextStyle(fontSize: 70, color: Colors.black),
          )
        ],
      ),
    );
  }
}
