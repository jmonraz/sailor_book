import 'package:book_manager_app/constants.dart';
import 'package:book_manager_app/screens/home_screen.dart';
import 'package:book_manager_app/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:gap/gap.dart';

import '../widgets/text_input_form.dart';
import '../widgets/background_container.dart';
import '../widgets/logo_asset.dart';
import '../widgets/primary_button.dart';
import '../widgets/new_account_text.dart';

class LoginScreenV3 extends StatelessWidget {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  LoginScreenV3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: BackgroundContainer(
            containerChild: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 0, top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const LogoAsset(),
                      const Gap(40),
                      Column(
                        children: [
                          IconInputField(
                              hintText: 'Email',
                              prefixIcon: Icons.email,
                              textInputType: TextInputType.text,
                              textEditingController: emailTextEditingController,
                              obscureText: false),
                          const Gap(15),
                          IconInputField(
                              hintText: 'Password',
                              prefixIcon: Icons.lock,
                              textInputType: TextInputType.text,
                              textEditingController:
                                  passwordTextEditingController,
                              obscureText: true),
                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Forgot Password?'),
                            ),
                          ),
                          const Gap(15),
                          PrimaryButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                              buttonColor: kSecondaryColor,
                              buttonText: 'LOG IN',
                              textColor: Colors.white),
                          const Gap(10),
                          NewAccountText(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
