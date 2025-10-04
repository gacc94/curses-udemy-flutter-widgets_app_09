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

  AppTheme({required this.selectedColor})
    : assert(
        selectedColor >= 0 && selectedColor < colorList.length,
        'Selected color is out of range',
      );

  static ThemeData theme({
    required int selectedColor,
    bool centerTitle = false,
  }) {
    // assert(selectedColor >= 0 && selectedColor < colorList.length);
    return ThemeData(
      useMaterial3: true,
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
