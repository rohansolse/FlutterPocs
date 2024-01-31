import 'package:flutter/material.dart';

class MobileTable extends StatelessWidget {
  const MobileTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 15.0,
        columns: const [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('City')),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text('John')),
            DataCell(Text('New York')),
          ]),
          DataRow(cells: [
            DataCell(Text('Jane')),
            DataCell(Text('Los Angeles')),
          ]),
          // Add more rows as needed
        ],
      ),
    );
  }
}
