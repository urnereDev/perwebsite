import 'package:flutter/material.dart';
import 'package:perwebsite/view/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: "Poppins")),
      home: HomePage(),
    );
  }
}
