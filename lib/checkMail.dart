import 'package:flutter/material.dart';
import 'package:history_gamification/registerPage.dart';
import 'LoginPage.dart';


class checkMail extends StatefulWidget {
  @override
  _checkMail createState() => _checkMail();
}

class _checkMail extends State<checkMail> {

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
            padding: EdgeInsets.symmetric(horizontal: 200.0),
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
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                  children: <Widget>[
                    Text('인증번호 발송', style: TextStyle(color:Color(0xff666699), fontSize: 32.0, fontWeight: FontWeight.bold)),
                    SizedBox(height:5.0),
                    Text(' 입력하신 이메일로 전송된 인증번호 \n 6자리를 입력하세요.', style: TextStyle(color:Color(0xff666699), fontSize: 12.0, fontWeight: FontWeight.bold)),

                    SizedBox(height:40.0),
                    Container(
                      height: 40.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            Container(
                              width: 40.0,
                              child:TextField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Email',
                                    fillColor: Colors.white,

                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    )
                                ),
                              ),
                            ),

                            Container(
                              width: 40.0,
                              child:TextField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Email',
                                    fillColor: Colors.white,

                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    )
                                ),
                              ),
                            ),

                            Container(
                              width: 40.0,
                              child:TextField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Email',
                                    fillColor: Colors.white,

                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    )
                                ),
                              ),
                            ),
                            Container(
                              width: 40.0,
                              child:TextField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Email',
                                    fillColor: Colors.white,

                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    )
                                ),
                              ),
                            ),

                            Container(
                              width: 40.0,
                              child:TextField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Email',
                                    fillColor: Colors.white,

                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    )
                                ),
                              ),
                            ),

                            Container(
                              width: 40.0,
                              child:TextField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Email',
                                    fillColor: Colors.white,

                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    )
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),

                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                      ),
                      onPressed: (){},
                      child: const Text('인증번호 재발송', style: TextStyle(fontWeight: FontWeight.bold),),
                    ),

                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          color: Color(0xff666699),
                          child: Text('확인'),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => registerPage()));
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
