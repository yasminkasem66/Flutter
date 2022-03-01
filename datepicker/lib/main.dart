// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  DateTime _selectedDate = DateTime.now();
  void _datePicker() {
    showDatePicker(
      context: context,
      // initialDate: DateTime.now(),
      initialDate: DateTime.utc(2016, 2, 5),
      firstDate: DateTime(2010),
      lastDate: DateTime.now(),
    ).then((val) {
      if (val == null) {
        return;
      } else {
        setState(() {
          _selectedDate = val;
        });
      }
    });
  }

  Widget info(String title, Color color) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Text(
        title,
        style: const TextStyle(fontSize: 30),
      ),
      decoration: BoxDecoration(
        // color: color,
        gradient: const LinearGradient(colors: [
          Colors.red,
          Colors.blue
        ],
        begin: Alignment.topLeft,
        end:Alignment.bottomRight),
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(
        padding: const EdgeInsets.only(top:15),
        child: GridView(
          children: [
            info("title1", Colors.red),
            info("title2", Colors.red),
            info("title3", Colors.red),
             Center(
          child: RaisedButton(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        onPressed: _datePicker,
        child: Text(
          DateFormat.yMd().format(_selectedDate),
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
        color: Colors.black,
      )),

          ],
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
        ),
      )
      , // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
