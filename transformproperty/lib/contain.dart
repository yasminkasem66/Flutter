import 'dart:math';

import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  double _value = 0;
  Mycontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          transform: Matrix4.rotationZ(-pi / 6)..translate(0.0, _value, 0),
          width: 300,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepOrange.shade900,
            boxShadow: const [
              BoxShadow(
                blurRadius: 8,
                color: Colors.black,
                offset: Offset(0,2)
              )
            ]
          ),
          child: const Text(
            'My Shop',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
        Slider(
            value: _value,
            divisions: 5,
            min: 0,
            max: 2*pi,
            label: "value",
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            onChanged: (double val) => setState(() => _value = val))
      ],
    );
  }

  setState(double Function() param0) {}
}
