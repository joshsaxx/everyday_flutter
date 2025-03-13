import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/drawer.jpg"))),
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const CircleAvatar(
            radius: 42,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Josh Saxx',
              style: GoogleFonts.sanchez(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 5,
          ),
          Text('josh@saxx.com',
              style: GoogleFonts.sanchez(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}