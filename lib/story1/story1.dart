import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class story1 extends StatefulWidget {
  @override
  _story1 createState() => _story1();
}

class _story1 extends State<story1> {
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
                //SizedBox( height:165),
                Container(
                  height: 165,
                  child: AnimatedOpacity(
                    // If the widget is visible, animate to 0.0 (invisible).
                    // If the widget is hidden, animate to 1.0 (fully visible).
                    opacity: _visible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 500),
                    // The green box must be a child of the AnimatedOpacity widget.
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.white,


                  ),
                  ),


        ),

                Container( //textbox
                  height: 140,
                  color: Colors.black54,
                  child: Center(
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
                      ],

                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                  )
                )

              ],
            )

        ),
      ),

    );
  }
}