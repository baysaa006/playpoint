import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playpoint/constant.dart';

class formOtp extends StatelessWidget {
  const formOtp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 64,
          width: 64,
          child: TextField(
            onChanged: (value) => {
              if (value.length == 1) {FocusScope.of(context).nextFocus()}
            },
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
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
        ),
        SizedBox(
          height: 64,
          width: 64,
          child: TextField(
            onChanged: (value) => {
              if (value.length == 1) {FocusScope.of(context).nextFocus()}
            },
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
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
        ),
        SizedBox(
          height: 64,
          width: 64,
          child: TextField(
            onChanged: (value) => {
              if (value.length == 1) {FocusScope.of(context).nextFocus()}
            },
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
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
        ),
        SizedBox(
          height: 64,
          width: 64,
          child: TextField(
            onChanged: (value) => {
              if (value.length == 1) {FocusScope.of(context).nextFocus()}
            },
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
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
        ),
      ],
    );
  }
}
