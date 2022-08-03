

import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap2.dart';
import 'package:history_gamification/quiz/easy/easyQuiz1.dart';
import 'package:history_gamification/quiz/easy/easyQuiz2.dart';
import 'package:history_gamification/quiz/timer.dart';
import 'package:history_gamification/quizPage.dart';

class easyQuiz3 extends StatefulWidget {
  @override
  State<easyQuiz3> createState() => _easyQuiz3();
}

class _easyQuiz3 extends State<easyQuiz3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images1/storymap_background1.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
              children: <Widget>[
                SizedBox( height:8.0),
                Container(
                    color:Color(0xffCCCCFF),
                    padding: const EdgeInsets.all(10.0),
                    height: 340.0,
                    width: 800,
                    alignment: const Alignment(0.9,0),
                    child: ListView(
                      children: <Widget>[
                        SizedBox( height:10.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          height: 30,
                          child: Row( //Quiz,타이머
                            children: [
                              Container(//퀴즈 화면으로 돌아가는 버튼
                                  height: 30.0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Color(0xff9999FF),),
                                    child: const Text('Quiz'),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (context) => quizPage()));
                                    },
                                  )
                              ),
                              SizedBox(width:20.0),
                              Container( //타이머
                                height: 30,
                                child: Container(
                                  width: 470.0,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Container( // 시계
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/quiz/clock.png'),
                                          ),
                                        ),
                                      ),
                                      timer()

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height:15.0),

                        Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.navigate_before,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                onPressed: () {
                                  print('before story');
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => easyQuiz2()));
                                },
                              ),
                              SizedBox(width:12.0),
                              Container( //문제
                                padding: const EdgeInsets.all(5.0),
                                alignment: const Alignment(1.1,0),
                                color: Colors.white,
                                height: 230,
                                width: 520,
                                child: ListView(
                                  children: <Widget>[
                                    Text('Q. 명량해전과 관련있는 전쟁은?',
                                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),
                                    ),
                                    SizedBox(height:7.0),
                                    Row(
                                      children: [
                                        SizedBox(width:100.0),

                                        Column(
                                          children: [
                                            Text('<보기>', style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold ),),

                                            SizedBox(height:8.0),
                                            Row(
                                              children: <Widget>[
                                                SizedBox(width:10.0),
                                                Column( //보기1,보기3
                                                  children: [
                                                    Container(
                                                      //보기1
                                                        width: 140.0,
                                                        height: 65.0,
                                                        decoration: BoxDecoration(//모서리를 둥글게
                                                          border: Border.all(color: Colors.black26, width: 3),
                                                          color: Color(0xffF5F5F5),
                                                        ),
                                                        child: Center(
                                                          child:  Text('1. 임진왜란',),
                                                        )

                                                    ),
                                                    SizedBox(height:12.0),
                                                    Container(//보기3
                                                        width: 140.0,
                                                        height: 65.0,
                                                        decoration: BoxDecoration(//모서리를 둥글게
                                                          border: Border.all(color: Colors.black26, width: 3),
                                                          color: Color(0xffF5F5F5),
                                                        ),
                                                        child: Center(
                                                          child: Text('3. 황산벌전투'),
                                                        )
                                                    )
                                                  ],
                                                ),
                                                SizedBox(width:15.0),
                                                Column( //보기2,보기4
                                                  children: [
                                                    Container(//보기2
                                                        width: 140.0,
                                                        height: 65.0,
                                                        decoration: BoxDecoration(//모서리를 둥글게
                                                          border: Border.all(color: Colors.black26, width: 3),
                                                          color: Color(0xffF5F5F5),
                                                        ),
                                                        child: Center(
                                                          child: Text('2. 병자호란'),
                                                        )
                                                    ),
                                                    SizedBox(height:12.0),
                                                    Container(//보기4
                                                        width: 140.0,
                                                        height: 65.0,
                                                        decoration: BoxDecoration(//모서리를 둥글게
                                                          border: Border.all(color: Colors.black26, width: 3),
                                                          color: Color(0xffF5F5F5),
                                                        ),
                                                        child: Center(
                                                          child: Text('4. 신미양요'),
                                                        )
                                                    )
                                                  ],

                                                ),

                                              ],
                                            ),
                                          ],// 보기

                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height:10.0),
                              IconButton(
                                icon: Icon(
                                  Icons.navigate_next,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                onPressed: () {
                                  print('next story');
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => easyQuiz3()));
                                },
                              ),

                            ]
                        ),

                        Row(
                          children: [
                            SizedBox(width:150.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('1', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                            SizedBox(width:30.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('2', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                            SizedBox(width:30.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('3', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                            SizedBox(width:30.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('4', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                            SizedBox(width:30.0),

                          ],
                        )
                      ],
                    )
                ),



              ]
          ),

        ),
      ),
    );
  }
}