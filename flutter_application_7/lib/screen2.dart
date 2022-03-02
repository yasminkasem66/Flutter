import 'package:flutter/material.dart';
import 'screen1.dart';
import 'ui/reusable_widget/drawer.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

    // final String str2;

    // const Screen2(this.str2,{Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routeArg =ModalRoute.of(context)?.settings.arguments as Map<String,Object>; 
     return Scaffold(
      appBar: AppBar(
        title:  const Text("screen 2"),
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
                style:const TextStyle(fontSize: 10),
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
    drawer:  Mydrawer(),

    );
  }

      void selectScreen(BuildContext ctx ) {
        Navigator.of(ctx).pushNamed(
     '/x1'
    );
  }
}