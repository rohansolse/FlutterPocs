import 'dart:io';

import 'package:float_column_alternative/Model/choice.dart';
import 'package:float_column_alternative/expanded_cards.dart';
import 'package:float_column_alternative/utils/cards.dart';
import 'package:flutter/material.dart';

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
          title: const Text("Flutter GridView Demo"),
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(
                  choice: choices[index],
                  key: null,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class SelectCard extends StatelessWidget {
  const SelectCard({super.key, required this.choice});
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[400],
      child: InkWell(
        onTap: () {
          print("--here");
          const ExpandedCards(
            link: "https://i.pravatar.cc/150?img=2",
            title: "test",
            description: "--------------",
          );
        },
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Icon(
                  choice.icon,
                  size: 50.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
