import 'package:flutter/material.dart';

class MyStatefulStatelessScreen extends StatelessWidget {
  const MyStatefulStatelessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.blue,
          title: const Text('Stateless and Stateful'),
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to the App',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Buttons(),
              SizedBox(
                height: 20,
              ),
              FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var maleCounter = 0;
  var femaleCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'No. of Males: $maleCounter',
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          'No. of Females: $femaleCounter',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        MyOwnButton(
          buttonText: "Male +",
          onTap: () {
            //setState - rebuilds / refreshes method/state of widget
            setState(() {
              maleCounter++;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        buildMaterialButton()
      ],
    );
  }

  //Button extracted as a method
  MaterialButton buildMaterialButton() {
    return MaterialButton(
        onPressed: () {
          setState(() {
            femaleCounter++;
          });
        },
        height: 50,
        minWidth: 200,
        color: Colors.blue,
        elevation: 10,
        child: const Text(
          'Female +',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      );
  }
}

class MyOwnButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  const MyOwnButton({
    required this.onTap,required this.buttonText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      height: 50,
      minWidth: 200,
      color: Colors.blue,
      elevation: 10,
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_back),
            Text('Developed by Joshsaxx'),
            Icon(Icons.arrow_forward)
          ],
        )
      ],
    );
  }
}
