import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/routes/routes.dart';

class MainIndexPage extends StatefulWidget {
  const MainIndexPage({super.key});

  @override
  State<MainIndexPage> createState() => _MainIndexPageState();
}

class _MainIndexPageState extends State<MainIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text("Main Route Page"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              onPressed: (){
                Navigator.of(context).pushNamed(RouteManager.secondRoutePage);
              }, 
              child: const Text('Go to Second Page')),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              onPressed: (){
                Navigator.of(context).pushNamed(RouteManager.lastRoutePage);
              }, 
              child: const Text('Go to Last Page'))
          ],
        ),
      ),
    );
  }
}