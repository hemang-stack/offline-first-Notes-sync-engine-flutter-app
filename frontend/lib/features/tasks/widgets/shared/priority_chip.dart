import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class PriorityChip extends StatelessWidget {

  final String label;

  const PriorityChip({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color:
            AppColors.primary
                .withOpacity(.12),

        borderRadius:
            BorderRadius.circular(
          999,
        ),

        border: Border.all(
          color:
              AppColors.primary
                  .withOpacity(.2),
        ),
      ),

      child: Text(
        label,

        style: const TextStyle(
          color:
              AppColors.primary,

          fontWeight:
              FontWeight.w600,
        ),
      ),
    );
  }
}