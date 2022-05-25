import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:playpoint/constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:playpoint/mainPage/widget/profileScreenItems.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  PickedFile? _imageFile;

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    var profileInfo = Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Хувийн мэдээлэл',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  child: IconButton(
                    color: mMainColor,
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Stack(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    backgroundImage: _imageFile == null
                        ? const AssetImage('assets/images/no-profile.png')
                        : FileImage(File(_imageFile!.path)) as ImageProvider),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: 15,
                      widthFactor: 15,
                      child: IconButton(
                        color: mMainColor,
                        icon: const Icon(Icons.add_box),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: ((builder) => bottomSheet()));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        profileInfo,
      ],
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 50),
          header,
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  color: mPrimaryTextColor,
                  height: 1,
                ),
                ProfileListItem(
                  text: 'Нэр',
                  key: null,
                  medeelel: 'Тэмүүлэн',
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  color: mPrimaryTextColor,
                  height: 1,
                ),
                ProfileListItem(
                  text: 'Нас',
                  medeelel: '23',
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  color: mPrimaryTextColor,
                  height: 1,
                ),
                ProfileListItem(
                  text: 'Хүйс',
                  medeelel: 'Эрэгтэй',
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  color: mPrimaryTextColor,
                  height: 1,
                ),
                ProfileListItem(
                  text: 'Утасны дугаар',
                  medeelel: '8888888',
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  color: mPrimaryTextColor,
                  height: 1,
                ),
                ProfileListItem(
                  text: 'И-мэйл хаяг',
                  medeelel: 'Bat.Dorj9911@gmail.com',
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  color: mPrimaryTextColor,
                  height: 1,
                ),
                ProfileListItem(
                  text: 'Гарах',
                  hasNavigation: true,
                  medeelel: '',
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  color: mPrimaryTextColor,
                  height: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      // width: MediaQuery.of().size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          const Text("Зурагаа сонгоно уу",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 15)),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Camera'),
                  IconButton(
                    onPressed: (() {
                      takePhoto(ImageSource.camera);
                    }),
                    icon: const Icon(Icons.camera_alt),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Gallery'),
                  IconButton(
                    onPressed: (() {
                      takePhoto(ImageSource.gallery);
                    }),
                    icon: const Icon(Icons.picture_in_picture_alt),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile!;
    });
  }
}
