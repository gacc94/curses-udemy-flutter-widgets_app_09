import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_09/config/router/go_router.dart';
import 'package:widgets_app_09/presentation/providers/theme_provider.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(themeNotifierProvider);

    // Esto asegura que se aplique después del build inicial
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: appTheme.theme().colorScheme.primary,
          systemNavigationBarIconBrightness: appTheme.isDarkMode
              ? Brightness.dark
              : Brightness.light, // íconos claros
          statusBarIconBrightness: appTheme.isDarkMode
              ? Brightness.dark
              : Brightness.light, // íconos barra superior
        ),
      );
    });

    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: appTheme.theme(),
      title: 'Flutter App',
    );
  }
}
