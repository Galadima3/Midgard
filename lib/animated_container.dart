import 'package:flutter/material.dart';

class AnimatedX extends StatefulWidget {
  const AnimatedX({Key? key}) : super(key: key);

  @override
  State<AnimatedX> createState() => _AnimatedXState();
}

class _AnimatedXState extends State<AnimatedX> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple;
  double boxX = 0;
  double boxY = 0;

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }

  void _moveBox() {
    setState(() {
      boxX = -0.5;
      boxY = -1;
    });
  }

  void _defaultBox() {
    setState(() {
      boxHeight = 100;
      boxWidth = 100;
      boxColor = Colors.deepPurple;
      boxX = 0;
      boxY = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AnimatedContainer(
                alignment: Alignment(boxX, boxY),
                duration: const Duration(seconds: 2),
                height: boxHeight,
                width: boxWidth,
                color: boxColor,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: GestureDetector(
                    onTap: _expandBox,
                    child: Container(
                      color: Colors.deepPurple.shade400,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Grow',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: GestureDetector(
                    onTap: _changeBoxColor,
                    child: Container(
                      color: Colors.deepPurple.shade400,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Color',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: GestureDetector(
                    onTap: _moveBox,
                    child: Container(
                      color: Colors.deepPurple.shade400,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Move',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                child: GestureDetector(
                  onTap: _defaultBox,
                  child: Container(
                    color: Colors.deepPurple.shade400,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Default',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
