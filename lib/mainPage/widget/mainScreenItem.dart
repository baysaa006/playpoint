import 'package:flutter/material.dart';
import 'package:playpoint/mainPage/widget/point.dart';

class mainScreenItem extends StatefulWidget {
  final String medeelel;
  final String text;
  const mainScreenItem(
      {Key? key,
      required this.medeelel,
      required this.text,
      required String description})
      : super(key: key);

  @override
  State<mainScreenItem> createState() => _mainScreenItemState();
}

class _mainScreenItemState extends State<mainScreenItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 30),
      child: Row(
        children: [
          Image.asset('assets/logo/ard.png', width: 40),
          const SizedBox(
            width: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                RichText(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: "Message description",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ]),
              const SizedBox(
                width: 100,
              ),
              point()
            ],
          ),
        ],
      ),
    );
    ;
  }
}
