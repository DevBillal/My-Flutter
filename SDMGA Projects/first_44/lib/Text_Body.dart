// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Mybody());
// }

// class Mybody extends StatefulWidget {
//   const Mybody({Key? key}) : super(key: key);

//   @override
//   _MybodyState createState() => _MybodyState();
// }

// class _MybodyState extends State<Mybody> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Text Body'),
//         ),
//         body: const MyBody(),
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
//         children: const [
//           Card(
//             child: SizedBox(
//               width: 0,
//               height: 100,
//             ),
//           ),
//           MyTextBody(),
//           FormTable(),
//         ],
//       ),
//     );
//   }
// }

// class MyTextBody extends StatefulWidget {
//   const MyTextBody({Key? key}) : super(key: key);

//   @override
//   _MyTextBodyState createState() => _MyTextBodyState();
// }

// class _MyTextBodyState extends State<MyTextBody> {
//   // ignore: prefer_typing_uninitialized_variables
//   var errorText;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         width: 400,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             TextField(
//               maxLength: 15,
//               onSubmitted: (value) {
//                 setState(() {
//                   if (value.isEmpty) {
//                     errorText = "Can't be Empty";
//                   } else if (value.characters.length < 10) {
//                     errorText = "Must be 10 Chareacters";
//                   } else {
//                     errorText = null;
//                   }
//                 });
//               },
//               decoration: InputDecoration(
//                 border: const OutlineInputBorder(),
//                 /* enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.green,
//                   ),
//                 ),*/

//                 /*   focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Colors.green,
//                 ),
//               ),*/
//                 labelText: 'Name',
//                 errorText: errorText,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FormTable extends StatefulWidget {
//   const FormTable({Key? key}) : super(key: key);

//   @override
//   _FormTableState createState() => _FormTableState();
// }

// class _FormTableState extends State<FormTable> {
//   // ignore: prefer_typing_uninitialized_variables
//   var errorText2;
//   final _formKey = GlobalKey<FormState>();

//   TextEditingController userNameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         width: 400,
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextFormField(
//                 controller: userNameController,
//                 maxLength: 15,
//                 keyboardType: TextInputType.text,
//                 validator: (value) {
//                   setState(() {
//                     if (value!.isEmpty) {
//                       errorText2 = "Can't be Empty";
//                     } else if (value.characters.length < 10) {
//                       errorText2 = "Must be 10 Chareacters";
//                     } else {
//                       errorText2 = null;
//                     }
//                   });
//                 },
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(),
//                   /* enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.green,
//                   ),
//                 ),*/

//                   /*   focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Colors.green,
//                 ),
//               ),*/
//                   labelText: 'UserName',
//                   errorText: errorText2,
//                 ),
//               ),
//               TextFormField(
//                 controller: passwordController,
//                 maxLength: 10,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     errorText2 = "Can't be Empty";
//                   } else if (value.characters.length < 10) {
//                     errorText2 = "Must be 10 Chareacters";
//                   } else {
//                     errorText2 = null;
//                   }
//                   return errorText2;
//                 },
//                 keyboardType: TextInputType.visiblePassword,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: "Password",
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
