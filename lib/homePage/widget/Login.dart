// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/loginPage/login_screen.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36)),
              color: mMainColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: const Text(
                  'Нэвтрэх',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto-Medium',
                      fontSize: 22),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
