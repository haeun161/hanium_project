import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:history_gamification/main.dart';
import 'package:history_gamification/mainPage.dart';
import 'package:history_gamification/registerPage.dart';

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
            Text('Username', style: TextStyle(color:Colors.white)),
            Container(
              height: 40.0,
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    filled: true,
                    labelText: 'Username',
                    fillColor: Colors.white,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )

                ),
              ),
              ),

            SizedBox(height: 12.0),
            Text('Password', style: TextStyle(color:Colors.white)),
            Container(
              height: 40.0,
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
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 10),
              ),
              onPressed: null,
              child: const Text('아이디/비밀번호 찾기'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 10),
              ),
              onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => registerPage()));
              },
              child: const Text('회원가입'),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('OK'),
                  onPressed: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mainPage()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
     )
    );
  }
}
