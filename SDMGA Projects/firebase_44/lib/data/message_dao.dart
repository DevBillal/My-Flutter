import 'package:firebase_44/data/message.dart';
import 'package:firebase_database/firebase_database.dart';

class MessageDao {
  final DatabaseReference _messageRef =
      FirebaseDatabase.instance.reference().child("message");

  void saveMessage(Message message) {
    _messageRef.push().set(message.toJson());
  }
}
