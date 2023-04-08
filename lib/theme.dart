import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModel extends ChangeNotifier {
  late ThemeData _selectedTheme;
  late SharedPreferences _prefs;

  ThemeData light = ThemeData.light();
  ThemeData dark = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[850]!),
      ),
    ),
  );

  ThemeModel() {
    _loadTheme();
    }

  Future<void> _loadTheme() async {
    _prefs = await SharedPreferences.getInstance();
    bool isDarkTheme = _prefs.getBool('darkTheme') ?? false;
    _selectedTheme = isDarkTheme ? dark : light;
    notifyListeners();
  }




  ThemeData get selectedTheme => _selectedTheme;


  void swapTheme() {
    if (_selectedTheme == dark) {
      _selectedTheme = light;
    } else {
      _selectedTheme = dark;
    }
    SharedPreferences.getInstance()
        .then((value) => value.setBool("darkTheme", _selectedTheme == dark));

    notifyListeners();
  }
}
