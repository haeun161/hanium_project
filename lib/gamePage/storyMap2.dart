import 'package:flutter/material.dart';
import 'package:history_gamification/Intro/intro1.dart';
import 'package:history_gamification/gamePage/storyMap.dart';
import 'package:history_gamification/mainPage.dart';


class storyMap2 extends StatefulWidget {
  @override
  State<storyMap2> createState() => _storyMap2();
}

class _storyMap2 extends State<storyMap2> {
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
              padding: EdgeInsets.symmetric(horizontal: 60.0,vertical: 10),
              children: <Widget>[
                Container(
                    height: 50.0,
                    alignment: const Alignment(-1.0,0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color(0xff9999FF),),
                      child: const Text('Home'),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => mainPage()));
                      },
                    )
                ),
                SizedBox( height:110.0),
                Container(
                  height: 80.0,
                  alignment: const Alignment(-1.1,0),
                  child: IconButton(
                    icon: Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    onPressed: () {
                      print('before story');
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => storyMap()));
                    },
                  ),
                ),

                Row(
                  children: <Widget>[
                    SizedBox(width: 50.0),
                    Container(
                        width: 115,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images1/star.png'),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                              splashColor: Colors.black26,
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => intro1()));
                              },
                              child: Center(
                                child: Text(
                                  '4',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                                ),
                              )
                          ),
                        )
                    ),

                    SizedBox( width:40.0),
                    Container(
                        width: 115,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images1/star.png'),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                              splashColor: Colors.black26,
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => intro1()));
                              },
                              child: Center(
                                child: Text(
                                  '5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                                ),
                              )
                          ),
                        )
                    ),
                    SizedBox( width:40.0),
                    Container(
                        width: 115,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images1/star.png'),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                              splashColor: Colors.black26,
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => intro1()));
                              },
                              child: Center(
                                child: Text(
                                  '6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                                ),
                              )
                          ),
                        )
                    ),
                    SizedBox( width:40.0),
                    Container(
                        width: 115,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images1/star.png'),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                              splashColor: Colors.black26,
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => intro1()));
                              },
                              child: Center(
                                child: Text(
                                  '7',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                                ),
                              )
                          ),
                        )
                    ),

                  ],
                )


              ]
          ),

        ),
      ),
    );
  }
}