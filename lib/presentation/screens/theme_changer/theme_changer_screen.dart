import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app_09/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String name = 'ThemeChangerScreen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).colorScheme;
    final bool isDarkMode = ref.watch(
      themeNotifierProvider.select((value) => value.isDarkMode),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            color: theme.onPrimary,
            icon: Icon(
              isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
            onPressed: () =>
                ref.read(themeNotifierProvider.notifier).toggleDarkMode(),
          ),
        ],
      ),
      body: const _ThemeChangerView(key: Key('theme_changer_view')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        backgroundColor: theme.primary,
        elevation: 5,
        child: Icon(Icons.arrow_back, color: theme.onPrimary),
      ),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(colorsProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioGroup(
          groupValue: ref.watch(
            themeNotifierProvider.select((value) => value.selectedColor),
          ),
          onChanged: (value) {
            if (value == null) return;
            ref.read(themeNotifierProvider.notifier).setSelectedColor(value);
            // context.pop();
          },
          child: RadioListTile(
            value: index,
            title: Text('Option ${index + 1}', style: TextStyle(color: color)),
            activeColor: color,
            enabled: true,
          ),
        );
      },
    );
  }
}
