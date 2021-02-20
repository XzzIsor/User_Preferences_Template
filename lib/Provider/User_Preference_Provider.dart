import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static UserPreference instance;
  SharedPreferences prefs;

  UserPreference._();

  static UserPreference getInstance() {
    if (instance == null) {
      instance = UserPreference._();
    }
    return instance;
  }

  Future<void> initializeSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    return;
  }

  SharedPreferences getPrefs(){
    return prefs;
  }
}
