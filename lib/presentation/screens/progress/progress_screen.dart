import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = 'ProgressScreen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Screen')),
      body: const _ProgressView(key: Key('progress_view')),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(milliseconds: 200),
        (value) => (value * 2) / 100,
      ).takeWhile((value) => value < 100).asyncMap((value) => value),
      builder: (context, snapshot) {
        final value = snapshot.data?.toDouble() ?? 0;
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LinearProgressIndicator(
                  value: value,
                  minHeight: 5,
                  borderRadius: BorderRadius.circular(value * 100),
                ),
                const SizedBox(height: 20),
                Text('${(value * 100).toStringAsFixed(0)}%'),
              ],
            ),
          ),
        );
      },
    );
  }
}
