// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
// import runApp()

void main() {
  runApp(const MyApp());
}

// it doesnt has state
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Trying'),
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
  int _counter = 0;
  bool passvisible = true;
  var W = Colors.white;
  var b = Colors.black;
  var r = Colors.red;
  var myController = TextEditingController();
  var str = "name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: b,
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.abc_sharp),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
              // style: Theme.of(context).accentColor.headline4,
              // style: Theme.of(context).primarySwatch.headline4,
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                    fillColor: b,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.green),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: str,
                    labelStyle:
                        const TextStyle(fontSize: 30, color: Colors.red),
                    hintText: "Enter Text",
                    hintStyle: TextStyle(fontSize: 20, color: W),
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Colors.green,
                    )),
                style: TextStyle(color: W),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: b,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.green),
                        borderRadius: BorderRadius.circular(6)),
                    labelText: "Email",
                    labelStyle:
                        const TextStyle(fontSize: 30, color: Colors.red),
                    hintText: "Enter Email",
                    hintStyle: TextStyle(fontSize: 20, color: W),
                    prefixIcon:
                        const Icon(Icons.alternate_email, color: Colors.green)),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: b,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.green),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: "Password",
                    labelStyle:
                        const TextStyle(fontSize: 30, color: Colors.red),
                    hintText: "Enter Password",
                    hintStyle: TextStyle(fontSize: 20, color: W),
                    suffixIcon: IconButton(
                      icon: Icon(
                          passvisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.green),
                      onPressed: () {
                        setState(() {
                          passvisible = !passvisible;
                        });
                      },
                    )),
                keyboardType: TextInputType.visiblePassword,
                obscureText: passvisible,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    prefixText: "+2    ",
                    suffixText: "****",
                    fillColor: b,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.green),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: "Phone number",
                    labelStyle:
                        const TextStyle(fontSize: 30, color: Colors.red),
                    hintText: "Enter Phone number",
                    hintStyle: TextStyle(fontSize: 20, color: W),
                    prefixIcon: const Icon(Icons.phone, color: Colors.green)),
                keyboardType: TextInputType.number,
              ),
            ),
            
            Container(
              margin: const EdgeInsets.all(20),
              child: RaisedButton(
                child: const Text(
                  "Get Value",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () => setState(() {
                  str = myController.text;
                }),
                color: Colors.green,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            W = W == Colors.black ? Colors.white : Colors.black;
            b = b == Colors.white ? Colors.black : Colors.white;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
