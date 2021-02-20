import 'package:flutter/material.dart';
import 'Provider/User_Preference_Provider.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/SettingScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final instance = UserPreference.getInstance();
  instance.initializeSharedPreference();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomeScreen(),
        "settings": (BuildContext context) => SettingsScreen(),
      },
    );
  }
}
