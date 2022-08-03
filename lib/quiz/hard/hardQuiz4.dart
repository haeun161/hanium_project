import 'package:flutter/material.dart';
import 'package:history_gamification/quiz/hard/hardQuiz3.dart';
import 'package:history_gamification/quiz/hard/hardQuiz5.dart';
import 'package:history_gamification/quiz/timer.dart';
import 'package:history_gamification/quizPage.dart';

class hardQuiz4 extends StatefulWidget {
  @override
  State<hardQuiz4> createState() => _hardQuiz4();
}

class _hardQuiz4 extends State<hardQuiz4> {
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
                                      .push(MaterialPageRoute(builder: (context) => hardQuiz3()));
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
                                      child: Text('Q. 명량해전과 관련있는 역사 문서가 아닌것은?',
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
                                          child: const Text('1. 난중잡록 ', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 8),
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
                                          child: const Text('2. 연려실기술', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 8),
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
                                          child: const Text('3. 선조실록', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 8),
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
                                          child: const Text('4. 이충무공전서', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 8),
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
                                          child: const Text('5. 정유일기', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 8),
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
                                          child: const Text('6. 승정원일기 ', style: TextStyle(fontSize: 14.0,color: Colors.black),
                                          )
                                      ),
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
                                      .push(MaterialPageRoute(builder: (context) => hardQuiz5()));
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