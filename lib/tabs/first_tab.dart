import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade100,
      child: const Center(
        child: Text(
          '1ST TAB',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
