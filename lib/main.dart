import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: PickBall(),
        ),
      ),
    );

class PickBall extends StatefulWidget {
  @override
  _PickBallState createState() => _PickBallState();
}

class _PickBallState extends State<PickBall> {
  var ball = 1;

  void getBall() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: FlatButton(
                child: Image.asset('images/ball$ball.png'),
                onPressed: () {
                  getBall();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
