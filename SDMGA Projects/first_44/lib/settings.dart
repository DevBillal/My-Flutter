import 'package:first_44/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SettingsNavigator());
}

class SettingsNavigator extends StatefulWidget {
  const SettingsNavigator({Key? key}) : super(key: key);

  @override
  _SettingsNavigatorState createState() => _SettingsNavigatorState();
}

class _SettingsNavigatorState extends State<SettingsNavigator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyBody(),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            'Settings',
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
