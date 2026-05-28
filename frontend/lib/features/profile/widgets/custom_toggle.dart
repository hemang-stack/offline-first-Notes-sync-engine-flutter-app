import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class CustomToggle extends StatelessWidget {
  final bool enabled;

  const CustomToggle({
    super.key,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:
          const Duration(milliseconds: 250),

      width: 48,
      height: 28,

      padding:
          const EdgeInsets.symmetric(
        horizontal: 4,
      ),

      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(40),

        color: enabled
            ? AppColors.primary
            : AppColors.border,
      ),

      child: Align(
        alignment: enabled
            ? Alignment.centerRight
            : Alignment.centerLeft,

        child: Container(
          width: 18,
          height: 18,

          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}