import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = 'SnackBarScreen';
  const SnackBarScreen({super.key});

  //* Show SnackBar
  void _showSnackBar(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(Icons.error, color: theme.error),
          const SizedBox(width: 10),
          const Text('Hello World'),
        ],
      ),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(label: 'IsOk', onPressed: () {}),
      behavior: SnackBarBehavior.fixed,
      backgroundColor: theme.inverseSurface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _opeDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Hello World'),
          content: const Text('Hello World'),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text('Accept'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Hello World'),
                    const Text('Hello World'),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
                  ],
                );
                // _showSnackBar(context);
              },
              child: const Text('Show About Dialog'),
            ),

            FilledButton.icon(
              onPressed: () => _opeDialog(context),
              icon: const Icon(Icons.error),
              label: const Text('Custom Dialog'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show SnackBar'),
        icon: const Icon(Icons.error),
        onPressed: () => _showSnackBar(context),
      ),
    );
  }
}
