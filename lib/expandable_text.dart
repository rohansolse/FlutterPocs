import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool showFullText = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.cyan[300],
            border: Border.all(
              color: Colors.blueAccent,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.fastEaseInToSlowEaseOut,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.text,
                maxLines: showFullText ? null : 2, // Display 2 lines initially
                overflow: showFullText ? null : TextOverflow.ellipsis,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    showFullText = !showFullText;
                  });
                },
                child: Text(
                  showFullText ? 'Show less' : 'Show more',
                  style: const TextStyle(color: Colors.blueAccent),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
