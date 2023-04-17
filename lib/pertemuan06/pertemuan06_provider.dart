import 'package:flutter/material.dart';

class Pertemuan06Provider extends ChangeNotifier {
  var light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
  );

  var dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.purple
  );

  bool _enableDarkMode = false;
  bool latihan = false;

  bool get enableDarkMode => _enableDarkMode;
  

  set setBrightness(val) {
    _enableDarkMode = val;
    notifyListeners();
  }
  }
