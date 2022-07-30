// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MediaQ extends StatelessWidget {
  const MediaQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Height: '+MediaQuery.of(context).size.height.toString()),
            Text('Width: '+MediaQuery.of(context).size.width.toString()),
            Text('Aspect Ratio: '+MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
            Text(MediaQuery.of(context).orientation.toString()),
            //Text(data)
          ],
        ),
      ),
    );
  }
}