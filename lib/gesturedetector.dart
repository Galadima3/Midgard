// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GestureX extends StatefulWidget {
  const GestureX({Key? key}) : super(key: key);

  @override
  State<GestureX> createState() => _GestureXState();
}

class _GestureXState extends State<GestureX> {
  int numberOfTimesTapped = 0;
  void _increment (){
    setState(() {
      numberOfTimesTapped++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped ' + numberOfTimesTapped.toString() + ' times',
              style: TextStyle(fontSize: 30),
            ),
            GestureDetector(
              onTap: _increment,
              child: Container(
                color: Colors.green.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Tap Me',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
