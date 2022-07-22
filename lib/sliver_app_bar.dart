// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SliverAppBarX extends StatelessWidget {
  const SliverAppBarX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [

          //sliver app bar
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            leading: (Icon(Icons.menu)),
            title: Text('Sliver AppBar'),
            centerTitle: true,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Image.asset('lib/images/corgi.jpg', fit: BoxFit.fill,),
              ),
            ),
          ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple.shade300,
              ),
            ),
          ),
        ),
         SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple.shade300,
              ),
            ),
          ),
        ),
         SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple.shade300,
              ),
            ),
          ),
        ),
         SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple.shade300,
              ),
            ),
          ),
        ),

          
        ],
      ),
    );
  }
}
