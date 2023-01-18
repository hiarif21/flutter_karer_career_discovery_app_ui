import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:karer/src/styles/colors_app.dart';

class ThemesApp {
  static ThemeData theme = ThemeData(
    fontFamily: GoogleFonts.inter().fontFamily,
    scaffoldBackgroundColor: ColorsApp.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsApp.background500,
      elevation: 0,
      centerTitle: true,
      titleSpacing: 0,
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorsApp.white,
      ),
    ),
  );
}
