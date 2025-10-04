import 'package:flutter/material.dart';
import 'package:widgets_app_09/config/router/go_router.dart';
import 'package:widgets_app_09/config/themes/app_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(selectedColor: 10, centerTitle: true),
      title: 'Flutter App',
    );
  }
}
