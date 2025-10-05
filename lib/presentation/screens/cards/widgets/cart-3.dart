import 'package:flutter/material.dart';

class CartView3 extends StatelessWidget {
  final double elevation;
  final String label;

  const CartView3({super.key, required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      color: theme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
        side: BorderSide(
          color: theme.surface,
          width: 1.1,
          style: BorderStyle.solid,
        ),
      ),
      elevation: elevation,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1511485977113-f34c92461ad9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Text(label),
                    Text('Product Description'),
                    Text('Product Price'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
