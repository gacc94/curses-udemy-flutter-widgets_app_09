import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = 'SnackBarScreen';
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('SnackBar Screen')));
  }
}
