import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/navigation_drawer/dafaults/defaults.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  final pages = [
    const Center(
      child: Text('Inbox'),
    ),
    const Center(
      child: Text('Starred'),
    ),
    const Center(
      child: Text('Sent'),
    ),
    const Center(
      child: Text('Drafts'),
    ),
    const Center(
      child: Text('Trash'),
    ),
    const Center(
      child: Text('Spam'),
    ),
  ];

  var indexClicked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("Bottom Navigation"),
      ),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[100],
        type: BottomNavigationBarType.shifting,
        //with shifting, gotta set a backgroundColor for each BottomNavigationBarItem and comment out the backgroundColor for BottomNavigationBar
        //type: BottomNavigationBarType.shifting,
        elevation: 60,
        selectedItemColor: Defaults.drawerItemSelectedColor,
        unselectedItemColor: Defaults.drawerItemColor,
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
        BottomNavigationBarItem(
            icon: Icon(Defaults.drawerItemIcon[0]),
            label: Defaults.drawerItemText[0]),
        BottomNavigationBarItem(
            icon: Icon(Defaults.drawerItemIcon[1]),
            label: Defaults.drawerItemText[1]),
        BottomNavigationBarItem(
            icon: Icon(Defaults.drawerItemIcon[2]),
            label: Defaults.drawerItemText[2]),
        BottomNavigationBarItem(
            icon: Icon(Defaults.drawerItemIcon[3]),
            label: Defaults.drawerItemText[3]),
        BottomNavigationBarItem(
            icon: Icon(Defaults.drawerItemIcon[4]),
            label: Defaults.drawerItemText[4]),
        /* BottomNavigationBarItem(
            icon: Icon(Defaults.drawerItemIcon[5]),
            label: Defaults.drawerItemText[5]), */
      ]),
    );
  }
}
