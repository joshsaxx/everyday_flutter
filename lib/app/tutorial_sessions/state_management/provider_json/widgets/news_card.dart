import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsCard extends StatelessWidget {
  final Map<String,dynamic> map;
  const NewsCard({super.key,required this.map});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Padding(
          padding:  const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${map['firstName']}',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20),),
              const SizedBox(height: 10,),
              Text('${map['msisdn']}',style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,fontSize: 15),),
              const SizedBox(height: 10,),
              Text('${map['email']}',style: GoogleFonts.montserrat(fontStyle: FontStyle.italic,fontSize: 15,),),

            ],
          ),
        ),
      
      ),
    );
  }
}