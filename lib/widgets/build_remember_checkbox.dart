import 'package:flutter/material.dart';

class RememberMeCheckbox extends StatefulWidget {
  @override
  State<RememberMeCheckbox> createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  bool? _isRememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _isRememberMe,
              onChanged: (newValue) {
                print(newValue);
                setState(() {
                  _isRememberMe = newValue;
                });
              },
            ),
          ),
          Text('Remember Me')
        ],
      ),
    );
  }
}
