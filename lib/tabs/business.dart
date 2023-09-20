import 'package:flutter/material.dart';

class BusinessTab extends StatelessWidget {
  const BusinessTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        const Text(
          "Its Business Page",
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 43, 99, 172),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 50),
        Container(
          height: 300.0,
          width: 300.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            image: const DecorationImage(
              image: AssetImage("assets/images/business.jpg"),
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
          backgroundColor: const Color.fromARGB(255, 43, 99, 172),
          foregroundColor: Colors.white,
          onPressed: () => {},
          child: const Icon(Icons.navigation),
        ),
      ],
    );
  }
}
