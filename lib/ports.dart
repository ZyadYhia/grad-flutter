// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class Ports extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: DataTable(
        showBottomBorder: true,

        columns: const <DataColumn>
      [
        DataColumn(label: Text('Port'),),
        DataColumn(label: Text('Status'),),
      ],
          rows: const <DataRow>
        [
            DataRow(cells: <DataCell>
              [
                DataCell(Text('DC_1')),
                DataCell(Text('Available')),

          ],
          ),
            DataRow(cells: <DataCell>
            [
              DataCell(Text('DC_2')),
              DataCell(Text('Available')),

            ],
            ),
            DataRow(cells: <DataCell>
            [
              DataCell(Text('DC_3')),
              DataCell(Text('Available')),

            ],
            ),
          ],
      ),

    );
  }

}
