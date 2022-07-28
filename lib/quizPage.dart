import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap.dart';
import 'package:history_gamification/mainPage.dart';
import 'package:history_gamification/quiz/medium/quiz1.dart';

class quizPage extends StatefulWidget {
  @override
  _quizPage createState() => _quizPage();
}

class _quizPage extends State<quizPage> {
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
                    width: 480.0,
                    color: Color(0xff9999FF),
                    child: ListView(
                        children:<Widget>[
                          SizedBox( height:10.0),
                          Container(
                              alignment: const Alignment(-0.8,0),
                              child: Text('퀴즈',
                                style: TextStyle(fontSize: 40, color: Colors.white,fontWeight: FontWeight.bold),)
                          ),
                          Container(
                              alignment: const Alignment(-0.5,0),
                              child: Text('문제의 난이도(상, 중, 하)를 선택하세요.',
                                style: TextStyle(fontSize: 20, color: Colors.white),)
                          ),

                          SizedBox( height:50.0),
                          Row(
                            children: <Widget>[
                              SizedBox( width:40.0),
                              Container(
                                  height: 90,
                                  width: 105,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/star.png'),
                                    ),
                                  ),
                                  child: ListView(
                                      children: <Widget>[
                                        SizedBox( height:30.0),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 5),padding: EdgeInsets.all(0),
                                          ),
                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(builder: (context) => storyMap()));
                                          },
                                          child: Text( '하',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ]
                                  )
                              ),
                              SizedBox( width:40.0),
                              Container(
                                  height: 90,
                                  width: 105,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/star.png'),
                                    ),
                                  ),
                                  child: ListView(
                                      children: <Widget>[
                                        SizedBox( height:30.0),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 5),padding: EdgeInsets.all(0),
                                          ),
                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(builder: (context) =>quiz1()));
                                          },
                                          child: Text( '중',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ]
                                  )
                              ),
                              SizedBox( width:40.0),
                              Container(
                                  height: 90,
                                  width: 105,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/star.png'),
                                    ),
                                  ),
                                  child: ListView(
                                      children: <Widget>[
                                        SizedBox( height:30.0),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 5),padding: EdgeInsets.all(0),
                                          ),
                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(builder: (context) => storyMap()));
                                          },
                                          child: Text( '상',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ]
                                  )
                              ),
                            ],
                          )
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