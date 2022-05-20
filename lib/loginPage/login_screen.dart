import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/loginPage/widget/InputForm.dart';
import 'package:playpoint/loginPage/widget/Loginbutton.dart';
import 'package:playpoint/loginPage/widget/Registerbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        shrinkWrap: true,
        reverse: true,
        children: [
          Image.asset(
            "assets/images/screen.png",
            height: 230,
          ),
          const InputForm(),
          const SizedBox(
            height: 80,
          ),
          const Loginbutton(),
          const SizedBox(
            height: 15,
          ),
          Registerbutton(context)
        ].reversed.toList(),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: mGroungColor,
      elevation: 0,
    );
  }
}
