import 'package:flutter/material.dart';
import 'package:history_gamification/checkMail.dart';

import 'LoginPage.dart';


class registerPage extends StatefulWidget {
  @override
  _registerPage createState() => _registerPage();
}

class _registerPage extends State<registerPage> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images1/dark_background.png'), // 배경 이미지
            ),
          ),

          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 180.0),
            children: <Widget>[
              SizedBox(height:60.0),
              Container(
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images1/purple.png'),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 5.0),
                  children: <Widget>[
                    Text('회원가입', style: TextStyle(color:Color(0xff666699), fontSize: 32.0, fontWeight: FontWeight.bold)),
                    SizedBox(height:5.0),

                    Text(' 이메일', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                    Container(
                      height: 40.0,
                      child: Row(
                      children:[
                        Container(
                          width: 215.0,
                          child:TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                                filled: true,
                                labelText: 'Email',
                                fillColor: Colors.white,

                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                )
                            ),
                          ),
                        ),

                        Container(
                          width: 60.0,
                          child: ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                color: Color(0xff666699),
                                child: Text('인증'),
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => checkMail()));
                                },
                              ),
                            ],
                          ),
                        )

                       ]
                      ),
                    ),

                    SizedBox(height: 12.0),
                    Text(' 비밀번호', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                    Container(
                      height: 30.0,
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'Password',
                            fillColor: Colors.white,

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )

                        ),
                        obscureText: true,
                      ),
                    ),
                    Text(' 비밀번호 확인', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                    Container(
                      height: 30.0,
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'Password',
                            fillColor: Colors.white,

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )

                        ),
                        obscureText: true,
                      ),
                    ),

                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          color: Color(0xff666699),
                          child: Text('확인'),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
