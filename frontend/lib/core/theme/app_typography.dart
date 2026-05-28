import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {

  static const display = TextStyle(
    fontSize: 44,
    fontWeight: FontWeight.w700,
    letterSpacing: -2,
    color: AppColors.textPrimary,
  );

  static const headline = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: -1,
    color: AppColors.textPrimary,
  );

  static const title = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const body = TextStyle(
    fontSize: 16,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  static const caption = TextStyle(
    fontSize: 11,
    letterSpacing: 2,
    color: AppColors.textSecondary,
  );

  static const mono = TextStyle(
    fontSize: 10,
    letterSpacing: 3,
    color: AppColors.textSecondary,
  );
}