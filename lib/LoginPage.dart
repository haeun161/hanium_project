import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:history_gamification/main.dart';

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
            SizedBox(height: 140.0),
            Text('Username', style: TextStyle(color:Colors.white)),
            TextField(
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
            SizedBox(height: 14.0),
            Text('Password', style: TextStyle(color:Colors.white)),
            TextField(
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
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.pop(context);
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

/*
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body:  Container(
          //배경화면
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/login/Login_back.png'), // 배경 이미지
              ),
            ),
          child: Center(
            child: Column(
              children: <Widget> [
                Card(
                  shape: RoundedRectangleBorder(
                    // 경계는 네모모양
                    borderRadius: BorderRadius.circular(16.0), // Radius는 16정도로.
                  ),
                  elevation: 4.0, // 그림자 깊이
                  child: Container(
                    width: 500,
                    height: 80,
                  ),
                ),

                Card(
                  shape: RoundedRectangleBorder(
                    // 경계는 네모모양
                    borderRadius: BorderRadius.circular(16.0), // Radius는 16정도로.
                  ),
                  elevation: 4.0, // 그림자 깊이
                  child: Container(
                    width: 500,
                    height: 80,
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
 */