import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';

class CategoryChip extends StatelessWidget {
  final String category;

  const CategoryChip({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 8,
      ),

      decoration: BoxDecoration(
        color:
            Colors.white.withOpacity(.04),

        borderRadius:
            BorderRadius.circular(
          AppRadius.full,
        ),

        border: Border.all(
          color: AppColors.border,
          width: .5,
        ),
      ),

      child: Text(
        category.toUpperCase(),

        style: TextStyle(
          color:
              Colors.white.withOpacity(.7),

          fontSize: 10,

          fontWeight: FontWeight.w500,

          letterSpacing: 2,
        ),
      ),
    );
  }
}