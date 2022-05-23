import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';

class forgetSecretPage extends StatelessWidget {
  const forgetSecretPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mGroungColor,
      ),
      body: Column(children: const [
        Text(
          'nuuts vg martsan huudas',
          style: TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}
