import 'package:flutter/material.dart';

class MyDialogSnackBarWidgetScreen extends StatefulWidget {
  const MyDialogSnackBarWidgetScreen({super.key});

  @override
  State<MyDialogSnackBarWidgetScreen> createState() => _MyDialogSnackBarWidgetScreenState();
}

class _MyDialogSnackBarWidgetScreenState extends State<MyDialogSnackBarWidgetScreen> {

  final snackBar =  SnackBar(
    content: const Text('Successfully saved'),
    backgroundColor: Colors.blue[400],
    duration: const Duration(seconds: 2),
    action: SnackBarAction(
      label: 'Undo',
      textColor: Colors.white, 
      onPressed: (){

      },
      ),
    );

    String location = 'None selected Yet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white
              ),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }, 
              child: const Text('Save'),
              ),
              const SizedBox(height: 5,),

              ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                backgroundColor: Colors.red[400],
                foregroundColor: Colors.white
              ),
              onPressed: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: const Text('Delete Entry'),
                      content: const Text('Are you sure you want to delete the entry?'),
                      actions: [
                        TextButton(
                          onPressed: (){
                          Navigator.pop(context);
                        }, 
                        child: const Text('No')),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                        }, 
                        child: const Text('Yes')),
                        
                      ],
                    );
                  }
                  
                  );
              }, 
              child: const Text('Delete'),
              ),

              ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                backgroundColor: Colors.grey[600],
                foregroundColor: Colors.white
              ),
              onPressed: (){
                
              }, 
              child: const Text('Choose Location'),
              ),

              Text(location)
          ],
        ),
      ),
    );
  }
}