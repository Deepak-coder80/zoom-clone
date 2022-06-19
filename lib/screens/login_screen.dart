import 'package:flutter/material.dart';
import 'package:zoom_clone_tutorial/auth/authMethod.dart';
import 'package:zoom_clone_tutorial/utils/customButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //create object for authMethod class
    final AuthMethod _authMethod = AuthMethod();
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
          CustomButton(
              text: 'Log in',
              //google sign in
              onPressed: () async {
                //get the return value of signInWithGoogle function
                bool res = await _authMethod.signInWithGoogle(context);
                //check the value of res
                if (res) {
                  //if res is true navigate to Home screen
                  Navigator.pushNamed(context, '/home');
                }
              }),
        ],
      ),
    );
  }
}
