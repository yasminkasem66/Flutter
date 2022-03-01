import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  final String str1;

  const Screen1(this.str1, {Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("screen 1"),
      ),
      body: Center(
        child: Column(
          children: [
             Text(
                str1,
                style: const TextStyle(fontSize: 10),
              ),
            InkWell(
              child: const Text(
                "go to screen 2",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () => selectScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Screen2("data from screen1");
    }));
  }
}
