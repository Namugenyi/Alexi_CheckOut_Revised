import 'package:flutter/material.dart';
import 'package:flutter_app/generateRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner from top of screen

      initialRoute: '/Shop',
      onGenerateRoute: RouteGenerator.generateRoute,
      // routes: {
      //   '': (context) => homePage(),
      // }
    );
  }
}
