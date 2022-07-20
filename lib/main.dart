import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //가로방향 설정 위하여 추가
import 'package:history_gamification/LoginPage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 가로 왼쪽, 오른쪽 방향 고정
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return MaterialApp(
      title: 'History_Gamification',
      theme: ThemeData(
        primarySwatch: Colors.purple,

      ),
      home: FirstPage(),

    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images1/background.jpg'), // 배경 이미지
          ),
        ),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 90.0),
              Text(
                'History\n Gamification',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:70, color:Colors.white),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                ),
                onPressed: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text('tap to start', style: TextStyle(fontSize: 30.0,color: Colors.white),
               )
              )
            ]
        )
          /*
          Text(
                'History\n Gamification',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:70, color:Colors.white),
          )
          */

      ),



      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: const Icon(Icons.arrow_circle_right),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
