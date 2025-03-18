import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/textFields/widgets/appTextField_widget.dart';

class MyTextFieldMainPage extends StatefulWidget {
  const MyTextFieldMainPage({super.key});

  @override
  State<MyTextFieldMainPage> createState() => _MyTextFieldMainPageState();
}

class _MyTextFieldMainPageState extends State<MyTextFieldMainPage> {
  String name = 'nothing entered';
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  void initState() {
    super.initState();
//nameController.text = 'John';
  }

  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text('Flutter TextFields'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextFieldWidget(
                  controller: nameController,
                  hint: 'Please Enter Name',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextFieldWidget(
                  controller: numberController,
                  hint: 'Please Enter Number',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.blue[400],
                      foregroundColor: Colors.white),
                  onPressed: () {
                    setState(() {
                      //name = nameController.text;
                      name = '${nameController.text} - ${numberController.text}';
                    });
                  },
                  child: const Text('Submit'),
                ),
                Text(name),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
