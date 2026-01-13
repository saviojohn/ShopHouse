import 'package:flutter/material.dart';
import 'package:shop_house/utils/theme/custom_themes/appbar_theme.dart';
import 'package:shop_house/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shop_house/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:shop_house/utils/theme/custom_themes/chip_theme.dart';
import 'package:shop_house/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:shop_house/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:shop_house/utils/theme/custom_themes/text_field_theme.dart';
import 'package:shop_house/utils/theme/custom_themes/text_theme.dart';
 
class SAppTheme { // starting point for any app will be S
// so when we call S all custom widgets and themes will come be right infront of you
  
  SAppTheme._();  // private constructor

   // as constructor is private we need to use a static method
  static ThemeData lightTheme = ThemeData(
     // we are going to use material 3 design
     useMaterial3: true,
     fontFamily: 'Poppins',
     brightness: Brightness.light, // this is going to be light mode
     primaryColor: Colors.blue,
     textTheme: STextTheme.lightTextTheme,
     chipTheme: SChipTheme.lightChipTheme,
     scaffoldBackgroundColor: Colors.white,   // treated differently screen
     appBarTheme: SAppBarTheme.lightAppBarTheme,
     checkboxTheme: SCheckboxTheme.lightCheckboxTheme,
     bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
     elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
     outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme,
     inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme,

  ); // instead of creating a function we can create a variable
  // of theme data and it will return the theme data of our choice
  static ThemeData darkTheme = ThemeData(
        // we are going to use material 3 design
    useMaterial3: true,

    fontFamily: 'Poppins',
    brightness: Brightness.dark, // this is going to be light mode
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white, // treated differently screen
    textTheme: STextTheme.darkTextTheme,
    chipTheme: SChipTheme.darkChipTheme,
    appBarTheme: SAppBarTheme.darkAppBarTheme,
    checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.darkInputDecorationTheme,
  );
 

  // if we want theme consturctor is not going to be used again and again
  // add underscore which makes it private
}