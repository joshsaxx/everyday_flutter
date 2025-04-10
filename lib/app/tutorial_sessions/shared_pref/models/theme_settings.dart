import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/* ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade100,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.blue,
    onPrimary: Colors.white,
    secondary: Colors.lightBlueAccent, // replaces accentColor
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
  useMaterial3: true,
); */


ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.grey.shade100,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.lightBlueAccent,
    brightness: Brightness.light)
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.black87,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.lightBlueAccent,
    brightness: Brightness.dark,
  ),
);
/* ThemeData darkTheme = ThemeData(
  
    scaffoldBackgroundColor: Colors.black87,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.blue,
        onPrimary: Colors.white,
        secondary: Colors.lightBlueAccent,
        onSecondary: Colors.white,
        error: Colors.red,
        onError:Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,)); */

class ThemeSettings with ChangeNotifier{

  bool _darkTheme = false;

  SharedPreferences? _preferences;

  bool get darkTheme => _darkTheme;
  
  //once an instance of ThemeSettings is called, _loadSettingsFromPrefs runs to give initial value etc. 
  ThemeSettings(){
    _loadSettingsFromPrefs();
  }

  _initializePrefs() async {
    if (_preferences == null){
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadSettingsFromPrefs() async{
    await _initializePrefs();
    //?? means if null
    _darkTheme = _preferences?.getBool('darkTheme') ?? false;
    notifyListeners();
  }

  _saveSettingsToPrefs() async{
    await _initializePrefs();
    _preferences?.setBool('darkTheme', _darkTheme);
  }

  void toggleTheme(){
    _darkTheme = !_darkTheme;
    _saveSettingsToPrefs();
    notifyListeners();
  }


}