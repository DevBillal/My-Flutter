import 'package:flutter/material.dart';
import 'package:flutter_hero/main.dart';





class MyDetailPage extends StatefulWidget {
  final SuperHero? superHero;
  // MyDetailPage({Key? key,required this.superHero}) : super(key: key);
  MyDetailPage(this.superHero);

  @override
  State<MyDetailPage> createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.superHero!.name),
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_outlined)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Hero(
                tag: widget.superHero!,
                  child: Image.asset(widget.superHero!.image.toString())
              ),

              Card(
                elevation: 6,
                margin: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(widget.superHero!.description),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
