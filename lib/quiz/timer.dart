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
class _timer extends State<timer> {
  late StreamSubscription<int> subscription;
  int? _currentTick;

  @override
  initState() {
    super.initState();
    _start(50);
  }

  void _start(int duration) {
    subscription = Ticker().tick(ticks: duration).listen((value) {
      setState(() {
        _currentTick = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 20.0,
      decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Container(
        alignment: const Alignment(0.9,0),
        child: Text(
          _currentTick == null ? '' : _currentTick.toString(),
          style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    );
  }
}

