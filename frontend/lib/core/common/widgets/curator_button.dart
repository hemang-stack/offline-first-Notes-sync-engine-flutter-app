import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';

class CuratorButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData? icon;

  const CuratorButton({
    super.key,
    required this.text,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(AppRadius.xl),

        boxShadow: [
          BoxShadow(
            color:
                AppColors.primary.withOpacity(.3),
            blurRadius: 30,
          ),
        ],
      ),

      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,

          foregroundColor: Colors.black,

          elevation: 0,

          minimumSize:
              const Size(double.infinity, 64),

          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
              AppRadius.xl,
            ),
          ),
        ),

        onPressed: onTap,

        icon: icon != null
            ? Icon(icon)
            : const SizedBox.shrink(),

        label: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: -.5,
          ),
        ),
      ),
    );
  }
}