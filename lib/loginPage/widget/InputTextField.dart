import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.label,
    required this.onChange,
    this.password = false,
    required this.icon,
    required this.nuuts,
  }) : super(key: key);

  final String label;
  final Function onChange;
  final bool password;
  final Icon icon;
  final Icon nuuts;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: password,
      onChanged: onChange(onChange),
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          prefixIcon: icon,
          labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
          labelText: label,
          suffixIcon: nuuts,
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2))),
    );
  }
}
