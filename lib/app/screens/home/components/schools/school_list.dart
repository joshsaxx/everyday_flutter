import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/screens/home/components/schools/school_card.dart';
import 'package:flutter_tuts/models/schools.dart';

class SchoolList extends StatelessWidget {
  const SchoolList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      itemCount: schools.length,
      shrinkWrap: true,
      itemBuilder: (context,index){
        var school = schools[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: SchoolCard(
            schoolModel: school,
            onTap: (){
              
            }

            ),
        );
    });
  }
}