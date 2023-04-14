import 'package:book_manager_app/constants.dart';
import 'package:book_manager_app/widgets/background_container.dart';
import 'package:book_manager_app/widgets/primary_button.dart';
import 'package:book_manager_app/widgets/text_input_form.dart';
import 'package:book_manager_app/widgets/input_fields_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameTextEditingController =
      TextEditingController();
  final TextEditingController lastnameTextEditingController =
      TextEditingController();
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();
  final TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: BackgroundContainer(
            containerChild: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, top: 50, bottom: 0),
                  child: Column(
                    children: [
                      Column(
                        children: const [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('images/sailor_moon_avatar.jpg'),
                          ),
                          Gap(15),
                          Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: kBodyColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                                fontFamily: 'Rubik'),
                          ),
                        ],
                      ),
                      Gap(30),
                      Column(
                        children: [
                          IconInputField(
                              hintText: 'Name',
                              prefixIcon: Icons.person,
                              textInputType: TextInputType.text,
                              textEditingController: nameTextEditingController,
                              obscureText: false),
                          const Gap(10),
                          IconInputField(
                              hintText: 'Surname',
                              prefixIcon: Icons.person,
                              textInputType: TextInputType.text,
                              textEditingController:
                                  lastnameTextEditingController,
                              obscureText: false),
                          const Gap(10),
                          IconInputField(
                              hintText: 'Email',
                              prefixIcon: Icons.email,
                              textInputType: TextInputType.emailAddress,
                              textEditingController: emailTextEditingController,
                              obscureText: false),
                          const Gap(10),
                          IconInputField(
                              hintText: 'Password',
                              prefixIcon: Icons.lock,
                              textInputType: TextInputType.text,
                              textEditingController:
                                  passwordTextEditingController,
                              obscureText: true),
                          const Gap(10),
                          IconInputField(
                              hintText: 'Confirm Password',
                              prefixIcon: Icons.lock,
                              textInputType: TextInputType.text,
                              textEditingController:
                                  confirmPasswordTextEditingController,
                              obscureText: true),
                        ],
                      ),
                      const Gap(30),
                      PrimaryButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          buttonColor: kSecondaryColor,
                          buttonText: 'SIGN UP',
                          textColor: Colors.white)
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
