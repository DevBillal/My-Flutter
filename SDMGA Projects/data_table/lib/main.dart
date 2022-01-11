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
        debugShowCheckedModeBanner: false,
        title: "Data Table",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Data Table"),
          ),
          body: DataTable(
            columns: [
              DataColumn(label: Text("ID")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Email")),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Asfraf")),
                  DataCell(Text("ashrafunahid@gmail.com")),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("2")),
                  DataCell(Text("Aftab")),
                  DataCell(Text("Aftab.bd@gmail.com")),
                ],
              )
            ],
          ),
        ));
  }
}
