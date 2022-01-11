
import 'package:flutter/material.dart';

import 'main.dart';

class MyDetailPage extends StatefulWidget {
  //const MyDetailPage({Key? key}) : super(key: key);
  MyDetailPage(SuperHero superHero){
    _superHero=superHero;
  }

  SuperHero? _superHero;

  @override
  _MyDetailPageState createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget._superHero!.name),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

             Hero(
               tag: widget._superHero!,
               child:  Image.asset(widget._superHero!.image.toString()),
             ),

              SizedBox(height: 16,),

              Container(
                margin: EdgeInsets.all(20.0),
                child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget._superHero!.description),
                    ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
