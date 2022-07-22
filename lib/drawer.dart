// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:midgard/pages/account.dart';
import 'package:midgard/pages/home.dart';
import 'package:midgard/pages/settings.dart';

class DrawerX extends StatelessWidget {
  const DrawerX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade400,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple.shade200,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'Mylez',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Account(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Page 3',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      body: Center(
          child: Text(
        'Mylez',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      )),
    );
  }
}
