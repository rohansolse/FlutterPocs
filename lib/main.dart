import 'package:flutter/material.dart';
import 'responsive_tables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Tables'),
        ),
        body: const ResponsiveTables(),
      ),
    );
  }
}
