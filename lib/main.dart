import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Center(child: Text("Magic 8 ball(Ask Me Anything)")),
              backgroundColor: Colors.blue[800],
            ),
            backgroundColor: Colors.blue[200],
            body: MagicBall()),
      ),
    );


class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
int ball= 1;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          child: Image.asset('images/ball$ball.png'),
          onPressed: () {
          
  setState(() {
      ball= Random().nextInt(5)+1;
           },
          );
         },
          
        ),
      ),
    );
  }
}
