import 'package:flutter/material.dart';
import 'package:history_gamification/checkMail.dart';
import 'package:history_gamification/mainPage.dart';
import 'package:history_gamification/registerPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
              image: AssetImage('assets/login/Login_back.png'), // 배경 이미지
            ),
        ),

      child: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 250.0),
          children: <Widget>[
            SizedBox(height: 100.0),
            Text('Email', style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
            Container(
              height: 40.0,
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    filled: true,
                    hintText: '이메일을 입력하세요.',
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )

                ),
              ),
              ),

            SizedBox(height: 12.0),
            Text(' Password', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
            Container(
              height: 40.0,
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    filled: true,
                    hintText: '비밀번호를 입력하세요.',
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )

                ),
                obscureText: true,
              ),
            ),

            Row(
              children: [
                Container(
                  height: 20.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                    ),
                    onPressed: null,
                    child: const Text('  아이디/비밀번호 찾기', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                const Spacer(
                flex: 2,
                ),

                Container(
                  height: 20.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                    ),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => registerPage()));
                    },
                    child: const Text('회원가입', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                )
              ],
            ),
            Container(
              height: 40.0,
              alignment: Alignment.topRight,
              child: ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: Text('OK'),
                    onPressed: () async{
                      //로그인 기능 구현 후
                      try{
                        print("dkskds");
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _usernameController.text, password: _passwordController.text).then((value){
    print(value);
    value.user!.emailVerified == true ? Navigator.push(context,MaterialPageRoute(builder: (_) => mainPage())): Navigator.push(context,MaterialPageRoute(builder: (_) => checkMail()));
    return value;//이메일 인증 여부 확인
    });
    } on FirebaseAuthException catch (e) {
                        if(e.code == 'user-not-found'){
                          print('등록되지 않은 이메일입니다.');
                        } else if (e.code == 'wrong-password'){
                          print('비밀번호가 틀렸습니다.');
                        } else if (e.code == 'invalid-email'){
                          print("something is going");
                        }else{
                          print(e.code);
                        }
                      }
                      //로그인 기능 구현 전
                      //Navigator.of(context)
                          //.push(MaterialPageRoute(builder: (context) => mainPage()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
     )
    );
  }
}
