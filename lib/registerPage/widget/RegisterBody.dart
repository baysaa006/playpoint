import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';

class registerBody extends StatefulWidget {
  registerBody({Key? key}) : super(key: key);

  @override
  State<registerBody> createState() => _registerBodyState();
}

class _registerBodyState extends State<registerBody> {
  final emailController = TextEditingController();
  String ner = '';
  String ovog = '';
  String password = '';
  num nas = 0;
  String hvis = '';
  num utas = 0;
  bool isPasswordVisBle = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            child: MaterialButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          const Text(
            'Бүртгүүлэх',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 28,
              fontStyle: FontStyle.normal,
            ),
          )
        ],
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
      const SizedBox(
        height: 10,
      ),
      Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Flexible(
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Нэр',
              labelStyle: TextStyle(color: mPrimaryTextColor),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: mMainColor,
                    width: 1,
                  )),
            )),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Овог',
              labelStyle: TextStyle(color: mPrimaryTextColor),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: mMainColor,
                    width: 1,
                  )),
            )),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Мэйл хаяг',
            labelStyle: TextStyle(color: mPrimaryTextColor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: mMainColor,
                  width: 1,
                )),
          )),
      const SizedBox(
        height: 10,
      ),
      Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Flexible(
            child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Нас',
                  labelStyle: TextStyle(color: mPrimaryTextColor),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: mMainColor,
                        width: 1,
                      )),
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Хүйс',
              labelStyle: TextStyle(color: mPrimaryTextColor),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: mMainColor,
                    width: 1,
                  )),
            )),
          ),
        ],
      ),
      const SizedBox(height: 10),
      TextField(
          obscureText: isPasswordVisBle,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: isPasswordVisBle
                    ? Icon(
                        Icons.visibility_off,
                        color: mPrimaryTextColor,
                      )
                    : Icon(
                        Icons.visibility,
                        color: mPrimaryTextColor,
                      ),
                onPressed: () => setState(
                      () => isPasswordVisBle = !isPasswordVisBle,
                    )),
            labelText: 'Нууц үг',
            labelStyle: TextStyle(color: mPrimaryTextColor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: mMainColor,
                  width: 1,
                )),
          )),
      const SizedBox(height: 10),
      TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: 'Утасны дугаар',
          labelStyle: TextStyle(color: mPrimaryTextColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: mMainColor,
                width: 1,
              )),
        ),
      ),
    ]);
  }
}
