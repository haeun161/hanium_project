import 'package:flutter/material.dart';
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
              padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 10),
              children: <Widget>[
                Container(
                    alignment: const Alignment(-1.2,0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color(0xff9999FF),),
                      child: const Text('Home'),
                      onPressed: () async{
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => mainPage()));
                      },
                    )
                ),
                SizedBox( height:140.0),
                Container(
                  alignment: const Alignment(1.1,0),
                  child: IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    onPressed: () {
                      print('next story');
                    },
                  ),
                ),
                SizedBox( height:15.0),
                Row(
                  children: <Widget>[
                    Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images1/star.png'),
                          ),
                        ),
                        child: ListView(
                            children: <Widget>[
                              SizedBox( height:35.0),
                              Text(
                                '5',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                              ),
                            ]
                        )
                    ),
                    SizedBox( width:50.0),
                    Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images1/star.png'),
                          ),
                        ),
                        child: ListView(
                            children: <Widget>[
                              SizedBox( height:35.0),
                              Text(
                                '6',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                              ),
                            ]
                        )
                    ),
                    SizedBox( width:50.0),
                    Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images1/star.png'),
                          ),
                        ),
                        child: ListView(
                            children: <Widget>[
                              SizedBox( height:35.0),
                              Text(
                                '7',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                              ),
                            ]
                        )
                    ),
                    SizedBox( width:50.0),
                    Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images1/star.png'),
                          ),
                        ),
                        child: ListView(
                            children: <Widget>[
                              SizedBox( height:35.0),
                              Text(
                                '8',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize:20, color:Colors.purple, fontWeight: FontWeight.bold),
                              ),
                            ]
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