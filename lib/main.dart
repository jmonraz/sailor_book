import 'package:book_manager_app/screens/sign_up.dart';
import 'package:flutter/material.dart';

import './screens/login_screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SailorBook',
      home: LoginScreenV3(),
    );
  }
}
