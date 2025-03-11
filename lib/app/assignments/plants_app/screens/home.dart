import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_tuts/app/assignments/plants_app/components/common_widgets/plant_grid_widget.dart';
import 'package:flutter_tuts/app/assignments/plants_app/screens/details_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantsHomePage extends StatelessWidget {
  const PlantsHomePage({super.key});

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
        title: Text(
          "Search Products",
          style: GoogleFonts.montserrat(fontSize: 15),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          right: 16,
        ),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 11,
                          ),
                          Text("Plants")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Icon(Icons.menu_open),
                  ),
                ),
              )
            ],
          ),

          Expanded(
              child: GridView.builder(
                itemBuilder: (context, index) =>  Padding(
                  padding: const EdgeInsets.only(left: 16.0,top: 8,),
                  child: GestureDetector(child: const PlantGridWidget(), onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const PlantDetailScreen()));

                  },),
                ),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 190,mainAxisExtent: 200),
                //gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                ),
            ),

          
        ]),
      ),
    );
  }
}
