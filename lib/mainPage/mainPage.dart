import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:playpoint/constant.dart';
import 'package:playpoint/mainPage/screen/mainScreen.dart';
import 'package:playpoint/mainPage/screen/qrScannerScreen.dart';
import 'package:playpoint/mainPage/screen/screen.dart';

class mainPage extends StatefulWidget {
  mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  String qrCode = 'unkhown';
  int currentIndex = 0;
  final screens = [mainScreen(), qrScannerScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 40,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white30,
            backgroundColor: mbuttonNav,
            onTap: (index) => setState(() => currentIndex = index),
            currentIndex: currentIndex,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                    icon: const Icon(Icons.qr_code_scanner),
                    onPressed: () => scanQRCode()),
                label: 'qrScanner',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ]),
      ),
    );
  }

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.QR);
      if (!mounted) return;
      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Qr code daxin unshuulna uu';
    }
  }
}
