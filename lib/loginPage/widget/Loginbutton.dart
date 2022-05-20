import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/mainPage/mainPage.dart';

class Loginbutton extends StatelessWidget {
  const Loginbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: mMainColor,
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const mainPage()),
          );
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: const Text(
            'Нэвтрэх',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Roboto-Medium', fontSize: 22),
          ),
        ),
      ),
    );
  }
}
