import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';

class SelectorChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const SelectorChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: AnimatedContainer(
        duration:
            const Duration(milliseconds: 250),

        padding:
            const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 14,
        ),

        decoration: BoxDecoration(
          color: selected
              ? AppColors.primary
                  .withOpacity(.12)
              : Colors.white.withOpacity(
                  .03,
                ),

          borderRadius:
              BorderRadius.circular(
            AppRadius.full,
          ),

          border: Border.all(
            color: selected
                ? AppColors.primary
                : AppColors.border,
          ),
        ),

        child: Text(
          label,

          style: TextStyle(
            color: selected
                ? AppColors.primarySoft
                : Colors.white70,

            fontSize: 13,

            fontWeight:
                FontWeight.w600,

            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}