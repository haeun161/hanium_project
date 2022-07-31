import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap2.dart';
import 'package:history_gamification/quiz/timer.dart';
import 'package:history_gamification/quizPage.dart';

class hardQuiz1 extends StatefulWidget {
  @override
  State<hardQuiz1> createState() => _hardQuiz1();
}

class _hardQuiz1 extends State<hardQuiz1> {
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
                            print('next story');
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => storyMap2()));
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
                              Text('Q. (가) 시기에 있었던 일로 옳은 것을 <보기>에서 모두 고른 것은?',
                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),
                              ),
                              SizedBox(height:7.0),
                              Row(
                                children: [
                                  SizedBox(width:5.0),
                                  Column(
                                    children: [
                                      SizedBox(height:5.0),
                                      Container(
                                        width: 200.0,
                                        height: 180.0,
                                        child: ListView(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(//모서리를 둥글게
                                                border: Border.all(color: Colors.black26, width: 3),
                                              ),
                                              child: Text('수의 양제는 여러 차례 고구려를 침략하였지만 모두 실패하고 결국 멸망하였다.',
                                                style: TextStyle(fontSize: 14 ),
                                              ),
                                            ),
                                            SizedBox(height:8.0),
                                            Container(
                                                decoration: BoxDecoration(//모서리를 둥글게
                                                  border: Border.all(color: Colors.black26, width: 3),
                                                ),
                                              child: Center(
                                                child: Text('(가)',
                                                  style: TextStyle(fontSize: 14 ),
                                                ),
                                              )
                                            ),
                                            SizedBox(height:8.0),
                                            Container(
                                              decoration: BoxDecoration(//모서리를 둥글게
                                                border: Border.all(color: Colors.black26, width: 3),
                                              ),
                                              child: Text('당의 군대는 약 90일간 안시성을 포위하고 공격하였으나 함락하지 못하고 당으로 돌아갔다.',
                                                style: TextStyle(fontSize: 14 ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],// 텍스트

                                  ),
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
                                                child: Text('ㄱ. 고구려가 살수에서 대승을 거두었다.',),
                                              ),
                                              SizedBox(height:12.0),
                                              Container(//보기3
                                                width: 140.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(//모서리를 둥글게
                                                  border: Border.all(color: Colors.black26, width: 3),
                                                  color: Color(0xffF5F5F5),
                                                ),
                                                child: Text('ㄷ. 연개소문이 대막리지에 올라 권력을 장악하였다.'),
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
                                                child: Text('ㄴ. 백제가 고구려에 지원군을 파견하였다.'),
                                              ),
                                              SizedBox(height:12.0),
                                              Container(//보기4
                                                width: 140.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(//모서리를 둥글게
                                                  border: Border.all(color: Colors.black26, width: 3),
                                                  color: Color(0xffF5F5F5),
                                                ),
                                                child: Text('ㄹ. 고구려가 천리장성을 쌓아 당의 공격에 대비하였다.'),
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
                                .push(MaterialPageRoute(builder: (context) => storyMap2()));
                          },
                        ),

                      ]
                    ),

                      Row(
                        children: [
                          SizedBox(width:80.0),
                          Container(
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                ),
                                onPressed: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => quizPage()));
                                },
                                child: const Text('1. ㄱ,ㄴ', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
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
                                child: const Text('2. ㄱ,ㄷ', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
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
                                child: const Text('3. ㄱ,ㄹ', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
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
                                child: const Text('4. ㄴ,ㄷ', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
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
                                child: const Text('5. ㄷ,ㄹ', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                )
                            ),
                          ),
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