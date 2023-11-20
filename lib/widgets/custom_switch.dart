import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  @override
  _SwitchButtonExampleState createState() => _SwitchButtonExampleState();
}

class _SwitchButtonExampleState extends State<CustomSwitch> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
      );
  }
}

