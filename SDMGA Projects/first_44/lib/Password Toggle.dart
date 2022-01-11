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
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Password Toggle'),
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

// class _MyBodyState extends State<MyBody> {
//   final formkey = GlobalKey<FormState>();
//   bool hidePassword = true;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Card(
//         child: Padding(
//           padding: EdgeInsets.all(10.0),
//           child: Form(
//             key: formkey,
//             child: Column(
//               children: [
//                 TextFormField(
//                   obscureText: hidePassword,
//                   maxLength: 15,
//                   keyboardType: TextInputType.visiblePassword,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                     prefixIcon: Icon(Icons.password),
//                     suffixIcon: IconButton(
//                       icon: Icon(hidePassword
//                           ? Icons.visibility
//                           : Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           hidePassword = !hidePassword;
//                         });
//                       },
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "value can't be empty";
//                     } else if (value.characters.length < 10) {
//                       return "Must be 10 characters";
//                     } else {
//                       return null;
//                     }
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       if (formkey.currentState!.validate()) {
//                         print(formkey.currentState!.validate().toString());
//                         //we will send the values to our database if they are
//                         // validated properly
//                       }
//                     });
//                   },
//                   child: Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
