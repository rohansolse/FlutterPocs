import 'package:float_column_alternative/mobile_table.dart';
import 'package:float_column_alternative/tablet_table.dart';
import 'package:flutter/material.dart';

class ResponsiveTables extends StatelessWidget {
  const ResponsiveTables({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const TabletTable();
        } else {
          return const MobileTable();
        }
      },
    );
  }
}
