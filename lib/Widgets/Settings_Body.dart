import 'package:flutter/material.dart';

class SettingsBody extends StatefulWidget {
  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  bool _colorSecundario = false;
  int _genderRatioOption = 1;

  String _nombre = "Pedro";
  TextEditingController _textController;

  @override
  void initState() { 
    super.initState();
    _textController = new TextEditingController(text: _nombre);
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
          onChanged: (value){
            setState(() {
            _genderRatioOption = value;
            });
          },
          groupValue: _genderRatioOption,
          
        ),
        RadioListTile(
          value: 2,
          title:Text("envra"),
          activeColor: Colors.amber,
          onChanged: (value){
            setState(() {
            _genderRatioOption = value; 
            });
          },
          groupValue: _genderRatioOption,
          
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: _textController,
            decoration: InputDecoration(
              helperText: 'Ingrese el nombre del usuario',
              labelText: 'Nombre',
              focusColor: Colors.amber,
              fillColor: Colors.amber
            ),
          ),
        )

      ],
    );
  }
}
