import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class story1 extends StatefulWidget {
  @override
  _story1 createState() => _story1();
}

class _story1 extends State<story1> {
  @override

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
                                '한번 같이 이 현장으로 떠나볼까? \n 저기 바로 을지문덕이 보이네! 빨리 가보자 ',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '다음 페이지 게속..',
                                textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                speed: const Duration(milliseconds: 10),
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
                              TypewriterAnimatedText(
                                '다음 페이지 게속..',
                                textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                speed: const Duration(milliseconds: 10),
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
                          SizedBox(width: 100.0,),
                          Column(
                            children: [
                              Container( //군사
                                width: 220,
                                height: 260,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldier.png'),
                                  ),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(width: 100.0,),
                          Container( //주인공
                            width: 220,
                            height: 220,
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
                              .push(MaterialPageRoute(builder: (context) => story1_1()));
                        },
                      ),


                      SizedBox(width: 90.0,),
                      Center(
                        child: Container(
                          width: 500,
                          child:AnimatedTextKit(
                          animatedTexts: [
                          TypewriterAnimatedText(
                          '나: 무슨일이에요?',
                            textStyle: const TextStyle(color: Colors.white, fontSize: 18.0,  fontWeight: FontWeight.bold,),
                            speed: const Duration(milliseconds: 100),
                          ),

                          TypewriterAnimatedText(
                            '병사: 우리 을지문덕 장군의 활약으로 요동성에서 더 이상 진군하기 어려워진 수나라가 우중문 장군에게 무려 30만명의 별동대를 주고 평양성을 치라고 명했다는 소문이 파다해!',
                            textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0,  fontWeight: FontWeight.bold,),
                            speed: const Duration(milliseconds: 100),
                          ),

                            TypewriterAnimatedText(
                              '나: 헉 30만명이나요?',
                              textStyle: const TextStyle(color: Colors.white, fontSize: 18.0,  fontWeight: FontWeight.bold,),
                              speed: const Duration(milliseconds: 100),
                            ),

                            TypewriterAnimatedText(
                              '병사: 걱정마. 이번에도 을지문덕 장군님이 멋지게 물리쳐주실거야!',
                              textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0,  fontWeight: FontWeight.bold,),
                              speed: const Duration(milliseconds: 100),
                            ),
                            TypewriterAnimatedText(
                              '다음 페이지 게속..',
                              textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0, fontWeight: FontWeight.bold,),
                              speed: const Duration(milliseconds: 10),
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
                              .push(MaterialPageRoute(builder: (context) => story1_3()));
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

class story1_3 extends StatefulWidget {
  @override
  _story1_3 createState() => _story1_3();
}

class _story1_3 extends State<story1_3> {

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
                          SizedBox(width: 30.0,),
                          Column(
                            children: [
                              Container( //군사
                                width: 230,
                                height: 260,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldier.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Container( //군사
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldiers1.png'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 80,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container( //군사
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldiers1.png'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 80,
                              )
                            ],
                          ),
                          Container( //을지문덕
                            width: 220,
                            height: 260,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/story/main_soldier.png'),
                              ),
                            )

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
                              .push(MaterialPageRoute(builder: (context) => story1_2()));
                        },
                      ),


                      SizedBox(width: 120.0,),

                      Center(
                          child: Container(
                            width: 500,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '을지문덕: 수나라의 움직임은 어떠한가?',
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '군사1: 예 장군님!장군님의 예상대로 수나라의 군대는 이미 많이 지치고 식량이 거의 떨어진 상태입니다. ',
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '을지문덕: 좋아. 우리는 계속 지는 흉내를 내면서 수나라 군대를 평양성 근처까지 끌어들이는 것이 우리의 작전이다! 알겠나? ',
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '군사들: 군사들: 예! 따르겠습니다',
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '다음 페이지 게속..',
                                  textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 10),
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
                              .push(MaterialPageRoute(builder: (context) => story1_4()));
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

class story1_4 extends StatefulWidget {
  @override
  _story1_4 createState() => _story1_4();
}

class _story1_4 extends State<story1_4> {

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
                          SizedBox(width: 150.0,),

                          Column(
                            children: [
                              Container( //군사들
                                width: 170,
                                height: 160,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldiers2.png'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 80,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container( //군사들
                                width: 170,
                                height: 160,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/story/soldiers2.png'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                              )
                            ],
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
                              .push(MaterialPageRoute(builder: (context) => story1_3()));
                        },
                      ),


                      SizedBox(width: 120.0,),

                      Center(
                          child: Container(
                            width: 500,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '수나라 군: 평양성까지 이리 쉽게 도착하다니! \n      조금 지치긴 했지만, 이번에야말로 우리가 승리하겠구만!',
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),

                                TypewriterAnimatedText(
                                  '다음 페이지 게속..',
                                  textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 10),
                                ),

                              ],

                              totalRepeatCount: 1,
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          )

                      ),
                      SizedBox(width: 10.0,),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1_5()));
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

class story1_5 extends StatefulWidget {
  @override
  _story1_5 createState() => _story1_5();
}

class _story1_5 extends State<story1_5> {

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        height: 700.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/story/letter.png'),
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
                      Container(
                        height: 230,
                        child: Center(
                            child: Text(
                                '神策究天文신 책 구 천 문 귀신같은 책략은 하늘의 이치(천문)를 깨달았고 '
                                    '\n妙算窮地理묘 산 궁 지 리 신묘한 셈은 땅의 형편(지리)을 다하였도다'
                                    '\n戰勝功旣高전 승 공 기 고 싸움에 이겨 공이 이미 높으니'
                                    '\n知足願云止지 족 원 운 지 원컨대 만족함을 알고 그만두기를 바라노라',
                              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                            )
                        )
                      )

                    ],
                  ),
                ),

                SizedBox(height: 20.0,),
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
                              .push(MaterialPageRoute(builder: (context) => story1_4()));
                        },
                      ),


                      SizedBox(width: 120.0,),

                      Center(
                          child: Container(
                            width: 500,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '을지문덕의 2번째 편지 \n \'수나라가 군대를 물리면, 왕과 함께 항복하겠다.\’ -을지문덕',
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),

                                TypewriterAnimatedText(
                                  '다음 페이지 게속..',
                                  textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 10),
                                ),

                              ],

                              totalRepeatCount: 1,
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          )

                      ),
                      SizedBox(width: 10.0,),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1_6()));
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

class story1_6 extends StatefulWidget {
  @override
  _story1_6 createState() => _story1_6();
}

class _story1_6 extends State<story1_6> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    // tween begin부터 end까지
    // animate 동안
    Animation<double> _animation = Tween(begin: 1.0, end: 0.4).animate(_animationController);
    Animation<double> _animation1 = Tween(begin: 0.0, end: 1.0).animate(_animationController);

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
                          Column(
                            children: [

                              ScaleTransition(
                                // animation 구현할땐 Animation 객체가 필요
                                scale: _animation1,
                                child: Container( //군사들
                                  width: 170,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/story/soldiers1.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              ScaleTransition(
                                // animation 구현할땐 Animation 객체가 필요
                                scale: _animation,
                                child: Container( //군사들
                                  width: 170,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/story/soldiers2.png'),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 100,
                              )
                            ],
                          ),
                          Column(
                            children: [

                              ScaleTransition(
                                // animation 구현할땐 Animation 객체가 필요
                                scale: _animation,
                                child: Container( //군사들
                                  width: 170,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/story/soldiers2.png'),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                              )
                            ],
                          ),
                          Container( //군사들
                            width: 170,
                            height: 240,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/story/soldier1.png'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),


                Container( //textbox
                  height: 130,
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
                              .push(MaterialPageRoute(builder: (context) => story1_5()));
                        },
                      ),

                      Container( //군사들
                        width: 110,
                        height: 125,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/story/soldier1.png'),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment(1.5,1.0),
                          child: Text('우중문\n(수나라 장군)', style: TextStyle(color: Colors.white),),
                        )
                      ),


                      SizedBox(width: 70.0,),

                      Center(
                          child: Container(
                            width: 440,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '우중문(수): 당했구나..! 어쩔 수 없이 퇴각하는 수밖에…',
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 19.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),

                                TypewriterAnimatedText(
                                  '다음 페이지 게속..',
                                  textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 10),
                                ),

                              ],

                              totalRepeatCount: 1,
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          )

                      ),
                      SizedBox(width: 10.0,),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1_7()));
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

class story1_7 extends StatefulWidget {
  @override
  _story1_7 createState() => _story1_7();
}

class _story1_7 extends State<story1_7> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    // tween begin부터 end까지
    // animate 동안
    Animation<double> _animation = Tween(begin: 1.0, end: 0.4).animate(_animationController);
    Animation<double> _animation1 = Tween(begin: 0.4, end: 1.0).animate(_animationController);

    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/story/river1.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 230.0,
                  child: ListView(
                    children: [
                      SizedBox(height: 10.0),
                      Container(
                          height: 35.0,
                          alignment: const Alignment(-0.9, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff9999FF),),
                            child: const Text('Map'),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                  builder: (context) => storyMap()));
                            },
                          )
                      ),

                      Row(
                        children: [

                          Column(
                            children: [

                              ScaleTransition(
                                // animation 구현할땐 Animation 객체가 필요
                                scale: _animation1,
                                child: Container( //군사들
                                  width: 160,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/story/soldiers1.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [

                              ScaleTransition(
                                // animation 구현할땐 Animation 객체가 필요
                                scale: _animation1,
                                child: Container( //군사들
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/story/soldier.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              ScaleTransition(
                                // animation 구현할땐 Animation 객체가 필요
                                scale: _animation,
                                child: Container( //수나라 군사들
                                  width: 170,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/story/soldiers2.png'),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 100,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ScaleTransition(
                                // animation 구현할땐 Animation 객체가 필요
                                scale: _animation,
                                child: Container( //수나라 군사들
                                  width: 170,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/story/soldiers2.png'),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 100,
                              )
                            ],
                          ),




                        ],
                      )
                    ],
                  ),
                ),


                Container( //textbox
                  height: 130,
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
                              .push(MaterialPageRoute(builder: (context) => story1_6()));
                        },
                      ),


                      SizedBox(width: 120.0,),

                      Center(
                          child: Container(
                            width: 440,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '을지문덕: 앞에는 평양성, 뒤로는 살수(청천강)에 갇힌 수나라군은 이미 독 안에 든 쥐다. '
                                      '\n 퇴각하는 수나라군을 놓치지 말고 돌격하라!',
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '....',
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '수나라 군사: 우중문 장군님, 저희 너무 깊이 들어온 거 아닌가요??',
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 100),
                                ),

                                TypewriterAnimatedText(
                                  '다음 페이지 게속..',
                                  textStyle: const TextStyle(
                                    color: Colors.white54,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 10),
                                ),

                              ],

                              totalRepeatCount: 1,
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          )

                      ),
                      SizedBox(width: 60.0,),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => story1_end()));
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


//마지막 스토리
class story1_end extends StatefulWidget {
  @override
  _story1_end createState() => _story1_end();
}

class _story1_end extends State<story1_end> {

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
                          Container( //NPC
                            width: 230,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/story/npc.png')
                                )
                            ),
                          ),

                          SizedBox(width: 20.0),
                          Container( //NPC
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/story/piece1.png')
                                )
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Container( //주인공
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
                              .push(MaterialPageRoute(builder: (context) => story1_7()));
                        },
                      ),

                      SizedBox(width: 10.0),
                      Container(
                          width: 110,
                          height: 105,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/story/npc1.png'),
                            ),
                          ),

                      ),
                      SizedBox(width: 60.0,),

                      Center(
                          child: Container(
                            width: 400,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '이것이 바로 그 유명한 살수 대첩이야!\n 이때 수나라 군대 30만 명 중에 살아 돌아간 사람이 겨우 2700명이었어.',
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '정말 크게 이긴 전쟁이었지. 이렇게 크게 이긴 전쟁 전투를 대첩이라고 해. \n 그래서 이 전투를 살수 대첩이라고 불러!',
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '수고했어! 약속대로 백자 한 조각을 줄게',
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  '다음 페이지 게속..',
                                  textStyle: const TextStyle(color: Colors.white54, fontSize: 18.0, fontWeight: FontWeight.bold,),
                                  speed: const Duration(milliseconds: 10),
                                ),

                              ],

                              totalRepeatCount: 1,
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          )

                      ),
                      SizedBox(width: 40.0,),
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