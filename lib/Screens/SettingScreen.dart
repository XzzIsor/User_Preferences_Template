import 'package:flutter/material.dart';
import 'package:user_preferences/Widgets/Custom_Drawer.dart';

class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: Center(
        child: Text('Ajustes'),
      
      ),
      drawer: CustomDrawer(),

    );
  }
}
