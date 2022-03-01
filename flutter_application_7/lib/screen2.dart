import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
    void selectScreen(BuildContext ctx ) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const Screen1();
    }));
  }
  const Screen2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title:  Text("screen 2"),
      ),
        body: Center(
        child: InkWell(
          child: const Text(
            "go to screen 1",
            style: TextStyle(fontSize: 20),
          ),
          onTap: () => selectScreen(context),
        ),
      ),
      
    );
  }
}