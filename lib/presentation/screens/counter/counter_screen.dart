import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_09/presentation/providers/counter_provider.dart';
import 'package:widgets_app_09/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'CounterScreen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).colorScheme;
    final int counter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Riverpod'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.sunny : Icons.dark_mode),
            onPressed: () {
              ref.read(themeProvider.notifier).update((state) => !state);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 14, color: theme.primary),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => ref
                      .read(counterProvider.notifier)
                      .update((state) => state -= 1),
                  elevation: 5,
                  backgroundColor: theme.primary,
                  child: const Icon(Icons.remove, color: Colors.white),
                ),
                const SizedBox(width: 20),

                FloatingActionButton(
                  onPressed: () =>
                      ref.read(counterProvider.notifier).update((state) => 0),
                  backgroundColor: theme.error,
                  child: const Icon(Icons.refresh, color: Colors.white),
                ),
                const SizedBox(width: 20),

                FloatingActionButton(
                  onPressed: () => ref
                      .read(counterProvider.notifier)
                      .update((state) => state += 1),
                  elevation: 5,
                  backgroundColor: theme.primary,
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
