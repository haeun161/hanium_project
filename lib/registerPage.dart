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
                              if (!user!.emailVerified) {
                                await user.sendEmailVerification();
                              }
                            }//FirebaseAuth.instance.currentUser?.sendEmailVerification();

                            on FirebaseAuthException catch (e) {
                              if(e.code == 'weak-password'){
                                print('이 비밀번호는 너무 약합니다.');
                              }
                              else if (e.code == 'email-already-in-use'){
                                print('해당 이메일에 대한 계정이 이미 존재합니다.');
                              }
                              else if (_passwordController.text != _passwordConfirm.text){
                                print('비밀번호가 일치하지 않습니다.');
                              }
                              else{
                                print('확인');

                              }
                            } catch (e){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                            }
                            //Navigator.of(context)
                                //.push(MaterialPageRoute(builder: (context) => LoginPage()));
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
