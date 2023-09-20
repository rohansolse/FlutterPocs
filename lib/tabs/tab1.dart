import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        const Text(
          "Its Home Page",
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 129, 185, 132),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 50),
        Container(
          height: 300.0,
          width: 300.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("images/home.jpg"),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 228, 222, 222),
              width: 5,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.only(left: 60, right: 50),
          child: const Text(
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum!",
            style: TextStyle(
              color: Color.fromARGB(255, 155, 151, 151),
            ),
          ),
        ),
        const SizedBox(height: 30),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 67, 167, 72),
          foregroundColor: Colors.white,
          onPressed: () => {},
          child: const Icon(Icons.navigation),
        ),
      ],
    );
  }
}
