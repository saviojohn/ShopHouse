import 'package:flutter/material.dart';

class SAppBarTheme {
  SAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    foregroundColor: Colors.black,
    elevation: 0,
    centerTitle: false,
    iconTheme: IconThemeData(color: Colors.black, size:24),
    actionsIconTheme: IconThemeData(color: Colors.black, size:24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  );


  static const darkAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: false,
    iconTheme: IconThemeData(color: Colors.white, size:24),
    actionsIconTheme: IconThemeData(color: Colors.white, size:24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
  );
}

// static means we can access it via class name .variable name
// const means this value is a compile time constant it can never change while the app is running
// normally to access a variable in a class we need to create an object first 
// there is only one copy of that 