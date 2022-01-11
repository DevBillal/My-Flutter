import 'package:flutter/material.dart';

class LibraryBody extends StatefulWidget {
  const LibraryBody({Key? key}) : super(key: key);

  @override
  _LibraryBodyState createState() => _LibraryBodyState();
}

class _LibraryBodyState extends State<LibraryBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Library Page'),
    );
  }
}
