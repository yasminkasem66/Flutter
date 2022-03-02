import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Transform.rotate(
            angle:_value*(pi/180),
            child: Container(
              color: Colors.amber,
              width:_value,
              height: _value,
            ),
          ),
          // ignore: unnecessary_brace_in_string_interps
          Text('value  ${_value}',
              style: const TextStyle(
                fontSize: 30,
              )),
          Slider(
              value: _value,
              divisions: 5,
              min: 0,
              max: 360,
              label: "value",
              activeColor: Colors.green,
              inactiveColor:Colors.grey,
              onChanged: (double val) => setState(() => _value = val))
        ],
      ),
    );
  }
}
