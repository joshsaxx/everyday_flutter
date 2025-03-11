import 'package:flutter/material.dart';

class BottomNavTab extends StatelessWidget {
  const BottomNavTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90.0,right: 90,bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(25)
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.home_outlined),
            const Icon(Icons.battery_unknown_outlined),
            const Icon(Icons.note),
            Padding(
              padding: const EdgeInsets.only(top: 8,bottom: 8),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),color: Colors.blue
                ),
                child: const Icon(Icons.person, color: Colors.white,)),
            ),
                      
                      
          ],
        ),
      ),
    );
  }
}