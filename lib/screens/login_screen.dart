import 'package:flutter/material.dart';

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

      children: const [
        //Entry Text
        Text(
          'Start or Join Meetings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        //image
        //google sign in button
      ],
    ));
  }
}
