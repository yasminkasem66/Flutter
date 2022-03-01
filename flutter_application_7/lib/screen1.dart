import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const Screen2();
    }));
  }

  const Screen1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("screen 1"),
      ),
      body: Center(
        child: InkWell(
          child: const Text(
            "go to screen 2",
            style: TextStyle(fontSize: 20),
          ),
          onTap: () => selectScreen(context),
        ),
      ),
    );
  }
}
