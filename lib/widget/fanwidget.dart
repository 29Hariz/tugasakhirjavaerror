// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FanWidget extends StatefulWidget {
  @override
  State<FanWidget> createState() => _FanWidgetState();
}

class _FanWidgetState extends State<FanWidget> {
  double _speed = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_circle_left_outlined),
          onPressed: () {
            setState(() {
              _speed = (_speed - 1).clamp(0.0, 4.0);
            });
          },
        ),
        for (int i = 1; i <= 4; i++) ...[
          Image.asset(
            "assets/icons/fan.png",
            height: 20,
            width: 20,
            color: i <= _speed ? Colors.black : Colors.black45,
          ),
          if (i < 4) const SizedBox(width: 5),
        ],
        IconButton(
            icon: const Icon(Icons.arrow_circle_right_outlined),
            onPressed: () {
              setState(() {
                _speed = (_speed + 1).clamp(0.0, 4.0);
              });
            })
      ],
    );
  }
}
