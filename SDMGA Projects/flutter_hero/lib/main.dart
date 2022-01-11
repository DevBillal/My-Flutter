import 'package:flutter/material.dart';
import 'package:flutter_hero/detail.dart';

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
          title: Text('Hero Animation'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<SuperHero> hero = [];

void addHero(){
  hero.add(new SuperHero("assets/black_widow.png", "Black Widow", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."));
  hero.add(new SuperHero("assets/captain_america.png", "Captain America", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."));
  hero.add(new SuperHero("assets/hulk.png", "Hulk", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."));
  hero.add(new SuperHero("assets/iron_man.png", "Iron Man", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."));
  hero.add(new SuperHero("assets/loki.png", "Loki", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."));
  hero.add(new SuperHero("assets/nick_fury.png", "Nick Fury", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."));
  hero.add(new SuperHero("assets/thor.png", "Thor", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."));
  hero.add(new SuperHero("assets/war_machine.png", "War Machine", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."));


}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState(){
    addHero();
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth>600){
          return WideLayout();
        }else{
          return NarrowLayout();
        }
      },
    );
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({Key? key}) : super(key: key);

  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
   SuperHero?  _superHero;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        Expanded(
          flex: 2,
          child: HeroItem(onSuperHeroTap: (superHero ) {
            print(superHero.name);
            setState(() {
              _superHero=superHero;
            });
          },),
        ),

        Expanded(
          flex: 3,
            child: _superHero==null?MyDetailPage(hero[0]):MyDetailPage(_superHero),
        ),

      ],

    );
  }
}


class NarrowLayout extends StatefulWidget {
  const NarrowLayout({Key? key}) : super(key: key);

  @override
  _NarrowLayoutState createState() => _NarrowLayoutState();
}

class _NarrowLayoutState extends State<NarrowLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeroItem(onSuperHeroTap: (superHero ) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyDetailPage(superHero)));
      },),
    );
  }
}





class SuperHero{
  String image;
  String name;
  String description;

  SuperHero(this.image,this.name,this.description);

}



class HeroItem extends StatefulWidget {
  final void Function(SuperHero) onSuperHeroTap;
  const HeroItem({Key? key,required this.onSuperHeroTap}) : super(key: key);

  @override
  State<HeroItem> createState() => _HeroItemState();
}

class _HeroItemState extends State<HeroItem> {
  Widget MyHero(BuildContext context,int index){
    return GestureDetector(
      onTap: ()=>widget.onSuperHeroTap(hero[index]),

        //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyDetailPage(hero[index])));

      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Hero(
                  tag: hero[index],
                  child: Image.asset(hero[index].image.toString()),
              ),
              SizedBox(width: 16,),
              Text(hero[index].name),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: hero.length,
          itemBuilder: (context,index)=>MyHero(context,index),

      ),
    );
  }
}

