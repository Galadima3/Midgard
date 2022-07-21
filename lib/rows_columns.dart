import 'package:flutter/material.dart';

class RowsColumn extends StatelessWidget {
  const RowsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple[600],
            ),
          ),
          Container(
            width: 100,
            color: Colors.deepPurple.shade400,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple.shade200,
          ),
        ],
      ),
    );
  }
}
