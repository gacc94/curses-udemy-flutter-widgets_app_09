import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app_09/config/themes/app_theme.dart';

//* Provider de tema
final themeProvider = StateProvider<bool>((ref) => false);

//* Provider de colores
final colorsProvider = StateProvider<List<Color>>((ref) => colorList);

//* Provider de color seleccionado
final selectedColorProvider = StateProvider<int>((ref) => 0);
