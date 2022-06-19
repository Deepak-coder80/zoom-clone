import 'package:flutter/material.dart';

//function
showSnackBar(BuildContext context, String text) {
  //return snackBar
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
