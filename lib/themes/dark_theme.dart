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
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(50)),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(50)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(50)),
    disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(50)),
    hintStyle: const TextStyle(color: Colors.white),
  ),

  // Text Theme
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      color: Colors.white,
    ),
  ),
);
