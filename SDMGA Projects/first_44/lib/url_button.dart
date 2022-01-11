// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

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
//         appBar: AppBar(
//           title: const Text('URL Button'),
//         ),
//         body: const Center(
//           child: (ElevatedButton(
//             onPressed: urlLauncher,
//             child: Text('Launch'),
//           )),
//         ),
//       ),
//     );
//   }
// }

// urlLauncher() async {
//   const url = "https://flutter.dev";
//   if (await canLaunch(url)) {
//     await launch(
//       url,
//       forceSafariVC: false,
//       forceWebView: false,
//       enableJavaScript: true,
//     );
//   } else {
//     return "Cant launch $url";
//   }
// }
