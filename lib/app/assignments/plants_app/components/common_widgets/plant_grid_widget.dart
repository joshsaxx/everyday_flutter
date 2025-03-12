import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantGridWidget extends StatelessWidget {
  const PlantGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      /* width: 170,
      height:200, */
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              width: 100,
              height: 120,
              child: Image.asset("assets/images/normal_plant.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text("Lucky Jade Plant",style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.s,
                children: [
                Expanded(child: Text("\$12.99",style: GoogleFonts.montserrat(fontSize: 11,fontWeight: FontWeight.bold))),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black
                    ),
                    child:  const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(Icons.favorite,color: Colors.white,size: 15,),
                    )),
                )
              ],),
            )
            ],),
          )
          
        ],
      ),
    );
  }
}