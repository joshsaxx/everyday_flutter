import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    super.key,
    required this.controller,
    this.hint,
    required this.keyboardType
  });

  final TextEditingController controller;
  final String? hint;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
     controller: controller,
     keyboardType: keyboardType,
     //obscureText: true,
     cursorColor: Colors.blue,
     style: const TextStyle(
       color: Colors.black
     ),
     decoration:  InputDecoration(
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue
        )
      ),
      //enabledBorder-for when it's not selected
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          //color: Colors.black
          color: Colors.blue
        )
      ),
       border: const OutlineInputBorder(),
       labelText: '$hint',
       labelStyle: const TextStyle(
         color: Colors.blue
       )
     ),
                  );
  }
}