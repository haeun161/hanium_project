import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class story1 extends StatefulWidget {
  @override
  _story1 createState() => _story1();
}

class _story1 extends State<story1> {
  @override
  bool _visible = true;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/story/war_background1.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
            child:ListView(
              children: <Widget>[
                Container(
                  height: 230.0,
                  child: ListView(
                    children: [
                      SizedBox( height:10.0),
                      Container(
                          height: 35.0,
                          alignment: const Alignment(-0.9,0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Color(0xff9999FF),),
                            child: const Text('Map'),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) => storyMap()));
                            },
                          )
                      ),

                      Row(
                        children: [
                          SizedBox(width: 50.0,),
                          Column(
                            children: [
                              Container( //군사들
                                width: 230,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldiers1.png'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50.0,
                              ),
                            ],
                          ),

                          SizedBox(width: 150.0,),
                          Container( //을지문덕
                            width: 200,
                            height: 240,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/story/main_soldier.png'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Container( //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      SizedBox(width: 40.0),
                      Container(
                          width: 110,
                          height: 115,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/story/npc1.png'),
                            ),
                          ),
                      ),

                      SizedBox(width: 100.0,),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '역사체험의 첫번째 배경은 612년 고구려야! \n 이 곳에서 고구려와 수나라가 엄청난 전쟁을 벌이지.',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '한번 같이 이 현장으로 떠나볼까? \n 저기 바로 을지문덕이 보이네! 빨리 가보자',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                            ],

                            totalRepeatCount: 1,
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ),

                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1_1()));
                        },
                      ),
                    ],
                  ),

                )

              ],
            )

        ),
      ),

    );
  }
}

class story1_1 extends StatefulWidget {
  @override
  _story1_1 createState() => _story1_1();
}

class _story1_1 extends State<story1_1> {
  bool _visible = true;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/story/war_background1.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
            child:ListView(
              children: <Widget>[
                Container(
                  height: 230.0,
                  child: ListView(
                    children: [
                      SizedBox( height:10.0),
                      Container(
                          height: 35.0,
                          alignment: const Alignment(-0.9,0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Color(0xff9999FF),),
                            child: const Text('Map'),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) => storyMap()));
                            },
                          )
                      ),

                      Row(
                        children: [
                          SizedBox(width: 50.0,),
                          Column(
                            children: [
                              Container( //군사들
                                width: 230,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldiers1.png'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50.0,
                              ),
                            ],
                          ),

                          SizedBox(width: 150.0,),
                          Container( //을지문덕
                            width: 220,
                            height: 260,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/story/main_soldier.png'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Container( //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('before story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1()));
                        },
                      ),

                      Container(
                        width: 110,
                        height: 105,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/story/main_soldier.png'),
                          ),
                        ),
                        child: Container(
                          alignment: const Alignment(1,1),
                          child: Text('을지문덕', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        )
                      ),

                      Center(
                        child: Container(
                          width: 500,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '수나라의 양재가 113만명 대군을 이끌고 우리 고구려에 쳐들어왔다!'
                                    '\n 조금만 더 힘내서 수나라 군사들을 완전히 격퇴시키자!',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),

                            ],

                            totalRepeatCount: 1,
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        )

                      ),
                      SizedBox(width: 20.0,),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1_2()));
                        },
                      ),
                    ],
                  ),

                )

              ],
            )

        ),
      ),

    );
  }
}

class story1_2 extends StatefulWidget {
  @override
  _story1_2 createState() => _story1_2();
}

class _story1_2 extends State<story1_2> {

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/story/war_background1.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
            child:ListView(
              children: <Widget>[
                Container(
                  height: 230.0,
                  child: ListView(
                    children: [
                      SizedBox( height:10.0),
                      Container(
                          height: 35.0,
                          alignment: const Alignment(-0.9,0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Color(0xff9999FF),),
                            child: const Text('Map'),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) => storyMap()));
                            },
                          )
                      ),

                      Row(
                        children: [
                          SizedBox(width: 50.0,),
                          Column(
                            children: [
                              Container( //군사들
                                width: 230,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldiers1.png'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50.0,
                              ),
                            ],
                          ),

                          SizedBox(width: 150.0,),
                          Container( //을지문덕
                            width: 220,
                            height: 180,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/story/character.png'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Container( //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('before story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1()));
                        },
                      ),

                      Container(
                          width: 110,
                          height: 105,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/story/character1.png'),
                            ),
                          ),
                          child: Container(
                            alignment: const Alignment(0.8,0.5),
                            child: Text('나', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          )
                      ),
                      SizedBox(width: 10.0,),
                      Center(
                        child: Container(
                          width: 500,
                          child:AnimatedTextKit(
                          animatedTexts: [
                          TypewriterAnimatedText(
                          '무슨일이에요?',
                            textStyle: const TextStyle(color: Colors.white, fontSize: 18.0,  fontWeight: FontWeight.bold,),
                            speed: const Duration(milliseconds: 100),
                          ),

                          TypewriterAnimatedText(
                            '우리 을지문덕 장군의 활약으로 요동성에서 더 이상 진군하기가 어려워진 수나라가 우문술/우중문 장군에게 무려 30만명의 별동대를 주고 평양성을 치라고 명했다는 소문이 파다해!',
                            textStyle: const TextStyle(color: Colors.white, fontSize: 18.0,  fontWeight: FontWeight.bold,),
                            speed: const Duration(milliseconds: 100),
                          ),


                          ],

                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                        )


                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1()));
                        },
                      ),
                    ],
                  ),

                )

              ],
            )

        ),
      ),

    );
  }
}