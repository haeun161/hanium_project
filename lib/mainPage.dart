import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //가로방향 설정 위하여 추가
import 'package:history_gamification/LoginPage.dart';

class mainPage extends StatefulWidget {
  @override
  State< mainPage> createState() => _mainPage();
}

class _mainPage extends State< mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Gamification'),
      ),
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images1/background.jpg'), // 배경 이미지
          ),
        ),
        child: Center(
          child: Text(
            'History\n Gamification',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 70, color:Colors.white),
          ),
        ),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: const Icon(Icons.add),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
