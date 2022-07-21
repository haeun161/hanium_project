import 'package:flutter/material.dart';

class settingPage extends StatefulWidget {
  @override
  State<settingPage> createState() => _settingPage();
}

class _settingPage extends State<settingPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images1/background.jpg'), // 배경 이미지
            ),
          ),
        )
    );
  }
}