import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/navigation_drawer/dafaults/defaults.dart';
import 'package:flutter_tuts/app/tutorial_sessions/navigation_drawer/widgets/app_drawer_header.dart';
import 'package:flutter_tuts/app/tutorial_sessions/navigation_drawer/widgets/app_drawer_tile.dart';
import 'package:google_fonts/google_fonts.dart';

var indexClicked = 0;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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

  VoidCallback updateState(int index) {
    return () {
      setState(() {
        indexClicked = index;
      });
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: const Text('Navigation Bar Tutorial'),
        backgroundColor: Defaults.drawerItemSelectedColor,
      ),
      body: pages[indexClicked],
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppDrawerHeader(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  AppDrawerTile(
                    index: 0,
                    onTap: updateState(0),
                  ),
                  AppDrawerTile(
                    index: 1,
                    onTap: updateState(1),
                  ),
                  AppDrawerTile(
                    index: 2,
                    onTap: updateState(2),
                  ),
                  AppDrawerTile(
                    index: 3,
                    onTap: updateState(3),
                  ),
                  AppDrawerTile(
                    index: 4,
                    onTap: updateState(4),
                  ),
                  AppDrawerTile(
                    index: 5,
                    onTap: updateState(5),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: Defaults.drawerItemColor,
                    indent: 3,
                    endIndent: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                    'SaxxCorp',
                    style: GoogleFonts.sanchez(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Defaults.drawerItemSelectedColor),
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                    'Version 1.0.0',
                    style: GoogleFonts.sanchez(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontSize: 12,
                        color: Defaults.drawerItemColor),
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: Defaults.drawerItemColor,
                    indent: 3,
                    endIndent: 3,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
