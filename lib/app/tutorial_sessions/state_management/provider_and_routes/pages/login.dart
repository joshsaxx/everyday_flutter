import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_and_routes/routes/routes.dart';


class Login extends StatefulWidget {
   const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Building Login');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: usernameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please enter your username'),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.mainPage);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
