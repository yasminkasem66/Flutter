import 'package:flutter/material.dart';
import 'package:themingflutter/theme/theme_constants.dart';
import 'package:themingflutter/theme/theme_manager.dart';
import 'package:themingflutter/utils/helper-widget.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
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
        TextTheme _textTheme = Theme.of(context).textTheme;
            bool isDark = Theme.of(context).brightness == Brightness.dark;


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Switch(
              value: _themeManager.themeMode == ThemeMode.dark,
              onChanged: (newValue) {
                _themeManager.toggleTheme(newValue);
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/profile_pic.png",
                  width: 200,
                  height: 200,
                ),
                addVerticalSpace(10),
                 Text("Your Name",
                    style: _textTheme.headline4?.copyWith(
                        color:isDark?Colors.white: Colors.black,fontWeight: FontWeight.bold
                    ),
                    ),
                addVerticalSpace(10),
                 Text(
                  "@yourusername",
                  style: _textTheme.subtitle1,
                ),
                addVerticalSpace(10),
                const Text(
                  "This is a simple Status",
                ),
                addVerticalSpace(20),
                TextField(),
                addVerticalSpace(20),
                ElevatedButton(child: Text("Just Click"), onPressed: () {}),
                addVerticalSpace(20),
                ElevatedButton(child: Text("Click Me"), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.blue), // For Test
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
