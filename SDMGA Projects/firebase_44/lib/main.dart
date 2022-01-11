// ignore_for_file: unused_import

import 'package:firebase_44/data/message.dart';
import 'package:firebase_44/data/message_dao.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  MyBody({Key? key}) : super(key: key);

  MessageDao messageDao = new MessageDao();

  @override
  _MyBodyState createState() => _MyBodyState();
}

TextEditingController _messageController = new TextEditingController();

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // first item will be a list
        children: [
          Row(children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintText: 'Write Text',
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                createRecord();
                print(_messageController.text);
              },
              icon: const Icon(
                CupertinoIcons.arrow_right_circle_fill,
              ),
            )
          ])
        ],
      ),
    );
  }

  void createRecord() {
    final message = Message(_messageController.text, DateTime.now());
    widget.messageDao.saveMessage(message);
    _messageController.clear();
  }
}
