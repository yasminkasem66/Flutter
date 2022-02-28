import 'package:flutter/material.dart';
import 'info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
  var b = Colors.black;
  final List<Info> li = [
    Info(name: "Jasmin", height: 125, date: DateTime.now()),
    Info(name: "ALi", height: 125, date: DateTime.now()),
    Info(name: "VVV", height: 125, date: DateTime.now()),
    Info(name: "SSSS", height: 125, date: DateTime.now()),
    Info(name: "AAAAA", height: 125, date: DateTime.now())
  ];
  // final x1 = Info(name: "Jasmin", height: 125, date: DateTime.now());
  // final x2 = Info(name: "ALi", height: 125, date: DateTime.now());
  // final x3 = Info(name: "VVV", height: 125, date: DateTime.now());
  // final x4 = Info(name: "SSSS", height: 125, date: DateTime.now());
  // final x5= Info(name: "AAAAA", height: 125, date: DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            alignment: Alignment.center,
            color: b,
            child:SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...li
                    .map((val) => Container(
                          padding: const EdgeInsets.all(20),
                          child: Card(
                              color: Colors.blueAccent,
                              shadowColor: Colors.amber,
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(val.name,
                                            style: const TextStyle(
                                                color: Colors.amber,
                                                fontSize: 30)),
                                        Text("${val.height}",
                                            style: const TextStyle(
                                                color: Colors.amber,
                                                fontSize: 30)),
                                      ],
                                    ),
                                    Text("${val.date} ",
                                        style: const TextStyle(
                                            color: Colors.amber, fontSize: 30)),
                                  ],
                                ),
                              )),
                        ))
                    .toList(),
                // Text(x1.name , style: const TextStyle(color: Colors.amber , fontSize: 30 )),
                // Text(x2.name , style: const TextStyle(color: Colors.amber , fontSize: 30 )),
                // Text(x3.name , style: const TextStyle(color: Colors.amber , fontSize: 30 )),
                // Text(x4.name , style: const TextStyle(color: Colors.amber , fontSize: 30 )),
              ],
            )
            
            
            
            ,)));
  }
}
