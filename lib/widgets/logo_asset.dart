import 'package:flutter/material.dart';

import 'package:book_manager_app/constants.dart';

import 'package:gap/gap.dart';

class LogoAsset extends StatelessWidget {
  const LogoAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Image(
          image: AssetImage('./images/logo128.png'),
        ),
        Gap(15),
        Text(
          'SailorBook',
          style: TextStyle(
              color: kBodyColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rubik'),
        ),
      ],
    );
  }
}
