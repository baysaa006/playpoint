import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';

class registerBody extends StatelessWidget {
  registerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FlatButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Icon(
          Icons.arrow_back,
        ),
      ),
      const Text(
        'Бүртгүүлэх',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 28,
          fontStyle: FontStyle.normal,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        'Та өөрийн хувийн мэдээллээ оруулна уу.',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12,
          color: mRegisterTextColor,
        ),
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Нэр',
              labelStyle: TextStyle(color: mPrimaryTextColor),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2)),
            )),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Овог',
              labelStyle: TextStyle(color: mPrimaryTextColor),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2)),
            )),
          ),
        ],
      ),
      TextField(
          decoration: InputDecoration(
        labelText: 'Мэйл хаяг',
        labelStyle: TextStyle(color: mPrimaryTextColor),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2)),
      )),
      Row(
        children: <Widget>[
          Expanded(
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Нас',
              labelStyle: TextStyle(color: mPrimaryTextColor),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2)),
            )),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Хүйс',
              labelStyle: TextStyle(color: mPrimaryTextColor),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2)),
            )),
          ),
        ],
      ),
      TextField(
          decoration: InputDecoration(
        labelText: 'Нууц үг',
        labelStyle: TextStyle(color: mPrimaryTextColor),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2)),
      )),
      TextField(
          decoration: InputDecoration(
        labelText: 'Утасны дугаар',
        labelStyle: TextStyle(color: mPrimaryTextColor),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2)),
      )),
    ]);
  }
}
