import 'package:flutter/material.dart';

class InteractiveViewerExample extends StatelessWidget {
  const InteractiveViewerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(10.0),
        minScale: 0.1,
        maxScale: 1.6,
        child: Image.network('https://picsum.photos/250?image=9'),
      ),
    );
  }
}
