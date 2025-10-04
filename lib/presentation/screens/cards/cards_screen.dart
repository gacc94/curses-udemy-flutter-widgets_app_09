import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'CardsScreen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards', style: TextStyle(color: Colors.white)),
      ),
      body: const Center(child: Text('Cards')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
