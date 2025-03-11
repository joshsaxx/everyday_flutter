import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
        child: ListTile(
          leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 158, 5),
                  borderRadius: BorderRadius.circular(16)),
              child: const Icon(Icons.person)),
          title: Text("Josh Annan", style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold),),
          subtitle: Text("Edit profile", style: GoogleFonts.montserrat(fontSize: 12)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,),
        ),
      ),
    );
  }
}
