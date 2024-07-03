import 'package:flutter/material.dart';
import 'package:perwebsite/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
          useMaterial3: true),
      home: HomePage(),
    );
  }
}
