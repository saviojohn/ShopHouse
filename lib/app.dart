import 'package:flutter/material.dart';
import 'package:shop_house/utils/theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, // it will detect the theme of the system
      theme: SAppTheme.lightTheme, // this we way have light theme
      darkTheme: SAppTheme.darkTheme, // this we way have dark theme
    );
  }
}
