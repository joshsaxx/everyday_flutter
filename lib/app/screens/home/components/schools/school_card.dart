import 'package:flutter/material.dart';
import 'package:flutter_tuts/models/schools.dart';

class SchoolCard extends StatelessWidget {
  final SchoolModel? schoolModel;
  final VoidCallback? onTap;
  const SchoolCard({super.key,this.onTap,this.schoolModel});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white, 
      borderRadius: BorderRadius.circular(16),
    child: ListTile(
      minLeadingWidth: 0,
      leading: const Icon(Icons.school,size: 42,),
      trailing: Stack(
        children: [
          Container(
            height: 40,
            //child: Icon(Icons.star_border_outlined),
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              //borderRadius: BorderRadius.all(Radius.circular(5))
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),topRight: Radius.circular(16))
            ),
    
          ),
          Positioned(child: Icon(Icons.star_border_outlined),right: -1,)
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      title: Text(schoolModel?.schoolName ?? ""),
      onTap: onTap,
      )
    );
  }
}