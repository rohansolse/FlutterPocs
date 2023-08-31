import 'package:flutter/material.dart';

class TooltipButton extends StatelessWidget {
  const TooltipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'This is a tooltip',
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Hover Me'),
      ),
    );
  }
}
