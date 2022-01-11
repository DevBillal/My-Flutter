import 'package:first_44/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DisplayNavigator());
}

class DisplayNavigator extends StatefulWidget {
  const DisplayNavigator({Key? key}) : super(key: key);

  @override
  _DisplayNavigatorState createState() => _DisplayNavigatorState();
}

class _DisplayNavigatorState extends State<DisplayNavigator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyBody(),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            'Display',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Text('There are no text here'),
      ),
    );
  }
}
