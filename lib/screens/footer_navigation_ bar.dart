import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

import '../custom_icons.dart';

class FooterNavigationBar extends StatefulWidget {
  static const routeName = '/navigation-bar';

  @override
  _FooterNavigationBarState createState() => _FooterNavigationBarState();
}

class _FooterNavigationBarState extends State<FooterNavigationBar> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
        'title': 'Categories',
      },
      {
        'page': HomeScreen(),
        'title': 'Revival Logo',
      },
      {
        'page': HomeScreen(),
        'title': 'Your Favorites',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons.revival,
              size: 10,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
