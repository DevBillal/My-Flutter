import 'package:flutter/material.dart';
import 'people_page.dart';
import 'favourite_page.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/naruto.jpg'),
              fit: BoxFit.fill),
            ),
           currentAccountPicture: CircleAvatar(
             backgroundImage: AssetImage('assets/images/logo.jpg')),
              accountName: Text('Someone',style: TextStyle(fontSize: 20),),
              accountEmail: Text('soneone@gmail.com',style: TextStyle(fontSize: 20),)),
          ListTile(
            leading: Icon(Icons.account_box_rounded, color: Colors.black,),
            title: Text('People',style: TextStyle(color: Colors.black),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PeoplePage()));
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite, color: Colors.black,),
            title: Text('Favourite',style: TextStyle(color: Colors.black),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Favourite_page()));
            },
          ),

          ListTile(
            leading: Icon(Icons.share, color: Colors.black,),
            title: Text('Share',style: TextStyle(color: Colors.black),),
            onTap: (){

            },
          ),

          SizedBox(height: 16,),
          Divider(color: Colors.black,),
          SizedBox(height: 15),

          ListTile(
            leading: Icon(Icons.workspaces_filled, color: Colors.black,),
            title: Text('Work Group',style: TextStyle(color: Colors.black),),
            onTap: (){

            },
          ),

          ListTile(
            leading: Icon(Icons.account_tree_outlined, color: Colors.black,),
            title: Text('Share this Page',style: TextStyle(color: Colors.black),),
            onTap: (){

            },
          ),
        ],
      ),
    );
  }
}
