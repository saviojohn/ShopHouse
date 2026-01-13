import 'package:flutter/material.dart';

class SBottomSheetTheme {
  SBottomSheetTheme._();


// static without const is created at runtime
// changeable and memory allocated at startup

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    elevation: 8.0,
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
        showDragHandle: true,

    backgroundColor: Colors.black,
    constraints:  BoxConstraints(minWidth: double.infinity),
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    elevation: 8.0,
  );
}