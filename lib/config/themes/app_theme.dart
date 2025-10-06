import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.yellow,
  Colors.pink,
  Colors.orange,
  Colors.indigo,
  Colors.cyan,
  Colors.black,
  Colors.white,
  Colors.teal,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({required this.selectedColor, this.isDarkMode = false});

  ThemeData theme({bool centerTitle = false}) {
    return ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(
        backgroundColor: colorList[selectedColor],
        foregroundColor: Colors.white,
        centerTitle: centerTitle,
      ),
      // scaffoldBackgroundColor: Colors.grey[300],
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ButtonStyle(
      //     backgroundColor: WidgetStatePropertyAll(colorList[selectedColor]),
      //   ),
      // ),
    );
  }
}
