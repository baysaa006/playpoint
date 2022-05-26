import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/loginPage/login_screen.dart';

class ProfileListItem extends StatelessWidget {
  final String medeelel;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    Key? key,
    required this.text,
    this.hasNavigation = false,
    required this.medeelel,
  }) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(width: 15),
          Text(
            this.text,
            style: const TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.5,
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Text(
            this.medeelel,
            style: TextStyle(
              color: mPrimaryTextColor,
              fontFamily: 'Roboto',
            ),
          ),
          if (this.hasNavigation)
            IconButton(
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
                icon: const Icon(Icons.keyboard_arrow_right_outlined)),
        ],
      ),
    );
  }
}
