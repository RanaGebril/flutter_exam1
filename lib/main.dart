import 'package:exam/Screen1/home1.dart';
import 'package:exam/screen2/home2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home2.routeName,
      routes: {
        Home1.routeName:(context)=>Home1(),
        Home2.routeName:(context)=>Home2(),
      },
    );
  }
}
