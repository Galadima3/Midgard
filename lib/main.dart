// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:midgard/appbar.dart';
import 'package:midgard/bottom_nav_bar.dart';
import 'package:midgard/drawer.dart';
import 'package:midgard/gesturedetector.dart';
import 'package:midgard/sliver_app_bar.dart';
import 'package:midgard/tab_bar.dart';
// import 'package:midgard/Images.dart';
// import 'package:midgard/cliprrect.dart';
// import 'package:midgard/expanded.dart';
// import 'package:midgard/gridview.dart';
// import 'package:midgard/homepage.dart';
// import 'package:midgard/rows_columns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      
      debugShowCheckedModeBanner: false,
      home: TabBarx(),
    );
  }
}
