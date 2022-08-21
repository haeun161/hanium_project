import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:history_gamification/gamePage/storyMap.dart';
import 'package:history_gamification/mainPage.dart';
import 'package:history_gamification/quiz/hard/hardQuiz1.dart';

class intro1 extends StatefulWidget {
  @override
  _intro1 createState() => _intro1();
}

class _intro1 extends State<intro1> {
  final ScrollController _scroller = ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/blurryMuseum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                height: 400.0,
                child: ListView(children: [
                  SizedBox(height: 10.0),
                  Container(
                      //mapBtn
                      height: 35.0,
                      alignment: const Alignment(-0.9, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    SizedBox(
                      width: 50.0,
                    ),
                    Column(children: [
                      Padding(padding: EdgeInsets.only(top: 180.0)),
                      Container(
                        //textbox
                        padding: EdgeInsets.only(top: 10.0),
                        height: 120,
                        color: Colors.black54,
                        child: Row(
                          children: [
                            //character
                            SizedBox(width: 40.0),
                            Container(
                              width: 110,
                              height: 115,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/intro/character.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100.0,
                            ),
                            Center(
                              child: Container(
                                width: 425,
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      '1년에 한 번 가는 현장체험학습을 박물관에서 하다니... \n 놀이공원 가고싶었는데!',
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      speed: const Duration(milliseconds: 100),
                                    ),
                                    TypewriterAnimatedText(
                                      '역사는 너무 지루하고 재미없어. \n 이런 데를 왜 오는 거람... 선생님 말씀도 잘 안들리고... ',
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      speed: const Duration(milliseconds: 100),
                                    ),
                                    TypewriterAnimatedText(
                                      '나 혼자 딴 짓 해도 아무도 모르겠지?',
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => intro2()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ]),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class intro2 extends StatefulWidget {
  @override
  _intro2 createState() => _intro2();
}

class _intro2 extends State<intro2> {
  final ScrollController _scroller = ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/blurryMuseum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                height: 400.0,
                child: ListView(children: [
                  SizedBox(height: 10.0),
                  Container(
                      //mapBtn
                      height: 35.0,
                      alignment: const Alignment(-0.9, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    SizedBox(
                      width: 50.0,
                    ),
                    Column(children: [
                      Padding(padding: EdgeInsets.only(top: 180.0)),
                      Container(
                        //textbox
                        padding: EdgeInsets.only(top: 10.0),
                        height: 120,
                        color: Colors.black54,
                        child: Row(
                          children: [
                            //character

                            SizedBox(
                              width: 100.0,
                            ),
                            Center(
                              child: Container(
                                width: 425,
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      '-몇분 후-',
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => intro3()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ]),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class intro3 extends StatefulWidget {
  @override
  _intro3 createState() => _intro3();
}

class _intro3 extends State<intro3> {
  final ScrollController _scroller = ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/blurryMuseum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                height: 400.0,
                child: ListView(children: [
                  SizedBox(height: 10.0),
                  Container(
                      //mapBtn
                      height: 35.0,
                      alignment: const Alignment(-0.9, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    SizedBox(
                      width: 50.0,
                    ),
                    Column(children: [
                      Padding(padding: EdgeInsets.only(top: 180.0)),
                      Container(
                        //textbox
                        padding: EdgeInsets.only(top: 10.0),
                        height: 120,
                        color: Colors.black54,
                        child: Row(
                          children: [
                            //character
                            SizedBox(width: 40.0),
                            Container(
                              width: 110,
                              height: 115,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/intro/character.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100.0,
                            ),
                            Center(
                              child: Container(
                                width: 425,
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      '어? 선생님이 어디 가셨지? 친구들도 안보이네... \n 일단 저기 출구로 나가봐야겠다.',
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => intro4()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ]),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class intro4 extends StatefulWidget {
  @override
  _intro4 createState() => _intro4();
}

class _intro4 extends State<intro4> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
        Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
            ),
          ),
          child: SafeArea(
            child: ListView(children: <Widget>[
              Container(
                height: 230.0,
                child: ListView(children: [
                  SizedBox(height: 10.0),
                  Container(
                      height: 35.0,
                      alignment: const Alignment(-0.9, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(
                    children: [
                      Column(
                        children: [
                          ScaleTransition(
                            // animation 구현할땐 Animation 객체가 필요
                            scale: _animation,
                            child: Container(
                              //군사들
                              margin: EdgeInsets.only(top: 50.0, left: 250.0),
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/intro/hero.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            // ceramic
                            margin: EdgeInsets.only(top: 90.0, left: 85.0),
                            width: 65.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/intro/ceramic.png'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
              Row(children: [
                SizedBox(
                  width: 50.0,
                ),
                Column(children: [
                  Container(
                    //textbox
                    height: 120,
                    color: Colors.black54,
                    child: Row(
                      children: [
                        //character
                        SizedBox(width: 40.0),
                        Container(
                          width: 110,
                          height: 115,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/intro/character.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                        ),
                        Center(
                          child: Container(
                            width: 425,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '아야!',
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
                        SizedBox(
                          width: 10.0,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          onPressed: () {
                            print('next story');
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => intro5()));
                          },
                        ),
                      ],
                    ),
                  ),
                ]),
              ]),
            ]),
          ),
        ));
  }
}

class intro5 extends StatefulWidget {
  @override
  _intro5 createState() => _intro5();
}

class _intro5 extends State<intro5> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
        Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
            Container(
              height: 230.0,
              child: ListView(children: [
                SizedBox(height: 10.0),
                Container(
                    height: 35.0,
                    alignment: const Alignment(-0.9, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff9999FF),
                      ),
                      child: const Text('Map'),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => storyMap()));
                      },
                    )),
                Row(
                  children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      ScaleTransition(
                        // animation 구현할땐 Animation 객체가 필요
                        scale: _animation,
                        child: Container(
                          // ceramic
                          margin: EdgeInsets.only(left: 50.0),
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/intro/npcLeft.png'),
                            ),
                          ),
                        ),
                      )
                    ])
                  ],
                ),
              ]),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
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
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '무슨 일이야! \n 네가 도자기를 깬거야?',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro6()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro6 extends StatefulWidget {
  @override
  _intro6 createState() => _intro6();
}

class _intro6 extends State<intro6> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
        Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
                      SizedBox(width: 40.0),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/character.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '넌 누구야?',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro7()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro7 extends StatefulWidget {
  @override
  _intro7 createState() => _intro7();
}

class _intro7 extends State<intro7> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
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
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '난 너 같이 역사의 소중함을 모르는 아이들에게 역사체험을 시켜주는 홀로그램이야!',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                    '너 아까 역사는 지루하고 재미없다고 했었지? 그리고 혼자 딴짓도 하고?',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro8()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}


class intro8 extends StatefulWidget {
  @override
  _intro8 createState() => _intro8();
}

class _intro8 extends State<intro8> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
                      SizedBox(width: 40.0),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/character.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '그걸 어떻게 알았어?',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro9()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro9 extends StatefulWidget {
  @override
  _intro9 createState() => _intro9();
}

class _intro9 extends State<intro9> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
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
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '나는 이 박물관 유적들 사이에서 항상 박물관 관람객들을 지켜보고 있어.',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '사람들이 역사에 관심을 가지는 모습을 보면 저절로 뿌듯해지거든!',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro10()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro10 extends StatefulWidget {
  @override
  _intro10 createState() => _intro10();
}

class _intro10 extends State<intro10> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
                      SizedBox(width: 40.0),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/character.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '지금까지 여기서 사람들을 지켜봤다고?',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro11()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro11 extends StatefulWidget {
  @override
  _intro11 createState() => _intro11();
}

class _intro11 extends State<intro11> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
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
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '그래. 난 보통사람들의 눈에는 보이지 않아.',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '그 덕에 박물관에서 계속 머물 수 있었지.',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro12()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro12 extends StatefulWidget {
  @override
  _intro12 createState() => _intro12();
}

class _intro12 extends State<intro12> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
                      SizedBox(width: 40.0),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/character.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '그럼 내 눈에는 왜 네가 보이는 거야?',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro13()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}


class intro13 extends StatefulWidget {
  @override
  _intro13 createState() => _intro13();
}

class _intro13 extends State<intro13> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
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
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '너는 박물관을 지루해했잖아.',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '거기에 방금 저 유물까지 깨뜨렸지.',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '아까 말했지? \n 역사의 소중함을 모르는 아이들에게 역사체험을 시켜주는 게 내 일이야!',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro14()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro14 extends StatefulWidget {
  @override
  _intro14 createState() => _intro14();
}

class _intro14 extends State<intro14> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
                      SizedBox(width: 40.0),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/character.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '역사 체험...? 듣기만 해도 벌써 지루한데...',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro15()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro15 extends StatefulWidget {
  @override
  _intro15 createState() => _intro15();
}

class _intro15 extends State<intro15> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
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
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '흠... 그렇게 이야기할 줄 알았어.',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '이번 역사 체험은 너를 전쟁 속 대역전의 순간으로 데려다 줄거야!',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '역사 체험이 끝나면 아마 역사가 지루하다는 생각은 사라질걸?',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro16()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro16 extends StatefulWidget {
  @override
  _intro16 createState() => _intro16();
}

class _intro16 extends State<intro16> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
                      SizedBox(width: 40.0),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/character.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '으음...',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro17()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro17 extends StatefulWidget {
  @override
  _intro17 createState() => _intro17();
}

class _intro17 extends State<intro17> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
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
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '고민할 시간이 없어! 곧 첫 번째 여행을 떠날 거거든',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '그리고 잘들어! 저기 네가 깨뜨린 백자 보이지?',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '역사 체험 장소마다 백자 조각이 숨어있어.',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '그걸 다 모아야 무사히 여기로 다시 돌아올 수 있을거야! \n 정신 바짝 차리는 게 좋을 걸!',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro18()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro18 extends StatefulWidget {
  @override
  _intro18 createState() => _intro18();
}

class _intro18 extends State<intro18> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 3.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/Museum.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            // ceramic
                            margin: EdgeInsets.only(
                                top: 80.0, left: 15.0, bottom: 100.0),
                            width: 155.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/intro/brokenCeramic.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 50.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
                      SizedBox(width: 40.0),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/character.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '뭐라고? 그런게 어디있어!',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => intro19()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

class intro19 extends StatefulWidget {
  @override
  _intro19 createState() => _intro19();
}

class _intro19 extends State<intro19> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    Animation<double> _animation =
    Tween(begin: 1.0, end: 0.0).animate(_animationController);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/intro/holymoly.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(children: <Widget>[
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
                          primary: Color(0xff9999FF),
                        ),
                        child: const Text('Map'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => storyMap()));
                        },
                      )),
                  Row(children: [
                    Column(children: [
                      ScaleTransition(
                        // animation 구현할땐 Animation 객체가 필요
                          scale: _animation,
                          child:
                      Container(
                        //hero
                        margin: EdgeInsets.only(left: 150.0),
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/intro/hero.png'),
                          ),
                        ),
                      ),
                      ),
                    ]),
                    Column(children: [
                      ScaleTransition(
                        // animation 구현할땐 Animation 객체가 필요
                          scale: _animation,
                          child:
                      Container(
                        // ceramic
                        margin: EdgeInsets.only(left: 150.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/intro/npcLeft.png'),
                          ),
                        ),
                      ),
                      )
                    ])
                  ])
                ],
              ),
            ),
            Row(children: [
              SizedBox(
                width: 50.0,
              ),
              Column(children: [
                Container(
                  //textbox
                  height: 120,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      //character
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
                      SizedBox(
                        width: 100.0,
                      ),
                      Center(
                        child: Container(
                          width: 425,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '자 이제 출발한다!',
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
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('next story');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => mainPage()));
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}