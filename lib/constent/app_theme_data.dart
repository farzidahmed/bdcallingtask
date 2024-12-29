import 'package:bdcallingtask/constent/app_color.dart';
import 'package:flutter/material.dart';

class AppThemeData{

  static ThemeData get lightThemeData{
      return ThemeData(
        scaffoldBackgroundColor: Colors.black45,
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide.none,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),

        )
      );
  }
}