import 'package:flutter/material.dart';
import 'package:simple/presentation/screens/add_expense.dart';
import 'package:simple/presentation/screens/expenses.dart';
import '../screens/home.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    //  final GlobalKey<ScaffoldState> key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (context) => Expenses(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => AddExpense(),
        );
    }
  }
}
