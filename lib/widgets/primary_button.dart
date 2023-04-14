import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  final VoidCallback onPressed;

  const PrimaryButton(
      {super.key,
      required this.buttonColor,
      required this.buttonText,
      required this.textColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
