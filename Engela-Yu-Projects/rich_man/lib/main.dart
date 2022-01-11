import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.redAccent[400],
        ),
        body: Center(
          child: Image(
            image: AssetImage('../images/man.jpg'),
          ),
        ),
      ),
    ),
  );
}