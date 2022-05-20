import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/homePage/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = const Duration(seconds: 4);

    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) {
          return const HomeScreen();
        }),
        (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      (Image.asset(
        "assets/images/screen.png",
        height: 500,
      )),
      SpinKitDoubleBounce(
        color: mMainColor,
        size: 80,
      ),
    ]));
  }
}
