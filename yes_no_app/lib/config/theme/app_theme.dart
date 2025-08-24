import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6200EE);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.white,
  Colors.grey,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 3})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
        'Colors must be between 0 and ${_colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}
