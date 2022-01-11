import 'package:first_44/display.dart';
import 'package:first_44/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp
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
      home: Scaffold(
        drawer: MyBody(),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            'First App - 44',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        // body: const MyBody(),
      ),
    );
  }
}

//MyBody
class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../images/sunset.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('../images/me.png'),
              ),
              accountName: Text(
                'Billal Hossan',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              accountEmail: Text('billal.bd.8826@gmail.com'),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black87,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingsNavigator()));
              },
              subtitle: Text('all settings are appears here.'),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.smart_display,
                color: Colors.black87,
              ),
              title: Text(
                'Display',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayNavigator()));
              },
              subtitle: Text('customize your display.'),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.apps,
                color: Colors.black87,
              ),
              title: Text(
                'Apps',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('control your apps'),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.date_range,
                color: Colors.black87,
              ),
              title: Text(
                'Date & Time',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('set your date & time'),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.black87,
              ),
              title: Text(
                'Accounts',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('3 accounts created'),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 15),
            Divider(color: Colors.black),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(
                Icons.all_inbox_outlined,
                color: Colors.black87,
              ),
              title: Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.security,
                color: Colors.black87,
              ),
              title: Text(
                'Privecy Policy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]).toList(),
        ),
      ),
    );
  }
}
