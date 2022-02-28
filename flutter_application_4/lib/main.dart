import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: "Quicksand",
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 72.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber),
            headline6: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
            ),
            // bodyText2: TextStyle(fontFamily: "OpenSans",  fontSize: 30, color: Colors.amber),
          ),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
            fontFamily: "OpenSans",
            fontSize: 15,
          ))),
      home: const MyHomePage(title: 'DateTime Format &Fonts'),
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
    Info(name: "AAAAA", height: 125, date: DateTime.now()),
  ];

  void x(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return ListView.builder(
            itemCount: li.length,
            itemBuilder: (_, index) {
              return Container(
                padding: const EdgeInsets.all(20),
                child: Card(
                    // color: Colors.deepPurple,
                    color: Theme.of(ctx).primaryColor,
                    shadowColor: Colors.amber,
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(li[index].name,
                                  style: Theme.of(ctx).textTheme.titleLarge),
                              Text("${li[index].height}",
                                  style: const TextStyle(
                                      color: Colors.amber, fontSize: 30)),
                            ],
                          ),
                          Text(
                              "${DateFormat('yy-MMM-dd').format(li[index].date)} ",
                              style: const TextStyle(
                                  color: Colors.amber, fontSize: 30)),
                        ],
                      ),
                    )),
              );

              //             children: [
              //   ...li
              //       .map((val) =>)
              //       .toList()
              // ],
            },
            // mainAxisAlignment: MainAxisAlignment.center,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          // alignment: Alignment.center,
          height: double.infinity,
          color: b,
          child: Image.network("https://images.unsplash.com/photo-1579547621115-c3a18faa2980?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1839&q=80",
          fit: BoxFit.cover,),
                        // Image.asset("assets/images/gradienta-1QELoURk2Wo-unsplash.jpg")

         
           
        ),
        floatingActionButton:FloatingActionButton( 
          child: const Icon(Icons.add),
          onPressed: ()=> x(context),
        ) ,);
  }
}
