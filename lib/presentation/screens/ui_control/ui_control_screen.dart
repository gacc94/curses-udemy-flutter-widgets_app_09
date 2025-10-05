import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const String name = 'UiControlScreen';
  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Ui Control Screen')));
  }
}
