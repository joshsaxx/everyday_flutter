import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDialogSnackBarWidgetScreen extends StatefulWidget {
  const MyDialogSnackBarWidgetScreen({super.key});

  @override
  State<MyDialogSnackBarWidgetScreen> createState() =>
      _MyDialogSnackBarWidgetScreenState();
}

class _MyDialogSnackBarWidgetScreenState
    extends State<MyDialogSnackBarWidgetScreen> {
  final snackBar = SnackBar(
    content: const Text('Successfully saved'),
    backgroundColor: Colors.blue[400],
    duration: const Duration(seconds: 2),
    action: SnackBarAction(
      label: 'Undo',
      textColor: Colors.white,
      onPressed: () {},
    ),
  );

  String location = 'None selected Yet';

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  String bottomSheetValue = 'Nothing Selected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.white),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Save'),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.white),
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Delete Entry'),
                        content: const Text(
                            'Are you sure you want to delete the entry?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('No')),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Yes')),
                        ],
                      );
                    });
              },
              child: const Text('Delete'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.grey[600],
                  foregroundColor: Colors.white),
              onPressed: () async {
                final String loc = await showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Choose your location'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context,'Location: South Africa');

                          },
                          child: const Text('South Africa'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                             Navigator.pop(context,'Location: United States');
                          },
                          child: const Text('United States'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context,'Location: Ghana');
                          },
                          child: const Text('Ghana'),
                        )
                      ],
                    );
                  },
                );
                setState(() {
                  location = loc;
                });
              },
              child: const Text('Choose Location'),
            ),
            Text(location),

             ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.white),
              onPressed: () {

                scaffoldKey.currentState?.showBottomSheet((context){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
                    ),
                    height: 120,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text('Are you ready ?',style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 25
                            ),),
                            OverflowBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                TextButton(onPressed: (){
                                  setState(() {
                                    bottomSheetValue = 'Yes Selected';
                                  });
                                  Navigator.pop(context);
                                }, child: Text('Yes',style: GoogleFonts.montserrat(
                                  fontSize: 21,
                                  color: Colors.white
                                ),
                                ),
                                ),
                                TextButton(onPressed: (){
                                  setState(() {
                                    bottomSheetValue = 'No Selected';
                                  });
                                  Navigator.pop(context);
                                }, child: Text('No',style: GoogleFonts.montserrat(
                                  fontSize: 21,
                                  color: Colors.white
                                ),
                                )
                                )
                              ],

                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });

              },
              child: const Text('Bottom Sheet'),
            ),

            Text(bottomSheetValue)
          ],
        ),
      ),
    );
  }
}
