import 'package:flutter/material.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ExpansionTile(
              title: Text("Parent Category 1"),
              leading: Icon(Icons.person), //add icon
              childrenPadding: EdgeInsets.only(left: 60), //children padding
              children: [
                ListTile(
                  title: Text("Child Category 1"),
                ),
                ListTile(
                  title: Text("Child Category 2"),
                ),
                //more child menu
              ],
            ),
            ExpansionTile(
              title: Text("Parent Category 2"),
              leading: Icon(Icons.person), //add icon
              childrenPadding: EdgeInsets.only(left: 60), //children padding
              children: [
                ListTile(
                  title: Text("Child Category 1"),
                ),
                ListTile(
                  title: Text("Child Category 2"),
                ),
                //more child menu
              ],
            )
          ],
        ),
      ), // your widgets that you want to put inside
    );
  }
}
