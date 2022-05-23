import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:playpoint/registerPage/registerPage.dart';

Container Registerbutton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    child: Center(
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
              text: 'Та бүртгүүлэх бол',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto-Medium',
                  fontSize: 16)),
          TextSpan(
            text: ' энд дарна уу',
            style: const TextStyle(
                color: Colors.yellow, fontFamily: 'Roboto-Bold', fontSize: 16),
            recognizer: TapGestureRecognizer()
              ..onTap = () => showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  context: context,
                  builder: (context) => const registerPage()),
          )
        ]),
      ),
    ),
  );
}
