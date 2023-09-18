import 'package:float_column_alternative/Model/choice.dart';
import 'package:float_column_alternative/pages/expanded_cards.dart';
import 'package:flutter/material.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({super.key, required this.choice});
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        color: Colors.blue[400],
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExpandedCards(
                  link: choice.link,
                  title: choice.title,
                  description: choice.description,
                ),
              ),
            );
          },
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Icon(
                  choice.icon,
                  size: 50.0,
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                Text(
                  choice.title,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
