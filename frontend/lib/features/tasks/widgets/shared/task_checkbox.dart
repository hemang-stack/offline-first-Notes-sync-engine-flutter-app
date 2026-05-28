import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class TaskCheckbox extends StatelessWidget {
  final bool completed;
  final VoidCallback? onTap;

  const TaskCheckbox({
    super.key,
    required this.completed,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: AnimatedContainer(
        duration:
            const Duration(milliseconds: 250),

        width: 22,
        height: 22,

        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(6),

          color: completed
              ? AppColors.primary
              : Colors.transparent,

          border: Border.all(
            color: completed
                ? AppColors.primary
                : AppColors.border,
          ),
        ),

        child: completed
            ? const Icon(
                Icons.check,
                color: Colors.black,
                size: 14,
              )
            : null,
      ),
    );
  }
}