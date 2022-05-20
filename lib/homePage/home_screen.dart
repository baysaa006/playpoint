import 'package:flutter/material.dart';
import 'package:playpoint/homePage/widget/Login.dart';
import 'package:playpoint/homePage/widget/Register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 150,
          ),
          Image.asset(
            "assets/images/screen.png",
          ),
          const SizedBox(
            height: 100,
          ),
          const Login(),
          Register(),
        ],
      )),
    );
  }
}
