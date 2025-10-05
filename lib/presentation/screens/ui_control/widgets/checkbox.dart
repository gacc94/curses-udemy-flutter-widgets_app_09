import 'package:flutter/material.dart';

class CheckboxView extends StatefulWidget {
  const CheckboxView({super.key});

  @override
  State<CheckboxView> createState() => _CheckboxViewState();
}

class _CheckboxViewState extends State<CheckboxView> {
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Checkbox'),
        CheckboxListTile(
          title: const Text('Do you want lunch?'),
          value: wantsLunch,
          onChanged: (value) {
            setState(() {
              wantsLunch = value!;
            });
          },
        ),

        CheckboxListTile(
          title: const Text('Do you want dinner?'),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = value!;
            });
          },
        ),
      ],
    );
  }
}
