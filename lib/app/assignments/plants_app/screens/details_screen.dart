import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantDetailScreen extends StatelessWidget {
  const PlantDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined)),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Stack(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 290,
                      height: 290,
                      child: Image.asset("assets/images/jade_plant.png")),
                  Positioned(
                    right: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 250.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 11,
                            width: 4,
                            decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(16)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 4,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Colors.grey[500],
                                borderRadius: BorderRadius.circular(16)),
                          ),
                          const SizedBox(
                            height: 4,
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
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 35.0),
            child: Text(
              "Lucky-jade-plant",
              style: GoogleFonts.montserrat(
                  fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 35.0),
            child: Text(
              "Plants make your life with minimal and happy\nlove the plants more and enjoy life.",
              style: GoogleFonts.montserrat(fontSize: 11),
            ),
          ),

      
          const Spacer(),

          Container(
            width: double.infinity,
            //height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(26),topRight: Radius.circular(26)),
              color: Color(0xFF76984B)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Column(
                      children: [
                        const Icon(Icons.arrow_upward_outlined,size: 35,color: Colors.white,),
                        Text("30cm - 40cm",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500))
                      ],
                    ),
                     Column(
                      children: [
                        const Icon(Icons.thermostat_sharp,size: 35,color: Colors.white,),
                        Text("20\u00B0C - 25\u00B0C",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.gif_box,size: 35,color: Colors.white,),
                        Text("Ceramic Pot",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500),)
                      ],
                    )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Total Price", style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w600)),
                          Text("\$12.99", style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w600))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xFF67864A)
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 7,bottom: 7),
                              child: Text("Add to Cart",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          
          ),
        ],
      ),
    );
  }
}
