import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5c11D4);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.orange,
  Colors.pink,
  Colors.indigoAccent,
  Colors.limeAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            "Colors must be beweenn 0 and ${_colorThemes.length} selected");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
