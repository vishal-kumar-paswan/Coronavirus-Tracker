import 'package:flutter/material.dart';

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
        BottomNavigationBarItem(
          backgroundColor: Colors.grey,
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
