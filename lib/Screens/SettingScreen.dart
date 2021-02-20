import 'package:flutter/material.dart';
import 'package:user_preferences/Widgets/Custom_Drawer.dart';
import 'package:user_preferences/Widgets/Settings_Body.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: SettingsBody(),
      drawer: CustomDrawer(),
    );
  }
}
