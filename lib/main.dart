import 'package:flutter/material.dart';
import 'package:shop_house/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, // it will detect the theme of the system
      theme: SAppTheme.lightTheme, // this we way have light theme
      darkTheme: SAppTheme.darkTheme, // this we way have dark theme
    );
  }
}

// for dark theme we need to create a separate theme data
// cause themeData requires a lot of properties to be set for dark theme
// we can create a separate class or function which can be reusable