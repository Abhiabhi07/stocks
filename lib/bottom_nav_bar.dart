import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocks/screens/expenses_screen.dart';
import 'package:stocks/screens/home_screens.dart';
import 'package:stocks/screens/transaction.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> screens = [
    HomeScreen(),
    ExpensesScreen(),
    AllTransactionScreen()
  ];

  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.message_outlined),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.chart_pie),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      label: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_selectedIndex),
      // Create the bottom navigation bar widget
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          // Update the selected index
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
