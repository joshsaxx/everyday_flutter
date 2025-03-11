import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/assignments/settings_view/components/models/menu_model.dart';
import 'package:google_fonts/google_fonts.dart';


class MenuListTileWigdet extends StatelessWidget {
  final MenuModel? menuModel;
  const MenuListTileWigdet({
    super.key,
    this.menuModel
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[200], 
      borderRadius: BorderRadius.circular(16),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(menuModel?.icon,size: 25,),
        ),
        title: Text(menuModel?.title ?? "" ,style:  GoogleFonts.montserrat(fontSize: 13)),
        trailing: const Icon(Icons.arrow_forward_ios,size: 16,),
      
      ),
    );
  }
}