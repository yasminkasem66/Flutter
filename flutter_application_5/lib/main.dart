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
      title: 'Expanded',
      theme: ThemeData(
        primarySwatch:   Colors.teal,
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom:const TabBar(tabs: [
            Tab(icon: Icon(Icons.category), text:("Part 1")),
            Tab(icon: Icon(Icons.person), text:("Part 2"))
          ]) ,
        ),
        body: TabBarView(  
          children: [
           Scaffold(
             appBar: AppBar(title:const Text("Jasmin")),
             body: const Center(child: Text("Center")),
           ),
            const Scaffold(
             body: Center(child: Text("Center"))
           ),
          ],
        ),
        drawerScrimColor:Colors.cyan,
        drawer: Drawer(
          child: Row(       
          children: [
          Expanded(
            flex:3,
            child: Image.asset("assets/images/gradienta-1QELoURk2Wo-unsplash.jpg"),
          ),
          Expanded(
            flex:1,
            child: Container(
              padding: const EdgeInsets.all(50),
              color: Colors.amber,
              child: const Text("1"),
            ),
          ),
          Expanded(
             flex:1,
            child: Container(
             padding: const EdgeInsets.all(50),
              color: const Color.fromARGB(255, 167, 23, 30),
              child: const Text("2"),
            ),
          ),
          Expanded(
             flex:1,
            child: Container(
             padding: const EdgeInsets.all(50),
              color: Colors.deepPurpleAccent,
              child: const Text("3"),
            ),
          ),
        ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}



//***********************
/// start Expanded 
//**********************
// body: Row(       
//         children: [
//         Expanded(
//           flex:3,
//           child: Image.asset("assets/images/gradienta-1QELoURk2Wo-unsplash.jpg"),
//         ),
//         Expanded(
//           flex:1,
//           child: Container(
//             padding: const EdgeInsets.all(50),
//             color: Colors.amber,
//             child: const Text("1"),
//           ),
//         ),
//         Expanded(
//            flex:1,
//           child: Container(
//            padding: const EdgeInsets.all(50),
//             color: const Color.fromARGB(255, 167, 23, 30),
//             child: const Text("2"),
//           ),
//         ),
//         Expanded(
//            flex:1,
//           child: Container(
//            padding: const EdgeInsets.all(50),
//             color: Colors.deepPurpleAccent,
//             child: const Text("3"),
//           ),
//         ),
//       ]),

//***********************
/// End Expanded 
//**********************