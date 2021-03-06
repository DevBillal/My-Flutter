

import 'package:firebase_database/firebase_database.dart';

import 'message.dart';

class MessageDao{

  final DatabaseReference _messageRef = FirebaseDatabase.instance.reference().child("message");

  void saveMessage(Message message){
    _messageRef.push().set(message.toJson());
  }

  Query getMessages(){
    return _messageRef;
  }

}