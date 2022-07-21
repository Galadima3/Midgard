// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ImageX extends StatelessWidget {
  const ImageX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 250,
            width: 250,
            child: Image.asset(
              'lib/images/corgi.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
