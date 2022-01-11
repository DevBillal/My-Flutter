import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  var receivedData;
  DetailProfile({this.receivedData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(receivedData["avatar"]),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(receivedData["first_name"]),
            )
          ],
        ),
      ),
    );
  }
}
