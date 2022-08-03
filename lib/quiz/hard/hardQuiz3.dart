import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap2.dart';
import 'package:history_gamification/quiz/hard/hardQuiz2.dart';
import 'package:history_gamification/quiz/hard/hardQuiz4.dart';
import 'package:history_gamification/quiz/medium/mediumQuiz1.dart';
import 'package:history_gamification/quiz/timer.dart';
import 'package:history_gamification/quizPage.dart';

class hardQuiz3 extends StatefulWidget {
  @override
  State<hardQuiz3> createState() => _hardQuiz3();
}

class _hardQuiz3 extends State<hardQuiz3> {
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

                        SizedBox(height:25.0),

                        Row(
                            children: <Widget>[
                              SizedBox(width: 5.0,),
                              IconButton(
                                icon: Icon(
                                  Icons.navigate_before,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                onPressed: () {
                                  print('before story');
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => hardQuiz2()));
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
                                    Center(
                                      child: Text('Q. 행주대첩 후 권율장군이 제압한 난으로 올바른 것은?',
                                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),
                                      ),
                                    ),
                                    Container(
                                      alignment:  const Alignment(0.8,0),
                                      child: Text('선지에 해당하는 문장을 클릭하시오.', style: TextStyle(fontSize: 12.0,color: Colors.red)),
                                    ),

                                    SizedBox(height: 20),

                                    Container(
                                      height: 20.0,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                          ),
                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(builder: (context) => quizPage()));
                                          },
                                          child: const Text('1. 이몽학의 난 ', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 20.0,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                          ),
                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(builder: (context) => quizPage()));
                                          },
                                          child: const Text('2. 송유진의 난', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 20.0,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 13),padding: EdgeInsets.all(0),
                                          ),
                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(builder: (context) => quizPage()));
                                          },
                                          child: const Text('3. 정여립의 난', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 20.0,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                          ),
                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(builder: (context) => quizPage()));
                                          },
                                          child: const Text('4. 이인좌의 난', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 20.0,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                          ),
                                          onPressed: (){
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(builder: (context) => quizPage()));
                                          },
                                          child: const Text('5. 홍경래의 난', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),

                                    SizedBox(height:7.0),

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
                                      .push(MaterialPageRoute(builder: (context) => hardQuiz4()));
                                },
                              ),

                            ]
                        ),


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