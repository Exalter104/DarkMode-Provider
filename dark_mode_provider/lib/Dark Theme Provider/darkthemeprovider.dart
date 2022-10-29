import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
// passing the value of dark mode or light mode in the below methed
  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
