import 'package:flutter/material.dart';

import '../../../core/common/widgets/glass_container.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';

class StatCard extends StatelessWidget {
  final String value;
  final String label;

  const StatCard({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      borderRadius: AppRadius.lg,

      padding: const EdgeInsets.symmetric(
        vertical: 22,
      ),

      child: Column(
        children: [

          Text(
            value,

            style: const TextStyle(
              color:
                  AppColors.primarySoft,

              fontSize: 28,

              fontWeight:
                  FontWeight.w700,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            label.toUpperCase(),

            style: TextStyle(
              color:
                  Colors.white.withOpacity(.4),

              fontSize: 10,

              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}