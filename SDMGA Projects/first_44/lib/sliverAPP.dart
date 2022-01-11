// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               bottom: AppBar(
//                 backgroundColor: Colors.transparent,
//                 title: Container(
//                   height: 45,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.search),
//                       border: OutlineInputBorder(),
//                       hintText: "Search",
//                     ),
//                   ),
//                 ),
//               ),
//               pinned: true,
//               floating: true,
//               expandedHeight: 250,
//               flexibleSpace: FlexibleSpaceBar(
//                 title: Text('Sliver App Bar By Ahsan'),
//                 background: Image.asset(
//                   'imasge/emrose.jpg',
//                 ),
//               ),
//             ),
//             SliverGrid(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 4.0,
//                 crossAxisSpacing: 4.0,
//               ),
//               delegate: SliverChildListDelegate([
//                 Card(
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: ListTile(
//                       title: Text('Ahsan'),
//                       tileColor: Colors.blue,
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: ListTile(
//                       title: Text('Ahsan'),
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: ListTile(
//                       title: Text('Ahsan'),
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: ListTile(
//                       title: Text('Ahsan'),
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }