import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_radius.dart';

class AppTheme {

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    useMaterial3: true,

    fontFamily: 'Inter',

    scaffoldBackgroundColor:
        AppColors.background,

    colorScheme:
        const ColorScheme.dark(
      primary: AppColors.primary,
      surface: AppColors.surface,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor:
          AppColors.background,

      elevation: 0,
    ),

    inputDecorationTheme:
        InputDecorationTheme(

      filled: true,

      fillColor:
          Colors.white.withOpacity(.03),

      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(
          AppRadius.lg,
        ),

        borderSide: BorderSide(
          color: AppColors.border,
          width: .5,
        ),
      ),

      enabledBorder:
          OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(
          AppRadius.lg,
        ),

        borderSide: BorderSide(
          color: AppColors.border,
          width: .5,
        ),
      ),

      focusedBorder:
          OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(
          AppRadius.lg,
        ),

        borderSide: BorderSide(
          color: AppColors.primary,
          width: 1,
        ),
      ),

      hintStyle: TextStyle(
        color:
            Colors.white.withOpacity(.25),
      ),
    ),

    elevatedButtonTheme:
        ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            AppColors.primary,

        foregroundColor: Colors.black,

        minimumSize:
            const Size(double.infinity, 60),

        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(
            AppRadius.xl,
          ),
        ),
      ),
    ),
  );
}