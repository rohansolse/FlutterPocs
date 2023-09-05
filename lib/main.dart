import 'package:float_column_alternative/tooltip.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Tooltip(
          message: 'This message is from tooltip...',
          padding: EdgeInsets.all(20),
          showDuration: Duration(seconds: 0),
          decoration: ShapeDecoration(
            color: Colors.grey,
            shape: ToolTipCustomShape(),
          ),
          textStyle: TextStyle(color: Colors.white),
          preferBelow: false,
          verticalOffset: 20,
          child: IconButton(
            icon: Icon(Icons.info, size: 30.0),
            onPressed: null,
          ),
        ),
      ),
    );
  }
}
