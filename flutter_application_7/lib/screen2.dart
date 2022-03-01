import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
    final String str2;

    const Screen2(this.str2,{Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title:  const Text("screen 2"),
      ),
        body: Center(
        child: Column(
          children: [
           Text(
                str2,
                style: const TextStyle(fontSize: 10),
              ),
            InkWell(
              child: const Text(
                "go to screen 1",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () => selectScreen(context),
            ),
          ],
        ),
      ),
      
    );
  }

      void selectScreen(BuildContext ctx ) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return  Screen1("data from screen2");
    }));
  }
}