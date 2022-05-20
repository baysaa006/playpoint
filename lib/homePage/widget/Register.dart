// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:playpoint/registerPage/registerPage.dart';

class Register extends StatelessWidget {
  Register({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
        color: Colors.white,
        onPressed: () => showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            context: context,
            builder: (context) => registerPage()),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          width: double.infinity,
          child: const Text(
            'Бүртгүүлэх',
            style: TextStyle(fontFamily: 'Roboto-Medium', fontSize: 22),
          ),
        ),
      ),
    );
  }
}
