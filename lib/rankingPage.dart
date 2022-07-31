import 'package:flutter/material.dart';

class rankingPage extends StatefulWidget {
  @override
  State<rankingPage> createState() => _rankingPage();
}

class _rankingPage extends State<rankingPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/ranking/bgr_ver2.png'), // 배경 이미지
            ),
          ),
            child: Stack(children: <Widget> [
              Container(  // 랭킹창
                padding: EdgeInsets.only(top:15.0),
                child:Center(child:Image.asset('assets/ranking/rank_bgr.png'),)
              ),
              
              Container(  // RANKING 제목
                padding: EdgeInsets.only(bottom:300.0),
                child:Center(
                  child:Stack(children: <Widget>[
                    Image.asset('assets/ranking/RANKINGbgr.png', width: 150.0),
                    SizedBox(
                        width: 150.0,
                        child: Text(
                          "RANKING", textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, height: 2.1, fontSize: 20),))],))
              ),

              Container(  // 1위~3위
                padding: EdgeInsets.only(top: 100.0, left: 230.0, right: 230.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Image.asset('assets/ranking/top3.png', width: 110.0),
                    Spacer(), // default: flex:1
                    Image.asset('assets/ranking/top3.png', width: 110.0),
                    Spacer(),
                    Image.asset('assets/ranking/top3.png', width: 110.0)
                ],),
              ),

              Container(
                padding: EdgeInsets.only(top: 175.0, left: 230.0, right: 230.0),
                child:ListView(
                  children: <Widget> [Column(mainAxisAlignment: MainAxisAlignment.center,),
                    Rank(),
                    Rank2(),
                    Rank(),
                    Rank2()
                  ],
                ),
              )
            ],),
        )
    );
  }
}

class Rank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(

          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('assets/ranking/4th_.png')
        )
      ),
    );
  }
}
class Rank2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 200,
      height: 100,
      decoration: BoxDecoration(

          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('assets/ranking/4th_.png')
          )
      ),
    );
  }
}