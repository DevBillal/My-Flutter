import 'package:flutter/material.dart';
import 'package:navigation_deawer/navigation_drawer.dart';

class Favourite_page extends StatefulWidget {
  const Favourite_page({Key? key}) : super(key: key);

  @override
  _Favourite_pageState createState() => _Favourite_pageState();
}

class _Favourite_pageState extends State<Favourite_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Favourite Page'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('This is Favourite Page'),
      ),
    );
  }
}
