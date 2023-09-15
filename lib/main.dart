import 'package:float_column_alternative/utils/constants.dart';
import 'package:flutter/material.dart';

//imported google's material design library
void main() {
  runApp(
      /**Our App Widget Tree Starts Here**/
      MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Lets Build Cards !!!'),
        backgroundColor: MyColors.primaryColor,
        centerTitle: true,
      ), //AppBar
      body: Center(
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
                    'GeeksforGeeks',
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
                    'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
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
                      onPressed: () => 'Null',
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyColors.primarySecondShadeColor)),
                      child: const Padding(
                        padding: EdgeInsets.all(4),
                        child: Row(
                          children: [Icon(Icons.touch_app), Text('Visit')],
                        ),
                      ),
                    ),
                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ), //Center
    ), //Scaffold
  ) //MaterialApp
      );
}
