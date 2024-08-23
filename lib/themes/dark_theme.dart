import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  // Scaffold Theme
  scaffoldBackgroundColor: Colors.black,

  // AppBar Theme
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  // appbar actions theme
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
    foregroundColor: Colors.white,
  )),

  // ElevatedButton Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    elevation: 0,
  )),

  // Text Form Field Theme
  inputDecorationTheme: const InputDecorationTheme(
    focusColor: Colors.white,
    labelStyle: TextStyle(color: Colors.white),
    filled: false,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    hintStyle: TextStyle(color: Colors.white),
  ),

  // Text Theme
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      color: Colors.white,
    ),
  ),
);
