import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFabWidgetScreen extends StatefulWidget {
  const MyFabWidgetScreen({super.key});

  @override
  State<MyFabWidgetScreen> createState() => _MyFabWidgetScreenState();
}

class _MyFabWidgetScreenState extends State<MyFabWidgetScreen> {
  String text = 'Nothing clicked';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //FloatingActionButton.extended-allows to have text in FAB like + Save, requires label and icon params
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 10,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            text = 'FAB Clicked';
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(
              height: 40,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                setState(() {
                  text = 'Elevated Button Clicked';
                });
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.save),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Save')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  text = 'TextButton Clicked';
                });
              },
              child: const Text('Ok'),
            ),
            const SizedBox(
              height: 20,
            ),

            //OverflowBar formerly known as ButtonBar
            OverflowBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        text = 'TextButton in ButtonBar Clicked';
                      });
                    },
                    child: const Text('No')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        text = 'ElevatedButton in ButtonBar Clicked';
                      });
                    },
                    child: const Text('Yes'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            MaterialButton(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.grey,
              onPressed: () {
              setState(() {
                text = 'MaterialButton Clicked';
              });
            },
            child:  Text('Enter',style: GoogleFonts.montserrat(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
