import 'package:flutter/material.dart';
import 'package:shop_house/app.dart';
import 'package:shop_house/utils/constants/colors.dart';

void main() {


  TColors.linearGradient;

  runApp(const App());
}

// for dark theme we need to create a separate theme data
// cause themeData requires a lot of properties to be set for dark theme
// we can create a separate class or function which can be reusable