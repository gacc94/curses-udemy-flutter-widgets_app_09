import 'package:flutter/material.dart';

class Card4 extends StatelessWidget {
  final double elevation;
  final String label;

  const Card4({super.key, required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/200/300',
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
