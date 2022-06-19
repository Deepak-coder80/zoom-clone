import 'package:flutter/material.dart';
import './colors.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          minimumSize: const Size(
            double.infinity,
            38,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
