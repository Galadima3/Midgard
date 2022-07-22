import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade300,
      child: const Center(
        child: Text(
          '3RD TAB',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
