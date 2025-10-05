import 'package:flutter/material.dart';
import 'package:widgets_app_09/presentation/screens/ui_control/widgets/checkbox.dart';
import 'package:widgets_app_09/presentation/screens/ui_control/widgets/radio_group.dart';

class UiControlScreen extends StatelessWidget {
  static const String name = 'UiControlScreen';
  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ui Control Screen')),
      body: const _UiControlView(),
    );
  }
}

//*UiControlView
final class _UiControlView extends StatefulWidget {
  const _UiControlView();

  @override
  State<_UiControlView> createState() => _UiControlViewState();
}

//*UiControlViewState
final class _UiControlViewState extends State<_UiControlView> {
  bool _developerMode = false;

  @override
  void initState() {
    super.initState();
    _developerMode = false;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Enable/Disable Developer Mode'),
            value: _developerMode,
            onChanged: (value) {
              setState(() {
                _developerMode = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              _developerMode ? 'Developer Mode: ON' : 'Developer Mode: OFF',
            ),
          ),
          const RadioGroupView<Transportation>(), //? RadioGroupView

          const CheckboxView(), //? CheckboxView
        ],
      ),
    );
  }
}
