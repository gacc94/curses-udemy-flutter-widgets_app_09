import 'package:flutter/material.dart';
import 'package:widgets_app_09/presentation/screens/cards/data.dart';
import 'package:widgets_app_09/presentation/screens/cards/widgets/card-4.dart';
import 'package:widgets_app_09/presentation/screens/cards/widgets/cart-3.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'CardsScreen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards', style: TextStyle(color: Colors.white)),
      ),
      body: const _CardsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
      ),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards2.map(
            (card) => CartView3(elevation: card.elevation, label: card.label),
          ),

          const Divider(thickness: 1, color: Colors.blueGrey, height: 20),

          ...cards2.map(
            (card) => _CardView2(elevation: card.elevation, label: card.label),
          ),

          const Divider(thickness: 1, color: Colors.blueGrey, height: 20),

          ...cards2.map(
            (card) => CartView3(elevation: card.elevation, label: card.label),
          ),

          const Divider(thickness: 1, color: Colors.blueGrey, height: 20),

          ...cards2.map(
            (card) => Card4(elevation: card.elevation, label: card.label),
          ),
        ],
      ),
    );
  }
}

//*CardView1
class _CardView1 extends StatelessWidget {
  final double elevation;
  final String label;

  const _CardView1({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined, color: Colors.black),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            // Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

//*CardView2
class _CardView2 extends StatelessWidget {
  final double elevation;
  final String label;

  const _CardView2({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
        side: const BorderSide(
          color: Colors.black54,
          width: 1.1,
          style: false ? BorderStyle.solid : BorderStyle.none,
        ),
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined, color: Colors.amber),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            // Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
