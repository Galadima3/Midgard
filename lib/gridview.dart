// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GridViewX extends StatefulWidget {
  const GridViewX({Key? key}) : super(key: key);

  @override
  State<GridViewX> createState() => _GridViewXState();
}

class _GridViewXState extends State<GridViewX> {
  List myNames = [
    'John',
    'Abraham',
    'Galadima',
    'James',
    'Bourne',
    'Kelvin',
    'Odanz',
    'Letters',
    'Josiah',
    'Lara',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: myNames.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    myNames[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
