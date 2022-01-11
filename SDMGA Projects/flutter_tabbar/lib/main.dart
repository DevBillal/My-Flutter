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
      home: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            bottom: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.amber,
                image: DecorationImage(
                  image: NetworkImage('https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg'),
                  fit: BoxFit.cover
                )
              ),
              tabs: [

                Tab(
                    icon: Icon(Icons.cloud)
                ),
                Tab(
                    icon: Icon(Icons.beach_access_sharp)
                ),
                Tab(
                    icon: Icon(Icons.brightness_5_sharp)
                ),
                Tab(
                    icon: Icon(Icons.car_rental)
                ),

              ],

            ),
          ),

          body: TabBarView(
            children: [

              Center(
                child: Text('Its a cloudy day'),
              ),

              Center(
                child: Text('Its a rainy day'),
              ),

              Center(
                child: Text('Its a sunny day'),
              ),

              Center(
                child: Text('Its a car '),
              ),

            ],

          ),

        ),
      ),
    );
  }
}
