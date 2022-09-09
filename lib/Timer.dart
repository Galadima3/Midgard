// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';

class TimerX extends StatefulWidget {
  const TimerX({Key? key}) : super(key: key);

  @override
  State<TimerX> createState() => _TimerXState();
}

class _TimerXState extends State<TimerX> {
  int timeLeft = 30;
  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          timer.cancel();
        }
      });
    });
  }
  void resetTimer(){
    setState(() {
      timeLeft = 30;
    
    });
  }
  // void stopTimer(){
    
    
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade100,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                timeLeft == 0 ? 'DONE' : timeLeft.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                onPressed: startTimer,
                child: Text(
                  'Start Timer',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple,
              ),
              MaterialButton(
                onPressed: resetTimer,
                child: Text(
                  'Stop Timer',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple,
              ),
                ],
              ),
              MaterialButton(
                onPressed: resetTimer,
                child: Text(
                  'Reset Timer',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple,
              ),
            ],
          ),
        ));
  }
}
