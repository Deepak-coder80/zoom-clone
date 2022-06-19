import 'package:flutter/material.dart';
import 'package:zoom_clone_tutorial/utils/customButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //make widgets at the center
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          //Entry Text
          const Text(
            'Start or Join Meetings',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //image
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Image.asset("assets/images/onboarding.jpg"),
          ),
          //google sign in button - custom button
         CustomButton(text: 'Log in',onPressed: (){}),
        ],
      ),
    );
  }
}
