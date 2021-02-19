import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/Wallpaper.jpg'),
              fit: BoxFit.cover,
            )),
          ),

          ListTile(
            leading: Icon(Icons.accessible_outlined),
            title: Text('Usuario'),
            onTap: (){
             Navigator.pushReplacementNamed(context, '/');
            },
          ),

          ListTile(
            leading: Icon(Icons.radio),
            title: Text('Localización'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.sanitizer),
            title: Text('Sin Lubricante'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
            onTap: (){
              Navigator.pushReplacementNamed(context, 'settings');  
           },
          ),
        ],
      ),
    );
  }
}