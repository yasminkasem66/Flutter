import 'package:flutter/material.dart';
import 'screen2.dart';
import 'ui/reusable_widget/drawer.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
  // final String str1;
  // const Screen1(this.str1, {Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: const Text("screen 1"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${routeArg['id']}",
              style: const TextStyle(fontSize: 10),
            ),
            Text(
              "${routeArg['title']}",
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
      // drawer: const Mydrawer(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop("sth");
        },
      ),
    );
  }

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/x2');
  }
}
