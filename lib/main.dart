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

  List<Widget> _pages = [
    Text('First page', style: _textStyle),
    Text('Second page', style: _textStyle),
    Text('Third page', style: _textStyle),
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
          title: Text('BottomTabs'),
        ),
        body: Center(child: _pages[_selectedIndex]),
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
