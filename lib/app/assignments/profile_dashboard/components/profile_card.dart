import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              leading: const Icon(Icons.menu),
              actions: const [
                Icon(Icons.more_vert_outlined)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile_image.jpg') ,),
          ),
          const Text("Josh Annan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800, color: Color.fromARGB(255, 8, 123, 218)),),
          const Text("Mobile App Developer",style: TextStyle(fontWeight: FontWeight.w500)),
    
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Text("\$8900", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 8, 123, 218))),
                    SizedBox(height: 5,),
                    Text("Income", style: TextStyle(fontSize: 11))
                  ],
                ),
                Container(
                  color: Colors.black,
                  width: 2,
                  height: 40,
                ),
                const Column(
                  children: [
                    Text("\$5500", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 8, 123, 218))),
                    SizedBox(height: 5,),
                    Text("Expenses", style: TextStyle(fontSize: 11))
                  ],
                ),
                Container(
                  color: Colors.black,
                  width: 2,
                  height: 40,
                ),
                const Column(
                  children: [
                    Text("\$890", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 8, 123, 218))),
                    SizedBox(height: 5,),
                    Text("Loan",style: TextStyle(fontSize: 11))
                  ],
                )
              ],
            ),
          )
    
        ],
      ),
    );
  }
}