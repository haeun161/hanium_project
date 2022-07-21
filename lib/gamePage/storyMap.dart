import 'package:flutter/material.dart';


class storyMap extends StatefulWidget {
  @override
  State<storyMap> createState() => _storyMap();
}

class _storyMap extends State<storyMap> {
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