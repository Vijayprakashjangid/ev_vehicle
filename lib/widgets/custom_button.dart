import 'package:flutter/material.dart';

import '../utils/color.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(fontSize: 17),
          ),

          style: ElevatedButton.styleFrom(
              primary: buttonColor,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: const BorderSide(color: buttonColor),
              )

          ),
        ),
      );

  }
}