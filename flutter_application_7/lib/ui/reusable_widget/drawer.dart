import 'package:flutter/material.dart';
// import '../screen1.dart';
// import '../screen2.dart';

class Mydrawer extends StatelessWidget {
  String? Str;
   Mydrawer({
    Key? key,
  }) : super(key: key);
  // const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
              (Str ?? "test" ),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          InkWell(
            child: const Text(
              "go to Main screen",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            onTap: () => selectScreen(context, 0),
          ),
          const SizedBox(
            height: 24.0,
          ),
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
    );
  }

  void selectScreen(BuildContext ctx, int n) {
    if(n==1){
    Navigator.of(ctx).pushNamed(
      '/x1', 
      arguments: {
      'id': 20,
      'title':"main"
    }).then((value) => Str= value as String?);
    }else{
    Navigator.of(ctx).pushReplacementNamed(
      n == 2? '/x2' :'/', 
      arguments: {
      'id': n == 1 ? 100 : 300,
      'title': n == 1 ? "info1" : "info2"
    });

    }
  }
}
