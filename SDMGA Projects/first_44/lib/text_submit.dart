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
//         appBar: AppBar(
//           title: Text('Flutter Text Field'),
//         ),
//         body: MyBody(),
//       ),
//     );
//   }
// }

// class MyBody extends StatefulWidget {
//   const MyBody({Key? key}) : super(key: key);

//   @override
//   _MyBodyState createState() => _MyBodyState();
// }
// TextEditingController textEditingControllerUsername = TextEditingController();
// TextEditingController textEditingControllerPassword = TextEditingController();
// class _MyBodyState extends State<MyBody> {
//   final formkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 400,
//       width: 400,
//       child: Form(
//         key: formkey,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//             controller: textEditingControllerUsername,
//                 decoration: InputDecoration(
//                 labelText: 'Username',
//                   border: OutlineInputBorder(),
//     )

//             ),
//             SizedBox(
//               height: 16,
//             ),

//             TextField(
//                 controller: textEditingControllerPassword,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                   labelText: 'Password',
//                     border: OutlineInputBorder(),
//     )
//             ),

//             SizedBox(
//               height: 16,
//             ),

//             ElevatedButton(onPressed: (){
//               print(textEditingControllerUsername.text);
//               print(textEditingControllerPassword.text);

//             }, child: Text('Submit'))
//           ],
//         ),

//       ),
//       )
//     );
//   }
// }
