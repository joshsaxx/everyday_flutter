import 'package:flutter/material.dart';

class MyAppBarScreen extends StatefulWidget {
  const MyAppBarScreen({super.key});

  @override
  State<MyAppBarScreen> createState() => _MyAppBarScreenState();
}

class _MyAppBarScreenState extends State<MyAppBarScreen> {
  String text = 'None Clicked';
  GlobalKey<ScaffoldState> draweKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        key: draweKey,
        endDrawer: const Drawer(),
        appBar: AppBar(
          foregroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                //text: 'Car Repair',
                icon: Icon(Icons.car_repair),
              ),
              Tab(
                //text: 'Home Repair',
                icon: Icon(Icons.home_repair_service),
              ),
              Tab(
                //text: 'Room Service',
                icon: Icon(Icons.room_service),
              ),

          ],
          ),
          actions: [
            IconButton(
              splashRadius: 30,
              onPressed: (){
                setState(() {
                  text = 'Casting Clicked';
                });
              }, 
              icon: const Icon(Icons.cast),
              ),
              IconButton(
              splashRadius: 30,
              onPressed: (){
                setState(() {
                  text = 'Notifications Clicked';
                });
              }, 
              icon: const Icon(Icons.notifications),
              ),
              IconButton(
              splashRadius: 30,
              onPressed: (){
                setState(() {
                  text = 'Search Clicked';
                });
              }, 
              icon: const Icon(Icons.search),
              ),
              IconButton(
              splashRadius: 30,
              onPressed: (){
                setState(() {
                  draweKey.currentState?.openEndDrawer();
                });
              }, 
              icon: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
              ),
      
          ],
          backgroundColor: Colors.blueGrey[400],
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(image: AssetImage("assets/images/visa.png")),
          ),
          title: const Text("AppBar"),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Car Repair - $text'),
            ),
            Center(
              child: Text('Home Repair - $text'),
            ),
            Center(
              child: Text('Room Service - $text'),
            )
          ]
          ),
      ),
    );
  }
}