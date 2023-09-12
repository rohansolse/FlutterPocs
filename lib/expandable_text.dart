import 'package:float_column_alternative/animated_container.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;
  final int minLines;

  const ExpandableText({super.key, required this.text, required this.maxLines, required this.minLines});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool showFullText = false;

  Widget expandableText(bool isExpanded) {
    return Text(
      widget.text,
      overflow: TextOverflow.ellipsis,
      maxLines: isExpanded ? widget.maxLines : widget.minLines,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.cyan.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                AnimatedExpandingContainer(
                  isExpanded: showFullText,
                  expandedWidget: expandableText(true),
                  unexpandedWidget: expandableText(false),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        showFullText = !showFullText;
                      });
                    },
                    child: Text(
                      showFullText ? 'Show less' : 'Show more',
                      style: const TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
