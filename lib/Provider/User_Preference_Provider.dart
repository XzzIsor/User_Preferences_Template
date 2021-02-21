import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static UserPreference _instance;
  SharedPreferences prefs;

  UserPreference._();

  static UserPreference getInstance() {
    if (_instance == null) {
      _instance = UserPreference._();
    }
    return _instance;
  }

  Future<void> initializeSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    return;
  }

  get name {
    return prefs.getString('name') ?? '';
  }

  set name(String value) {
    prefs.setString('name', value);
  }

    get seconndaryColor {
    return prefs.getBool('seconndaryColor') ?? false;
  }

  set seconndaryColor(bool value) {
    prefs.setBool('seconndaryColor', value);
  }

    get gender {
   return prefs.getInt('gender') ?? 1;
  }

  set gender(int value) {
    prefs.setInt('gender', value);
  }

 get lastPage {
    return prefs.getString('lastPage') ?? '/';
  }

  set lastPage(String value) {
    prefs.setString('lastPage', value);
  }

}
