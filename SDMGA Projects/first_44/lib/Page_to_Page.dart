// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => MyApp(),
//         '/second': (context) => SecondPage(),
//       },
//     ),
//   );
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
//         appBar: AppBar(
//           title: Text('My 1st Page'),
//         ),
//         body: FirstPage(),
//       ),
//     );
//   }
// }

// class MyBody extends StatefulWidget {
//   const MyBody({Key? key}) : super(key: key);

//   @override
//   _MyBodyState createState() => _MyBodyState();
// }

// class _MyBodyState extends State<MyBody> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           Expanded(child: FirstPage()),
//         ],
//       ),
//     );
//   }
// }

// class FirstPage extends StatefulWidget {
//   const FirstPage({Key? key}) : super(key: key);

//   @override
//   _FirstPageState createState() => _FirstPageState();
// }

// class _FirstPageState extends State<FirstPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           /*Navigator.pushNamed(context, '/second',
//               arguments: ScreenArgument('Second Screen' , 'Go Back to Frist')
//            ); */
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => SecondPage()));
//         },
//         child: Text('Next Page'),
//       ),
//     );
//   }
// }

// class ScreenArgument {
//   String title;
//   String description;

//   ScreenArgument(this.title, this.description);
// }

// class SecondPage extends StatefulWidget {
//   const SecondPage({Key? key}) : super(key: key);

//   @override
//   _SecondPageState createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     ScreenArgument args =
//         ModalRoute.of(context)!.settings.arguments as ScreenArgument;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(args.title),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text(args.description),
//         ),
//       ),
//     );
//   }
// }
