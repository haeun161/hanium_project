import 'package:flutter/material.dart';

class rankingPage extends StatefulWidget {
  @override
  State<rankingPage> createState() => _rankingPage();
}

class _rankingPage extends State<rankingPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/ranking/bgr_ver2.png'), // 배경 이미지
            ),
          ),
        )
    );
  }
}