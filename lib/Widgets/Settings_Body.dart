import 'package:flutter/material.dart';
import 'package:user_preferences/Provider/User_Preference_Provider.dart';

class SettingsBody extends StatefulWidget {
  SettingsBody(this.setStateSettingScreen);
  Function setStateSettingScreen;

  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  bool _secondaryColor = false;
  int _genderRatioOption;
  TextEditingController _textController;
  UserPreference instance = UserPreference.getInstance();

  @override
  void initState() {
    super.initState();
    instance.lastPage = 'settings';
    _genderRatioOption = instance.gender;
    _secondaryColor = instance.seconndaryColor;
    _textController = new TextEditingController(text: instance.name);
  }

  _setSelectedRadio(int value) {
    instance.gender = value;
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
          value: _secondaryColor,
          onChanged: (value) {
            
              _secondaryColor = value;
              instance.seconndaryColor = value;
              widget.setStateSettingScreen(); 
            
          },
          title: Text('Usar Color Secundario'),
          activeColor: Colors.amber,
        ),
        RadioListTile(
          title: Text('Macho'),
          value: 1,
          activeColor: Colors.amber,
          onChanged: _setSelectedRadio,
          groupValue: _genderRatioOption,
        ),
        RadioListTile(
          value: 2,
          title: Text("Hembra"),
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
            onChanged: (value) {
              instance.name = value;
            },
          ),
        )
      ],
    );
  }
}
