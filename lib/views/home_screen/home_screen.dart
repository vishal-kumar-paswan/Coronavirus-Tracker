import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF212B46),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Covid-19 Tracker',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'India',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Last updated 1 hour ago',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 6,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 125.0,
                          width: 125.0,
                        ),
                        color: Colors.white,
                      ),
                      Card(
                        elevation: 6,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 125.0,
                          width: 125.0,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 6,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 125.0,
                          width: 125.0,
                        ),
                        color: Colors.white,
                      ),
                      Card(
                        elevation: 6,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 125.0,
                          width: 125.0,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  DataTable(
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
                          DataCell(Text('100')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Kerala')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Kerala')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Kerala')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('Home Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Search Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Profile Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(backgroundColor: Colors.grey,
          icon: Icon(
            Icons.pie_chart_outline_outlined,
          ),
          label: 'Stats',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.sports_basketball_outlined,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.medical_services_outlined,
          ),
          label: 'Tips',
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.pink,
      iconSize: 30,
      onTap: _onItemTapped,
      elevation: 2,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      
    );
  }
}
