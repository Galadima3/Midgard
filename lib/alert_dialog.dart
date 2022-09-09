// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlertDX extends StatefulWidget {
  const AlertDX({Key? key}) : super(key: key);

  @override
  State<AlertDX> createState() => _AlertDXState();
}

class _AlertDXState extends State<AlertDX> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Title'),
            content: Text('Are you sure you want to exit?'),
            actions: [
              MaterialButton(
                onPressed: () {
                  //do something
                },
                child: Text('OK'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[100],
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'SHOW DIALOG',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
