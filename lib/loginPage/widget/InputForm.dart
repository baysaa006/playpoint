import 'package:flutter/material.dart';
import 'package:playpoint/loginPage/widget/InputTextField.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        children: <Widget>[
          InputTextField(
            label: 'Нэвтрэх нэр',
            onChange: (valeu) {},
            password: false,
            icon: const Icon(
              Icons.person_outline_sharp,
              color: Colors.white,
            ),
          ),
          InputTextField(
            label: 'Нууц үг',
            onChange: (valeu) {},
            password: true,
            icon: const Icon(
              Icons.key,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
