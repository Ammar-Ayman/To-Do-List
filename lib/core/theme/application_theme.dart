import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme{
  static ThemeData lightTheme=ThemeData(
    primaryColor:const Color(0xff5D9CEC) ,
    colorScheme: const ColorScheme.light(
      primary: Color(0xffDFECDB),
      secondary: Color(0xff5D9CEC),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff383838),
      onPrimaryFixed: Color(0xff61E757),
      onSecondaryFixed: Color(0xffEC4B4B),
      onSurface: Color(0xff141922),
    ),
    scaffoldBackgroundColor:const Color(0xffDFECDB),

    appBarTheme: const AppBarTheme(),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.kronaOne(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xffffffff),
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xffffffff),
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xffffffff),
      ),

      ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: Color(0xff5D9CEC),
        size: 30,

      ),
      selectedItemColor: Color(0xff5D9CEC),
      unselectedIconTheme: IconThemeData(
        color: Color(0xff383838),
        size: 26,
      ),

      unselectedItemColor:Color(0xff383838),

    )



  );
}