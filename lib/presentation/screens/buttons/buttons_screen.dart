import 'package:flutter/material.dart';
import 'package:widgets_app_09/config/themes/app_theme.dart';
import 'package:widgets_app_09/presentation/screens/buttons/custom_button.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'ButtonsScreen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons')),
      body: _ButtonView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.wifi_2_bar_outlined),
        onPressed: () {},
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme.onPrimary;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 8,
        children: [
          FilledButton.icon(
            icon: Icon(Icons.add),
            label: Text('Filled Button'),
            onPressed: () {},
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Outlined Button',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Text Button', style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Elevated Button',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.pending),
            label: Text('Elevated Button Icons'),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: theme),
          ),
          IconButton.filled(
            onPressed: () {},
            icon: Icon(Icons.add, color: theme),
          ),
          IconButton.outlined(
            onPressed: () {},
            icon: Icon(Icons.add, color: theme),
          ),
          FilledButton(
            onPressed: () {},
            child: Text('Filled Button', style: TextStyle(color: Colors.white)),
          ),
          FilledButton.tonal(
            onPressed: () {},
            child: Text('Filled Button Tonal'),
          ),
          FilledButton.tonalIcon(
            icon: Icon(Icons.add),
            label: Text('Filled Button Icons'),
            onPressed: () {},
          ),
          FilledButton.tonalIcon(
            icon: Icon(Icons.add),
            label: Text('Filled Button Tonal Icons'),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.app_registration_sharp, color: theme),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colorList[1]),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
            ),
          ),
          IconButton.outlined(
            onPressed: () {},
            icon: Icon(Icons.app_registration_sharp, color: theme),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colorList[1]),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
            ),
          ),
          FilledButton.icon(
            icon: Icon(Icons.add),
            label: Text('Filled Button Icons'),
            onPressed: () {},
          ),
          OutlinedButton.icon(
            icon: Icon(Icons.add),
            label: Text('Outlined Button Icons'),
            onPressed: () {},
          ),
          TextButton.icon(
            icon: Icon(Icons.add),
            label: Text('Text Button Icons'),
            onPressed: () {},
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.add),
            label: Text('Elevated Button Icons'),
            onPressed: () {},
          ),
          CustomButton(
            icon: Icons.add,
            text: 'Custom Button',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
