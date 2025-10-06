import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_09/config/router/go_router.dart';
import 'package:widgets_app_09/config/themes/app_theme.dart';
import 'package:widgets_app_09/presentation/providers/theme_provider.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor = ref.watch(selectedColorProvider);
    final isDarkMode = ref.watch(themeProvider);
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(
        selectedColor: selectedColor,
        centerTitle: true,
        isDarkMode: isDarkMode,
      ),
      title: 'Flutter App',
    );
  }
}
