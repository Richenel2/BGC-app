import 'package:bgc/app/const/color.dart';
import 'package:flutter/material.dart';

class LightTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.blue,
    fontFamily: "Inter",
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
    ),
  );
}
