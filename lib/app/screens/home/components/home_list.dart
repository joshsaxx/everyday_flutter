import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/screens/details_screen/details_screen.dart';
import 'package:flutter_tuts/app/screens/home/components/home_card.dart';
import 'package:flutter_tuts/models/products.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      itemCount: products.length,
      itemBuilder: (context,index){
        var product = products[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: HomeCard(
            productModel: product,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> DetailsScreen(productModel: product)));
            }

            ),
        );
    });
  }
}