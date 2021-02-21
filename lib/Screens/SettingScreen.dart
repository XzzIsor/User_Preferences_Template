import 'package:flutter/material.dart';
import 'package:user_preferences/Provider/User_Preference_Provider.dart';
import 'package:user_preferences/Widgets/Custom_Drawer.dart';
import 'package:user_preferences/Widgets/Settings_Body.dart';

class SettingsScreen extends StatefulWidget {

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final prefs = UserPreference.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
        backgroundColor: (prefs.seconndaryColor) ? Colors.black : Colors.amber,
      ),
      body: SettingsBody(() => setState((){})),
      drawer: CustomDrawer(),
    );
  }
}
