import 'package:flutter/material.dart';
import 'package:flutter_coffee_ui/Modules/spashscreen/spash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
      home: const Splashscreen(),
    );
  }
}
