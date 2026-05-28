import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

enum TaskPriority {
  chill,
  focused,
  urgent,
}

class PriorityUtils {

  static String label(
      TaskPriority priority) {

    switch (priority) {

      case TaskPriority.chill:
        return 'CHILL';

      case TaskPriority.focused:
        return 'FOCUSED';

      case TaskPriority.urgent:
        return 'URGENT';
    }
  }

  static Color color(
      TaskPriority priority) {

    switch (priority) {

      case TaskPriority.chill:
        return Colors.blueGrey;

      case TaskPriority.focused:
        return AppColors.primarySoft;

      case TaskPriority.urgent:
        return AppColors.primary;
    }
  }

  static TaskPriority fromString(
      String value) {

    switch (value.toLowerCase()) {

      case 'chill':
        return TaskPriority.chill;

      case 'focused':
        return TaskPriority.focused;

      case 'urgent':
        return TaskPriority.urgent;

      default:
        return TaskPriority.focused;
    }
  }
}