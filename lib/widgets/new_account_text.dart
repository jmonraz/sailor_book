import 'package:flutter/material.dart';

import 'package:book_manager_app/constants.dart';

class NewAccountText extends StatelessWidget {
  final VoidCallback onPressed;

  const NewAccountText({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        const Text(
          'Don\'t have an account? ',
          style: TextStyle(
              fontSize: 16,
              color: kBodyColor,
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: () {
            onPressed();
            print('sign up pressed');
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(
                color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
