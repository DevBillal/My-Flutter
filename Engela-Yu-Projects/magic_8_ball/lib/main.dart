import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
      ),
      body: const MyBody(),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int magicBall8 = 1;
  void magicBallCNG() {
    setState(() {
      magicBall8 = Random().nextInt(5) + 1;
      print('$magicBall8 Got pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                magicBallCNG();
              },
              child: Image.asset('../images/ball$magicBall8.png'),
            ),
          ),
        ],
      ),
    );
  }
}
