import 'package:float_column_alternative/animated_container.dart';
import 'package:flutter/material.dart';

class ExpandableText1 extends StatefulWidget {
  final String text;
  final int maxLines;
  final int minLines;

  const ExpandableText1({Key? key, required this.text, required this.maxLines, required this.minLines}) : super(key: key);

  @override
  State<ExpandableText1> createState() => _ExpandableText1State();
}

class _ExpandableText1State extends State<ExpandableText1> {
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
    return Column(
      children: [
        Container(
          color: Colors.cyan.shade200,
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
    );
  }
}
