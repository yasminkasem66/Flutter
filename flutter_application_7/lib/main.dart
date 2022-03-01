import 'package:flutter/material.dart';
import 'package:flutter_application_7/screen1.dart';
import 'screen1.dart';
import 'screen2.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void selectScreen(BuildContext ctx , int n) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      if(n==1)  return const Screen1();
      return const Screen2();
    }));
  }

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("main screen" , style: TextStyle(fontSize: 20 , color: Colors.transparent,),),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              
              child:  const Text(
                "go to screen 1",
                style: TextStyle(fontSize: 20 , color: Colors.transparent,),
              ),
              onTap: () => selectScreen(context,1),
            ),
            InkWell(
              child: const Text(
                "go to screen 2",
                style: TextStyle(fontSize: 20 , color: Colors.transparent,),
              ),
              onTap: () => selectScreen(context,2),
            ),
          ],
        ),
      ),
    );
  }
}
