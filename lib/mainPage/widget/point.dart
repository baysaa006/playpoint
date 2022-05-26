import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';

class point extends StatefulWidget {
  point({Key? key}) : super(key: key);

  @override
  State<point> createState() => _pointState();
}

class _pointState extends State<point> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '+' + '0' + ' ' + 'P',
        ),
        Text(
          "0" + " " + 'MNT',
          style: TextStyle(color: mPrimaryTextColor, fontSize: 12),
        )
      ],
    );
  }
}
