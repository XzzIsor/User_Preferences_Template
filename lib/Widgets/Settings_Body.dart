import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_preferences/Provider/User_Preference_Provider.dart';

class SettingsBody extends StatefulWidget {
  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  bool _colorSecundario = false;
  int _genderRatioOption;

  String _nombre = "Pedro";
  TextEditingController _textController;
  SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    UserPreference instance = UserPreference.getInstance();
    prefs = instance.getPrefs();
    _genderRatioOption = prefs.getInt('gender');
    _textController = new TextEditingController(text: _nombre);
  }

  _setSelectedRadio(int value) {
    prefs.setInt('gender', value);
    setState(() {
      _genderRatioOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(7.0),
          child: Center(
            child: Text(
              'Usuario',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Divider(),
        SwitchListTile(
          value: _colorSecundario,
          onChanged: (value) {
            setState(() {
              _colorSecundario = value;
            });
          },
          title: Text('Usar Color Secundario'),
          activeColor: Colors.amber,
        ),
        RadioListTile(
          title: Text('Macho Opresor'),
          value: 1,
          activeColor: Colors.amber,
          onChanged: _setSelectedRadio,
          groupValue: _genderRatioOption,
        ),
        RadioListTile(
          value: 2,
          title: Text("envra"),
          activeColor: Colors.amber,
          onChanged: _setSelectedRadio,
          groupValue: _genderRatioOption,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: _textController,
            decoration: InputDecoration(
                helperText: 'Ingrese el nombre del usuario',
                labelText: 'Nombre',
                focusColor: Colors.amber,
                fillColor: Colors.amber),
          ),
        )
      ],
    );
  }
}
