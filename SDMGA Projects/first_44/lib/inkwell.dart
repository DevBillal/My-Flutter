// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
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
//         appBar: AppBar(title: Text('InkWell')),
//         body: MyInkWell(),
//       ),
//     );
//   }
// }

// class MyInkWell extends StatefulWidget {
//   const MyInkWell({Key? key}) : super(key: key);

//   @override
//   _MyInkWellState createState() => _MyInkWellState();
// }

// class _MyInkWellState extends State<MyInkWell> {
//   double containerHeight = 60.0;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: AnimatedContainer(
//         height: containerHeight,
//         width: containerHeight,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Colors.purple,
//               Colors.blue,
//               Colors.lightBlueAccent,
//               Colors.green,
//               Colors.yellow,
//               Colors.orange,
//               Colors.red,
//             ],
//           ),
//         ),
//         duration: Duration(seconds: 1),
//         child: InkWell(
//           onTap: () {
//             setState(
//               () {
//                 // if(containerHeight==60.0){
//                 //   containerHeight=100.0;
//                 // }else{
//                 //   containerHeight=60.0;
//                 // }
//                 containerHeight == 60.0
//                     ? containerHeight = 100.0
//                     : containerHeight = 60.0;
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
