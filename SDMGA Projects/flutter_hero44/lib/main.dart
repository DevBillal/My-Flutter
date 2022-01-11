import 'package:flutter/material.dart';
import 'package:flutter_hero44/detail.dart';

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
      debugShowCheckedModeBanner: false,
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          //wide layout
          return WideLayout();
        } else {
          //Narrow layout
          return NarrowLayout();
        }
      },
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
      child: MyBody(),
    );
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({Key? key}) : super(key: key);

  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: MyBody(),
          ),
          Expanded(
            flex: 3,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}

class SuperHero {
  String image;
  String name;
  String description;

  SuperHero(this.image, this.name, this.description);
}

List<SuperHero> hero = [];

addItems() {
  hero.add(new SuperHero("assets/black_widow.png", "Black Widow",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled"));
  hero.add(new SuperHero("assets/captain_america.png", "Captain America",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled"));
  hero.add(new SuperHero("assets/hulk.png", "Hulk",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled"));
  hero.add(new SuperHero("assets/iron_man.png", "Iron Man",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled"));
  hero.add(new SuperHero("assets/loki.png", "Loki",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled"));
  hero.add(new SuperHero("assets/nick_fury.png", "Nick Fury",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled"));
  hero.add(new SuperHero("assets/thor.png", "Thor",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled"));
  hero.add(new SuperHero("assets/war_machine.png", "War Machine",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled"));
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  _MyBodyState() {
    addItems();
  }

  Widget MyHero(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyDetailPage(hero[index])));
      },
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Hero(
                      tag: hero[index],
                      child: Image.asset(hero[index].image.toString())),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: Container(
                    child: Text(hero[index].name),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        itemCount: hero.length,
        itemBuilder: (context, index) => MyHero(context, index),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 4.0,
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
