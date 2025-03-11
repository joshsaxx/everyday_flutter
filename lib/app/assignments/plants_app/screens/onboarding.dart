import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: GoogleFonts.montserrat(),
                ),
              ),
            ),
          ),
          Positioned(
            top: 95,
            left: 30,
            right: 30,
            child: Image.asset("assets/images/normal_plant.png"),
          ),
          Positioned(
            top: 440,
            left: 190,
            child: Center(
              child: Row(
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
          ),
          Positioned(
            top: 480,
            left: 90,
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
          Positioned(
            top: 630,
            left: 170,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: const Color.fromARGB(209, 75, 146, 44)
              ),
              child: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_forward,size: 50,color: Colors.white,)),
            ),
          )


        ],
      ),
    );
  }
}
