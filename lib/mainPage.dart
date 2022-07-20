import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //가로방향 설정 위하여 추가
import 'package:history_gamification/LoginPage.dart';

class mainPage extends StatefulWidget {
  @override
  State< mainPage> createState() => _mainPage();
}

class _mainPage extends State<mainPage> {
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

          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
              children: <Widget>[
                Text('HOME', style: TextStyle(color:Colors.white,fontSize: 45.0)),
                SizedBox(height: 5.0),

                Container(
                  height: 250.0,
                  child: Row(
                    children: [
                      Column(
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images1/dark.png'),
                    ),
                  ),

                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: const Icon(Icons.arrow_circle_right),
       ),
    );
  }
}