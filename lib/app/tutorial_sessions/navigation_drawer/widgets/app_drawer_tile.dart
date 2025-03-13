import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/navigation_drawer/dafaults/defaults.dart';
import 'package:flutter_tuts/app/tutorial_sessions/navigation_drawer/main_page.dart';
import 'package:google_fonts/google_fonts.dart';


class AppDrawerTile extends StatelessWidget {
  final VoidCallback onTap;
  final int index;
  const AppDrawerTile({
    required this.onTap,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        selected: indexClicked == index,
        selectedTileColor: Defaults.drawerSelectedTileColor,
        onTap: onTap,
        leading: Icon(
          Defaults.drawerItemIcon[index],
          size: 35,
          color: indexClicked == index
              ? Defaults.drawerItemSelectedColor
              : Defaults.drawerItemColor,
        ),
        title: Text(
          Defaults.drawerItemText[index],
          style: GoogleFonts.sanchez(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: indexClicked == index
                ? Defaults.drawerItemSelectedColor
                : Defaults.drawerItemColor,
          ),
        ),
      ),
    );
  }
}