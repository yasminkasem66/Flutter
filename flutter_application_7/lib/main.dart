import 'package:flutter/material.dart';
import 'package:flutter_application_7/screen1.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'ui/reusable_widget/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Multi Screens',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(),
          '/x1': (context) => const Screen1(),
          '/x2': (context) => const Screen2(),
        });
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "main screen",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: const Text(
                "go to screen 1",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              onTap: () => selectScreen(context, 1),
            ),
            const SizedBox(
              height: 24.0,
            ),
            InkWell(
              child: const Text(
                "go to screen 2",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              onTap: () => selectScreen(context, 2),
            ),
          ],
        ),
      ),
      drawerScrimColor: Colors.cyan,
      drawer:  Mydrawer(),
    );
  }

  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(n == 1 ? '/x1' : '/x2', arguments: {
      'id': n==1?10:20,
      'title':n==1?"info1":"info2"
    });
  }
}
