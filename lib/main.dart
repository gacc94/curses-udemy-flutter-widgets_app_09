import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      themeMode: ThemeMode.system,

      home: Scaffold(
        appBar: MyAppBar(),
        body: const Center(child: Text('Hello World!')),
      ),
      title: 'Flutter App',
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('Flutter App'));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
