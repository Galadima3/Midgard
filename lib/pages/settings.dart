import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              child: Icon(
                Icons.settings,
                size: 50,
              ),
            ),
          ),
          Text(
            'Page 3',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
