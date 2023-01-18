import 'package:flutter/material.dart';
import 'package:karer/src/screens/home_screen.dart';
import 'package:karer/src/styles/themes_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemesApp.theme,
      home: const HomeScreen(),
    );
  }
}
