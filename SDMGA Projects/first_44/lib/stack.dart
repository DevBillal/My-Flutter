// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const StackDemo(),
//     );
//   }
// }

// class StackDemo extends StatefulWidget {
//   const StackDemo({Key? key}) : super(key: key);

//   @override
//   _StackDemoState createState() => _StackDemoState();
// }

// class _StackDemoState extends State<StackDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('../images/flower.jpg'),
//               fit: BoxFit.fitHeight,
//             ),
//           ),
//         ),
//         Positioned(
//           bottom: 48,
//           right: 10,
//           left: 10,
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Card(
//               child: Column(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.all(10.0),
//                     child: Text(
//                       'Bike',
//                       style: TextStyle(
//                           fontSize: 40,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.red),
//                     ),
//                   ),
//                   Container(
//                     width: 100,
//                     height: 5,
//                     decoration: BoxDecoration(
//                       color: Colors.green.shade800,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.all(10.0),
//                     child: Text(
//                       'Bike is my love , i love it so much. every boy has a dream for bike , bike is life, its dream for us, its our travel partner also',
//                       textAlign: TextAlign.justify,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
