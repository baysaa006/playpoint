import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/mainPage/mainPage.dart';

class profielScreen extends StatefulWidget {
  profielScreen({Key? key}) : super(key: key);

  @override
  State<profielScreen> createState() => _profielScreenState();
}

class _profielScreenState extends State<profielScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Scaffold(
        body: Column(children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/no-profile.png"),
          )
        ]),
      ),
    );
  }
}
