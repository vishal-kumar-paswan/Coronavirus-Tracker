import 'package:flutter/material.dart';

class AllStatesStatistics extends StatelessWidget {
  const AllStatesStatistics({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          dividerThickness: 0.0,
          sortAscending: true,
          columns: [
            DataColumn(
              label: Text(
                'State/UT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Colors.grey.shade900,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'C',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Colors.pink.shade600,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'A',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Colors.blue.shade600,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'R',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Colors.green.shade600,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'D',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('Kerala')),
                DataCell(Text('110')),
                DataCell(Text('58')),
                DataCell(Text('39')),
                DataCell(Text('5')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Maharashtra')),
                DataCell(Text('361')),
                DataCell(Text('306')),
                DataCell(Text('49')),
                DataCell(Text('11')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Haryana')),
                DataCell(Text('95')),
                DataCell(Text('50')),
                DataCell(Text('36')),
                DataCell(Text('12')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Goa')),
                DataCell(Text('55')),
                DataCell(Text('28')),
                DataCell(Text('17')),
                DataCell(Text('2')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Delhi')),
                DataCell(Text('259')),
                DataCell(Text('110')),
                DataCell(Text('59')),
                DataCell(Text('60')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Assam')),
                DataCell(Text('150')),
                DataCell(Text('30')),
                DataCell(Text('26')),
                DataCell(Text('7')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Bihar')),
                DataCell(Text('127')),
                DataCell(Text('36')),
                DataCell(Text('20')),
                DataCell(Text('16')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Chandigarh')),
                DataCell(Text('102')),
                DataCell(Text('50')),
                DataCell(Text('56')),
                DataCell(Text('9')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
