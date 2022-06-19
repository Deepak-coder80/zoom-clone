import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../utils/showSnackBar.dart';
class AuthMethod{
  //firebase auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //function for sign in
  Future<bool> signInWithGoogle(BuildContext context)async{
    bool res = false;
    try {
      //google account access
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      //google account authentication
      final GoogleSignInAuthentication? googleAuth = await googleUser
          ?.authentication;
      //make credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      //sign in with credential and store it as user credential
      final UserCredential userCredential = await _auth.signInWithCredential(
          credential);
      //make user from userCredential
      final User? user = userCredential.user;
      //check null status of user
      if(user!=null){
        //user is not null update the value of res to true
        res = true;
      }

    }on FirebaseAuthException catch(e){
      //show the snackBar of the exception
      showSnackBar(context, e.message!);
      //if there is exception update the value of res to false
      res = false;
    }
    return res;
  }

}