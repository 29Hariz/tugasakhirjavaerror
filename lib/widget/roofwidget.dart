// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RoofWidget extends StatefulWidget {
  @override
  State<RoofWidget> createState() => _RoofWidgetState();
}

class _RoofWidgetState extends State<RoofWidget> {
  double _roofValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Roof Value: ${_roofValue.toStringAsFixed(0)}%',
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Container(
          width: 150,
          child: Slider(
              value: _roofValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _roofValue.toStringAsFixed(0),
              onChanged: (value) {
                setState(() {
                  _roofValue = value;
                });
              }),
        )
      ],
    );
  }
}
