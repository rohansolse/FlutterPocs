import 'package:float_column_alternative/constants.dart';
import 'package:float_column_alternative/drawer.dart';
import 'package:flutter/material.dart';

// importing material design library
void main() {
  runApp(const MaterialApp(
    // runApp method
    home: HomePage(),
  )); //MaterialApp
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// value set to false

  final scaffoldKey = GlobalKey<ScaffoldState>();
// App widget tree
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Navigation Drawer',
          ),
          backgroundColor: MyColors.primaryColor,
        ),
        drawer: const DrawerPage(),
        body: const Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ); //AppBa //MaterialApp
  }
}
