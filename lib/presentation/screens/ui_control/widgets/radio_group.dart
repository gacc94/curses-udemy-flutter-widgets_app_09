import 'package:flutter/material.dart';

class RadioGroupView<T> extends StatefulWidget {
  const RadioGroupView({super.key});

  @override
  State<RadioGroupView<T>> createState() => _RadioGroupViewState<T>();
}

enum Transportation { car, bike, bus, train, plane } //? Enum

class _RadioGroupViewState<T> extends State<RadioGroupView<T>> {
  Transportation _transportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioGroup<Transportation>(
          groupValue: _transportation,
          key: ValueKey(_transportation),
          onChanged: (value) {
            setState(() {
              if (value != null) {
                _transportation = value;
              }
            }); //? setState
          },
          child: ExpansionTile(
            title: const Text(
              'Radio Group',
              style: TextStyle(color: Colors.white),
            ),
            collapsedBackgroundColor: Colors.blueGrey,
            backgroundColor: Colors.blueGrey,
            children: [
              RadioListTile(
                title: const Text('By Car'),
                value: Transportation.car,
              ),
              RadioListTile(
                title: const Text('By Bike'),
                value: Transportation.bike,
              ),
              RadioListTile(
                title: const Text('By Bus'),
                value: Transportation.bus,
              ),
              RadioListTile(
                title: const Text('By Train'),
                value: Transportation.train,
              ),
              RadioListTile(
                title: const Text('By Plane'),
                value: Transportation.plane,
              ),
            ],
          ),
        ),

        Text(
          _transportation.name,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
