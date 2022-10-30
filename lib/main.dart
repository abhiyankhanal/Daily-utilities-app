import 'package:flutter/material.dart';
import 'package:simple/presentation/const/colors.dart';
import 'package:simple/presentation/routes/routes.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:simple/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter _approuter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Utilities',
      theme: ThemeData(
        bottomAppBarColor: mainCol,
        buttonTheme: const ButtonThemeData(
          buttonColor: mainCol,
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: _approuter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
