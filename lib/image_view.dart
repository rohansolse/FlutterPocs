import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.network('https://picsum.photos/250?image=9'));
  }
}
