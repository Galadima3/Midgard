import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
class AppBarX extends StatelessWidget {
  const AppBarX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade400,
        leading: IconButton(
          onPressed: () {
            //do something
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //do something
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {
              //do something
            },
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: Center(
          child: Text(
        'Mylez',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      )),
    );
  }
}
