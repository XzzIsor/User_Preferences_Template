import 'package:flutter/material.dart';
import 'package:user_preferences/Widgets/Custom_Drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Juan muy buena persona"),
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Daniel es hembrita"),
              ],
          ),
      ),
      drawer: CustomDrawer(),
    ); 
  }
}