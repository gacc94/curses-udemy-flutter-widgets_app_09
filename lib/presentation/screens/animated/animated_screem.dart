import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const String name = 'AnimatedScreen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  bool _isAnimated = false;

  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  double _borderRadius = 10;

  void _toggleAnimation() {
    setState(() {
      final random = Random();
      _width = random.nextInt(200).toDouble();
      _height = random.nextInt(200).toDouble();
      final colors = [Colors.blue, Colors.red, Colors.green, Colors.yellow];
      _color = colors[random.nextInt(colors.length)];
      _borderRadius = random.nextDouble() * 100;
      _isAnimated = !_isAnimated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Screen')),
      body: Center(
        child: GestureDetector(
          onTap: () => _toggleAnimation(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_borderRadius),
              color: _color,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _toggleAnimation(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
