import 'package:flutter/material.dart';
import 'package:zero_to_hero/Presentation/Adviser/adviser_page.dart';
import 'package:zero_to_hero/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: const AdviserPage(),
    );
  }
}
