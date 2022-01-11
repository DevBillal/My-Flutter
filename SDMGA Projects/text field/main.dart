import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterfirebase44/message_widget.dart';

import 'data/message.dart';
import 'data/message_dao.dart';
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
        appBar: AppBar(
          title: Text('Flutter Firebase 44'),
        ),
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
        children: [

          //first item will be a list
          getMessageList(),

          Row(
            children: [

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Write Text',
                    ),
                  ),
                ),
              ),

              IconButton(
                onPressed: (){
                  createRecord();
                  print(_messageController.text);
                },
                icon: Icon(CupertinoIcons.arrow_right_circle_fill),
              ),

            ],

          ),

        ],

      ),
    );
  }

  void createRecord(){
    final message = Message(_messageController.text,DateTime.now());
    widget.messageDao.saveMessage(message);
    _messageController.clear();

  }

  Widget getMessageList(){
    return Expanded(
        child: FirebaseAnimatedList(
          query:widget.messageDao.getMessages(),
          itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
            final json = snapshot.value as Map<dynamic,dynamic>;
            final message = Message.fromJson(json);
            return MessageWidget(message.text, message.date);

          },
        ),
    );
  }

}