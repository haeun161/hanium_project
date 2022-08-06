import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap.dart';

class story1 extends StatefulWidget {
  @override
  _story1 createState() => _story1();
}

class _story1 extends State<story1> {
  final ScrollController _scroller = ScrollController();

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
                )

              ],
            )

        ),
      ),

    );
  }
}