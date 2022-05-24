import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/registerPage/widget/RegisterBody.dart';

import 'package:playpoint/registerPage/widget/nextButton.dart';

class registerPage extends StatelessWidget {
  const registerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
        child: Scaffold(
          body: ListView(children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: registerBody(),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: nextButton(),
            )
          ]),
        ));
  }
}
