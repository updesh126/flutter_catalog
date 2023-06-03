import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/login_page.dart';

import 'Pages/home_page.dart';
import 'Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // override means change in predefine function(Method).....of StatelessWidget
  @override
  Widget build(BuildContext context) {
    // BuildContext define by user as widget is tree structure, so it define location of elements like homepase,etc.
    return MaterialApp(
      // home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
