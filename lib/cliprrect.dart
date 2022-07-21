import 'package:flutter/material.dart';

class ClipRR extends StatelessWidget {
  const ClipRR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Container(
          height:250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}