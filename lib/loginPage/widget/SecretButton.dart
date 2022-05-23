import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:playpoint/forgetSecretPage/forgetSecretPage.dart';

class secretButton extends StatelessWidget {
  const secretButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: RichText(
            textAlign: TextAlign.end,
            text: TextSpan(
              text: 'Нууц үг ?',
              style: const TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'Roboto-Bold',
                  fontSize: 16),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const forgetSecretPage()),
                  );
                },
            )));
  }
}
