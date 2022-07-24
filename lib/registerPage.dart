import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'LoginPage.dart';


class registerPage extends StatefulWidget {
  @override
  _registerPage createState() => _registerPage();
}

class _registerPage extends State<registerPage> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirm = TextEditingController();

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
                  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 5.0),
                  children: <Widget>[
                    Text('회원가입', style: TextStyle(color:Color(0xff666699), fontSize: 32.0, fontWeight: FontWeight.bold)),
                    SizedBox(height:5.0),

                    Text(' 이메일', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                    Container(
                      height: 45.0,
                      child: Row(
                      children:[
                        Container(
                          width: 220.0,
                          height: 35.0,
                          child:TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                                filled: true,
                                labelText: '이메일을 입력하세요.',
                                fillColor: Colors.white,

                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                )
                            ),
                          ),
                        ),

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
                            labelText: '비밀번호를 입력하세요.',
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
                        controller: _passwordConfirm,
                        decoration: InputDecoration(
                            filled: true,
                            labelText: '비밀번호를 입력하세요.',
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
                        ElevatedButton(
                           style:ElevatedButton.styleFrom(primary: Color(0xff666699)),
                          child: Text('확인'),
                          onPressed: () async {

                             //회원가입 구현
                            try {
                              UserCredential userCredential = await FirebaseAuth
                                  .instance.createUserWithEmailAndPassword(
                                  email: _usernameController.text,
                                  password: _passwordController.text);
                              User? user = FirebaseAuth.instance.currentUser;
                            }//FirebaseAuth.instance.currentUser?.sendEmailVerification();
                            on FirebaseAuthException catch (e) {
                              if(e.code == 'weak-password'){
                                showDialog(
                                    context: context,
                                    //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
                                    barrierDismissible: false,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)),
                                        //Dialog Main Title
                                        title: Column(
                                          children: <Widget>[
                                            new Text("비밀번호 재입력"),
                                          ],
                                        ),
                                        //
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "비밀번호가 너무 약합니다! 재입력 해주세요",
                                            ),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          new FlatButton(
                                            child: new Text("확인"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              }
                              else if (e.code == 'email-already-in-use'){
                                showDialog(
                                    context: context,
                                    //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
                                    barrierDismissible: false,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)),
                                        //Dialog Main Title
                                        title: Column(
                                          children: <Widget>[
                                            new Text("이메일 중복"),
                                          ],
                                        ),
                                        //
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "해당 이메일에 대한 계정이 이미 존재합니다.",
                                            ),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          new FlatButton(
                                            child: new Text("확인"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              }
                              else if (_passwordController.text != _passwordConfirm.text){
                                showDialog(
                                    context: context,
                                    //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
                                    barrierDismissible: false,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)),
                                        //Dialog Main Title
                                        title: Column(
                                          children: <Widget>[
                                            new Text("비밀번호 재입력"),
                                          ],
                                        ),
                                        //
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "비밀번호가 일치하지 않습니다.",
                                            ),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          new FlatButton(
                                            child: new Text("확인"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              }
                              else{
                                showDialog(
                                    context: context,
                                    //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
                                    barrierDismissible: false,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)),
                                        //Dialog Main Title
                                        title: Column(
                                          children: <Widget>[
                                            new Text("이메일 미인증"),
                                          ],
                                        ),
                                        //
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "발송된 인증메일로 회원가입을 완료해주세요!",
                                            ),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          new FlatButton(
                                            child: new Text("확인"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    });
                                print('확인');

                              }
                            } catch (e){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                            }
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                            User? user = FirebaseAuth.instance.currentUser;
                            if (!user!.emailVerified) {
                              await user.sendEmailVerification();
                            }

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
