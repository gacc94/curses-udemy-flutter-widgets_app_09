import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app_09/config/themes/app_theme.dart';

//* Provider de tema
final themeProvider = StateProvider<bool>((ref) => false);

//* Provider de colores
final colorsProvider = StateProvider<List<Color>>((ref) => colorList);

//* Provider de color seleccionado
final selectedColorProvider = StateProvider<int>((ref) => 0);

//* Provider de theme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme(selectedColor: 0));

  void toggleDarkMode() {
    state = AppTheme(
      selectedColor: state.selectedColor,
      isDarkMode: !state.isDarkMode,
    );
  }

  void setSelectedColor(int color) {
    state = AppTheme(selectedColor: color);
  }
}
