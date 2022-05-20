import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/registerPage/OTPPage.dart';

class nextButton extends StatelessWidget {
  const nextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      color: mbuttonColor,
      onPressed: () => showModalBottomSheet(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          context: context,
          builder: (context) => const otpPage()),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
        alignment: Alignment.center,
        width: double.infinity,
        child: const Text(
          'Дараагийн',
          style: TextStyle(
              fontFamily: 'Roboto-Medium',
              fontSize: 21.65,
              color: Colors.white),
        ),
      ),
    );
  }
}
