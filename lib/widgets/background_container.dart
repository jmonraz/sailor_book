import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget? containerChild;

  const BackgroundContainer({super.key, this.containerChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0x66FFC8DD),
            Color(0x99FFC8DD),
            Color(0xccFFC8DD),
            Color(0xffFFC8DD)
          ],
        ),
      ),
      child: containerChild,
    );
  }
}
