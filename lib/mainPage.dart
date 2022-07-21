import 'package:flutter/material.dart';
import 'package:history_gamification/LoginPage.dart';
import 'package:history_gamification/main.dart';

class mainPage extends StatefulWidget {
  @override
  State< mainPage> createState() => _mainPage();
}

class _mainPage extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images1/background.jpg'), // 배경 이미지
            ),
          ),

          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 10),
              children: <Widget>[
                Text('HOME', style: TextStyle(color:Colors.white,fontSize: 45.0)),
                SizedBox(height: 2.0),
                Center(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 230,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox( height: 15,),
                                      Text(
                                        'Profile',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize:25, color:Colors.white),
                                      )
                                    ]
                                  ),
                                ), //Container
                                SizedBox( width: 10,),

                                Container(
                                    width: 320,
                                    height: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                  child: Column(
                                      children: <Widget>[
                                        SizedBox( height: 15,),
                                        Text(
                                          'Story',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize:25, color:Colors.white),
                                        ),
                                        SizedBox( height: 20,),
                                        Container(
                                          height: 50.0,
                                          width: 50.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images1/star.png'),
                                            ),
                                          ),
                                       ),
                                        /*
                                        ElevatedButton.icon(
                                            onPressed: (){
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
                                                },
                                            icon: Icons.add_a_photo,
                                            label: label
                                        )
                                        */
                                    ]
                                  ),//BoxDecoration
                                ), //Container
                              ], //<Widget>[]
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                            Container(
                              height: 10.0,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 115,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/mainPage/Ranking_Button.png'),
                                        ),
                                      ),
                                    )//BoxDecoration
                                ),
                                SizedBox(  width: 10,),
                                Container(
                                  width: 115,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                    child: Container(
                                      width: 80,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/mainPage/Quiz_Button.png'),
                                        ),
                                      ),
                                    )
                                ), ///Container
                                SizedBox(  width: 10,), //SizedBox
                                Container(
                                    width: 100,
                                    height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('assets/mainPage/setting_Button.png'),
                                        ),
                                      ),
                                  ),
                                ),
                                SizedBox(  width: 10,),
                                Container(
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                        textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                      ),
                                      onPressed: (){
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(builder: (context) => LoginPage()));
                                      },
                                      child: const Text('Game Start', style: TextStyle(fontSize: 25.0,color: Colors.white),
                                      )
                                  ),//BoxedDecoration
                                )//Container
                              ], //<Widget>[]
                              mainAxisAlignment: MainAxisAlignment.center,
                            ), //Row
                          ], //<widget>[]
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ), //Column
                      ) //Padding
                  ), //Container
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => FirstPage()));
        },
        child: const Icon(Icons.arrow_circle_right),
       ),
    );
  }
}