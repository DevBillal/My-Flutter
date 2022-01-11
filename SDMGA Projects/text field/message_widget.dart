import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/modals.dart';
import 'package:intl/intl.dart';
import 'package:focused_menu/focused_menu.dart';

class MessageWidget extends StatefulWidget {
  //const MessageWidget({Key? key}) : super(key: key);
  MessageWidget(this.text,this.date);

  final String text;
  final DateTime date;

  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}
TextEditingController newTextMessageController = new TextEditingController();
class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return FocusedMenuHolder(
      onPressed: (){},
      menuItems: [
        FocusedMenuItem(
            title: Text('Edit'),
            backgroundColor: Colors.greenAccent,
            trailingIcon: Icon(Icons.edit),
            onPressed: (){
              FirebaseDatabase.instance.reference().child("message").orderByChild("text")
                  .equalTo(widget.text).once().then((value){
                    print(value.value);

                    Map data = value.value;
                    var key = data.keys.toString();
                    print(key.substring(1,key.length-1));

                    newTextMessageController.text = widget.text;

                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        scrollable: true,
                        title: Text('Change Text'),
                        content: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Write Text',
                                ),
                                controller: newTextMessageController,
                              )
                            ],
                          ),
                        ),

                        actions: [

                          ElevatedButton(
                              onPressed: (){

                                FirebaseDatabase.instance.reference().child("message").child(key.substring(1,key.length-1))
                                    .update({'text':newTextMessageController.text}).then((result){
                                      print('Success');

                                });
                                Navigator.pop(context);

                              },
                              child: Text('Submit'),
                          ),

                        ],

                      );
                    });

              });
            }
            ),

        FocusedMenuItem(
            title: Text('Delete'),
            backgroundColor: Colors.redAccent,
            trailingIcon: Icon(Icons.delete),
            onPressed: (){
                    FirebaseDatabase.instance.reference().child("message").orderByChild("text")
                        .equalTo(widget.text).once().then((value) {
                      print(value.value);

                      Map data = value.value;
                      var key = data.keys.toString();
                      print(key.substring(1, key.length - 1));

                      FirebaseDatabase.instance.reference().child("message").child(key.substring(1,key.length-1)).remove();

                    });

            },
            ),
      ],
      child: Center(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [

              Card(
                child: Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(widget.text),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: Text(
                  DateFormat('yyyy-MM-dd, hh:mma').format(widget.date).toString(),
                ),
              ),

            ],

          ),
        )
      ),
    );
  }
}
