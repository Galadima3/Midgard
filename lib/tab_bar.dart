// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:midgard/tabs/first_tab.dart';
import 'package:midgard/tabs/second_tab.dart';
import 'package:midgard/tabs/third_tab.dart';

class TabBarx extends StatelessWidget {
  const TabBarx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TAB BAR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Expanded(
              child:
                  TabBarView(children: [FirstTab(), SecondTab(), ThirdTab()]),
            ),
          ],
        ),
      ),
    );
  }
}
