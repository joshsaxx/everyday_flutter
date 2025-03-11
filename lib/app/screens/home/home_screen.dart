import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/screens/home/components/schools/school_list.dart';
import 'package:flutter_tuts/models/products.dart';

class HomeScreen extends StatelessWidget {
  final ProductModel? productModel;
  const HomeScreen({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 211, 211),
      appBar: AppBar(),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 20,top: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(width: 5,),
                      Text("Favorite Schools")
                    ],
                  ),
                ),
                SchoolList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

