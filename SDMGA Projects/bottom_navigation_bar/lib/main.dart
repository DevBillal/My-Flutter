import 'package:bottom_navigation_bar/cart.dart';
import 'package:bottom_navigation_bar/home.dart';
import 'package:bottom_navigation_bar/library.dart';
import 'package:bottom_navigation_bar/message.dart';
import 'package:bottom_navigation_bar/search.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Bar',
      home: MyHome(),
    ));

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _currentIndex = 2;
  final pages = [
    MessageBody(),
    CartBody(),
    HomeBody(),
    LibraryBody(),
    SearchBody()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _currentIndex++;
            while (_currentIndex == 5) {
              _currentIndex = 0;
            }
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.black,
        // unselectedItemColor: Colors.white,
        // selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
            backgroundColor: HexColor("#ffff4444"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Cart',
            backgroundColor: HexColor("#76a5af"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Library',
            backgroundColor: HexColor("#54D157"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: HexColor("#8e7cc3")),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: pages[_currentIndex],
    );
  }
}
