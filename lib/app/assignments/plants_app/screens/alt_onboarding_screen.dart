import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/assignments/plants_app/screens/details_screen.dart';
import 'package:flutter_tuts/app/assignments/plants_app/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantsOnboardingScreen extends StatelessWidget {
  const PlantsOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 11.0,top: 15),
                child: TextButton(onPressed: (){},child: Text("Skip",style: GoogleFonts.montserrat(color: Colors.black))),
              ),
            ],
          ),

         Center(
           child: Image.asset("assets/images/normal_plant.png"),
         ),

         Padding(
           padding: const EdgeInsets.all(11.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 4,
                      width: 11,
                      decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 4,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 4,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ],
                ),
         ),

              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Center(
                  child: Text.rich(
                    TextSpan(children:[
                      TextSpan(
                        text: "Enjoy your\nLife with ",
                        style: GoogleFonts.montserrat(fontSize: 30)
                      ),
                      TextSpan(
                        text: "Plants",
                        style: GoogleFonts.montserrat(fontSize: 30,fontWeight: FontWeight.bold)
                      )
                    ] )
                            )),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35.0,bottom: 35),
                child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: const Color(0xFF76984B),
                ),
                child: IconButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const PlantsHomePage()));

                },icon: const Icon(Icons.arrow_forward,size: 50,color: Colors.white,)),
                            ),
              ),
        ],

      ),
    );
  }
}