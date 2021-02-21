import 'package:flutter/material.dart';
import 'Provider/User_Preference_Provider.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/SettingScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final instance = UserPreference.getInstance();
  await instance.initializeSharedPreference();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final instance = UserPreference.getInstance();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'User Preference Template',
      initialRoute: instance.lastPage,
      routes: {
        "/": (BuildContext context) => HomeScreen(),
        "settings": (BuildContext context) => SettingsScreen(),
      },
    );
  }
}
