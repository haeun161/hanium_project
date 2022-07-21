import 'package:flutter/material.dart';

class quizPage extends StatefulWidget {
  @override
  State<quizPage> createState() => _quizPage();
}

class _quizPage extends State<quizPage> {
  @override
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