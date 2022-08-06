import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap.dart';

class typingText extends StatefulWidget {
  @override
  _typingText createState() => _typingText();
}

class _typingText extends State<typingText> with TickerProviderStateMixin{

  late Animation<int> _characterCount;

  late int _stringIndex;
  static const List<String> _kStrings = const <String>[
    '역사체험의 첫번째 배경은 612년 고구려야!',
    '이 곳에서 고구려와 수나라가 엄청난 전쟁을 벌이지.',
    '한번 같이 이 현장으로 떠나볼까? 저기 바로 을지문덕이 보이네! 빨리 가보자',
  ];
  String get _currentString => _kStrings[_stringIndex % _kStrings.length];

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
                SizedBox( height:140),
                Container(
                  height: 150,
                  color: Colors.black54,
                  child: new FloatingActionButton(
                    child: new Icon(Icons.navigate_next),
                    onPressed: () async {
                      AnimationController controller = new AnimationController(
                        duration: const Duration(milliseconds: 4000),
                        vsync: this,
                      );
                      setState(() {
                        _stringIndex = _stringIndex == null ? 0 : _stringIndex + 1;
                        _characterCount = new StepTween(begin: 0, end: _currentString.length)
                            .animate(new CurvedAnimation(parent: controller, curve: Curves.easeIn));
                      });
                      await controller.forward();
                      controller.dispose();
                    },
                  ),

                ),



              ],
            )

        ),
      ),

    );
  }
}