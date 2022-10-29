import 'package:flutter/material.dart';
import '../screens/home.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    //  final GlobalKey<ScaffoldState> key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => MyHomePage(),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (context) => MyHomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => MyHomePage(),
        );
    }
  }
}
