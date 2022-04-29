import 'package:flutter/material.dart';
import 'package:sit/src/app/modules/intro_page/intro_page.dart';
import 'package:sit/src/theme/theme_constants.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: IntroPage(),
    );
  }
}
