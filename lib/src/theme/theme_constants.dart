import 'package:flutter/material.dart';

const primarySwatchColor = Colors.blue;
const buttonTextColor = Colors.lime;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: primarySwatchColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: buttonTextColor,
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.blue),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.lime),
    titleTextStyle: TextStyle(color: Colors.lime, fontSize: 25),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: primarySwatchColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: buttonTextColor,
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.blue),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.lime),
    titleTextStyle: TextStyle(color: Colors.lime, fontSize: 25),
  ),
);
