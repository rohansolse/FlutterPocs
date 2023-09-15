import 'dart:io';

import 'package:float_column_alternative/utils/constants.dart';
import 'package:flutter/material.dart';

class ExpandedCards extends StatelessWidget {
  const ExpandedCards({super.key, required this.link, required this.title, required this.description});
  final String title;
  final String description;
  final String link;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      /** Card Widget **/
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: MyColors.primaryColor,
        child: SizedBox(
          width: 300,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: MyColors.secondaryColor,
                  radius: 108,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=2"), //NetworkImage
                    radius: 100,
                  ), //CircleAvatar
                ), //CircleAvatar
                const SizedBox(
                  height: 10,
                ), //SizedBox
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 30,
                    color: MyColors.secondaryColor,
                    fontWeight: FontWeight.w500,
                  ), //Textstyle
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    color: MyColors.secondaryColor,
                  ), //Textstyle
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () => {Navigator.pop(context)},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyColors.primarySecondShadeColor)),
                    child: const Padding(
                      padding: EdgeInsets.all(4),
                      child: Row(
                        children: [
                          Icon(Icons.touch_app),
                          Text('Visit'),
                        ],
                      ),
                    ),
                  ),
                ) //SizedBox
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ), //Card
    ); //Center;
  }
}
