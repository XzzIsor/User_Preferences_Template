import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/SettingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/" :  (BuildContext context) => HomeScreen(),
        "settings" : (BuildContext context) => SettingsScreen(),
      },
      );
  }
}