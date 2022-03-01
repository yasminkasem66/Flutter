// ignore_for_file: deprecated_member_use

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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.orange),
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


  final List<Map<String, Object>> _pages = [
    {
      'page': Scaffold(
        // appBar: AppBar(title: const Text("Jasmin")),
        body: Center(
            child: RaisedButton(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          onPressed: (){},
          child: const Text(
            "date Picker",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          color: Colors.black,
        )),
      ),
      'title': const Text("HomePage")
    },
    {
      'page': const Scaffold(
        // appBar: AppBar(title: const Text("Jasmin")),
        body: Center(child: Text("Tap1")),
      ),
      'title': const Text("Contact")
    }
  ];

  // final List<Widget> _pages = [
  //   Scaffold(
  //     appBar: AppBar(title: const Text("Jasmin")),
  //     body: const Center(child: Text("Tap1")),
  //   ),
  //   const Scaffold(body: Center(child: Text("Tap2"))),
  // ];
  int _selectedPageIndex = 0;

  void _x(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: _pages[_selectedPageIndex]['title'] as Widget,
        ),
        body: _pages[_selectedPageIndex]['page'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            currentIndex: _selectedPageIndex,
            selectedFontSize: 15,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.shifting,
            onTap: _x,
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Colors.orange,
                  icon: Icon(Icons.category),
                  label: "Part 1"),
              BottomNavigationBarItem(
                  backgroundColor: Colors.orange,
                  icon: Icon(Icons.person),
                  label: "Part 2")
            ]),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
