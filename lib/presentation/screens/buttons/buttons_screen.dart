import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'ButtonsScreen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.icon(
              icon: Icon(Icons.add),
              label: Text('Button'),
              onPressed: () {},
            ),
            FilledButton.icon(
              icon: Icon(Icons.add),
              label: Text('Button'),
              onPressed: () {},
            ),
            FilledButton.icon(
              icon: Icon(Icons.add),
              label: Text('Button'),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.wifi_2_bar_outlined),
        onPressed: () {},
      ),
    );
  }
}
