import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/loginPage/login_screen.dart';

class otpPage extends StatelessWidget {
  const otpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 100),
                Text(
                  'Баталгаажуулах',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 28),
                ),
              ]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Танд мессежээр ирсэн 4-н оронтой кодыг оруулна уу",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  color: Color.fromARGB(255, 54, 69, 90)),
            ),
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            color: mbuttonColor,
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
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
              alignment: Alignment.center,
              width: double.infinity,
              child: const Text(
                'Баталгаажуулах',
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 21.65, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
