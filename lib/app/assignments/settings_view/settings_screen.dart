import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/assignments/settings_view/components/models/menu_model.dart';
import 'package:flutter_tuts/app/assignments/settings_view/components/widgets/bottom_nav_widget.dart';
import 'package:flutter_tuts/app/assignments/settings_view/components/widgets/menu_list_tile_widget.dart';
import 'package:flutter_tuts/app/assignments/settings_view/components/widgets/profile_avatar_widget.dart';
import 'package:flutter_tuts/app/assignments/settings_view/components/widgets/promotion_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: GoogleFonts.montserrat(
              fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200]),
                child: const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Icon(
                    Icons.settings,
                    size: 14,
                  ),
                )),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ProfileAvatarWidget(),
    
          const SizedBox(
            height: 10,
          ),
    
          const PromotionWidget(),
    
          const SizedBox(
            height: 10,
          ),
    
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: menuOptions.length,
                itemBuilder: (context, index) {
                  var menuOption = menuOptions[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 5, left: 15, right: 15),
                    child: MenuListTileWigdet(menuModel: menuOption),
                  );
                }),
          ),
          
          const BottomNavTab()
        ],
      ),
    );
  }
}


