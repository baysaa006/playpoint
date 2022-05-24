import 'package:flutter/material.dart';

class qrScannerScreen extends StatefulWidget {
  qrScannerScreen({Key? key}) : super(key: key);

  @override
  State<qrScannerScreen> createState() => _qrScannerScreenState();
}

class _qrScannerScreenState extends State<qrScannerScreen> {
  String qrCode = 'unkown';
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('qrscanner'));
  }
}
