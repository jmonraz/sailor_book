import 'package:flutter/material.dart';

class InputFormColumn extends StatelessWidget {
  final List<Widget> inputFormChildren;

  const InputFormColumn({super.key, required this.inputFormChildren});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: inputFormChildren,
    );
  }
}
