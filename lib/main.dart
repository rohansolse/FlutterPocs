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
  late TransformationController controller;
  TapDownDetails? tapDownDetails;
  late int zoomedTime = 1;

  @override
  void initState() {
    super.initState();
    controller = TransformationController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Zoomable Image'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onDoubleTapDown: (details) => tapDownDetails = details,
            onDoubleTap: () {
              final position = tapDownDetails!.localPosition;
              late double scale;
              if (zoomedTime == 1) {
                scale = 1.23;
                zoomedTime = 2;
              } else if (zoomedTime == 2) {
                scale = 1.5;
                zoomedTime = 0;
              } else {
                scale = 1;
                zoomedTime = 1;
              }
              final x = -position.dx * (scale - 1);
              final y = -position.dy * (scale - 1);
              controller.value = Matrix4.identity()
                ..translate(x, y)
                ..scale(scale);
            },
            child: InteractiveViewer(
              clipBehavior: Clip.none,
              transformationController: controller,
              panEnabled: false,
              scaleEnabled: true,
              child: Image.asset('assets/images/01.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
