import 'package:flutter/material.dart';

import 'package:user_preferences/Provider/User_Preference_Provider.dart';
import 'package:user_preferences/Widgets/Custom_Drawer.dart';

class HomeScreen extends StatelessWidget {
  final prefs = UserPreference.getInstance();

  @override
  Widget build(BuildContext context) {
    prefs.lastPage = "/";

    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo :)"),
        backgroundColor: (prefs.seconndaryColor) ? Colors.black : Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Género: ${prefs.gender}"),
            Text("Nombre: ${prefs.name}"),
            Text("Color Secundario: ${prefs.seconndaryColor}"),
          ],
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
