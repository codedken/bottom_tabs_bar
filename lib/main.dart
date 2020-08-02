import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const TextStyle _textStyle = TextStyle(
    fontSize: 40.0,
    color: Colors.blue,
  );
  int _selectedIndex = 0;

  List<Map<String, Object>> _pages = [
    {
      'title': 'First page',
      'page': Text('First page', style: _textStyle),
    },
    {
      'title': 'Second page',
      'page': Text('Second page', style: _textStyle),
    },
    {
      'title': 'Third page',
      'page': Text('Third page', style: _textStyle),
    },
  ];

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Object _bottomBarItem(String title, IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
      ),
      title: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedIndex]['title']),
        ),
        body: Center(child: _pages[_selectedIndex]['page']),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedTab,
          currentIndex: _selectedIndex,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.yellowAccent,
          unselectedItemColor: Colors.white,
          items: [
            _bottomBarItem('First page', Icons.category),
            _bottomBarItem('Second page', Icons.shop),
            _bottomBarItem('Third page', Icons.android),
          ],
        ),
      ),
    );
  }
}
