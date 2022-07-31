import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap.dart';
import 'package:history_gamification/mainPage.dart';
import 'package:history_gamification/quiz/hard/hardQuiz1.dart';

class settingPage extends StatefulWidget {
  @override
  _settingPage createState() => _settingPage();
}

class _settingPage extends State<settingPage> {
  final ScrollController _scroller = ScrollController();

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
            child:ListView(
              children: <Widget>[
                SizedBox( height:10.0),
                Container(
                    height: 35.0,
                    alignment: const Alignment(-0.9,0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color(0xff9999FF),),
                      child: const Text('Home'),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => mainPage()));
                      },
                    )
                ),
                Center(
                  child: Container(
                    height: 300.0,
                    width: 420.0,
                    color: Color(0xff9999FF),
                    child: ListView(
                        children:<Widget>[
                          SizedBox( height:10.0),
                          Container(
                              alignment: const Alignment(-0.8,0),
                              child: Text('설정',
                                style: TextStyle(fontSize: 35, color: Colors.white,fontWeight: FontWeight.bold),)
                          ),
                          Container(
                              alignment: const Alignment(-0.5,0),
                              child: Text('?',
                                style: TextStyle(fontSize: 20, color: Colors.white),)
                          ),

                          SizedBox( height:50.0),

                        ]

                    ),
                  ),
                )
              ],
            )

        ),
      ),

    );
  }
}