import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  // Scaffold Theme
  scaffoldBackgroundColor: Colors.white,

  // AppBar Theme
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  // appbar actions theme
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
        foregroundColor: Colors.black, backgroundColor: Colors.white),
  ),
  iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.white)),

  // ElevatedButton Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(50)),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(50)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(50)),
    disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(50)),
    hintStyle: const TextStyle(color: Colors.black),
  ),

  textTheme: const TextTheme(
    displaySmall: TextStyle(
      color: Colors.white,
    ),
  ),
);
