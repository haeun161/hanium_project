import 'dart:async';
import 'package:flutter/material.dart';

class timer extends StatefulWidget {
  @override
  State<timer> createState() => _timer();
}

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x).take(ticks);
  }
}

class _timer extends State<timer>
  with SingleTickerProviderStateMixin {
  late StreamSubscription<int> subscription;
  int? currentTick;

  late AnimationController animationController;
  
  @override
  initState() {
    animationController = AnimationController(
      vsync: this,
    duration: Duration(seconds: 50),
    );
    animationController.addListener(() {
      setState(() {
      });
    });

    //animationController.repeat(reverse: false);
    animationController.forward();

    super.initState();

    //50초 타이머
    _start(50);
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _start(int duration) {
    subscription = Ticker().tick(ticks: duration).listen((value) {
      setState(() {
        currentTick = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 390.0,
          height: 20.0,
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: LinearProgressIndicator(
            value: animationController.value,
            valueColor: const AlwaysStoppedAnimation(Colors.red),
         ),
        ),
        SizedBox(width: 10.0),
        Container(

          alignment: const Alignment(0.9,0),
          child: Text(
            currentTick == null ? '' : currentTick.toString()+'초',
            style: TextStyle(fontSize: 10, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
      /*
        child: Container(

        alignment: const Alignment(0.9,0),
        child: Text(
          currentTick == null ? '' : currentTick.toString(),
          style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
       */
  }
}

