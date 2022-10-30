import 'package:flutter/material.dart';
import 'package:simple/presentation/screens/add_expense.dart';
import 'package:simple/presentation/screens/expenses.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Expenses(),
    AddExpense(),
    Text(
      'Index 2: Reminder',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_two),
            label: 'Shop List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'Reminderdd',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
