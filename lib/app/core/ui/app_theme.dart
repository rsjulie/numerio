import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData theme = ThemeData(
    fontFamily: 'Jost',
    textTheme: const TextTheme(
      headline4: TextStyle(color: Colors.white),
      headline5: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
    ),
  );
}
