import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class CuratorAppbar extends StatelessWidget {
  const CuratorAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [

        /// LEFT
        Row(
          children: const [

            Icon(
              Icons.grid_view_rounded,
              color: AppColors.primary,
            ),

            SizedBox(width: 16),

            Text(
              "curator",
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: -1,
              ),
            ),
          ],
        ),

        /// PROFILE
        Container(
          width: 36,
          height: 36,

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            border: Border.all(
              color: AppColors.border,
            ),
          ),

          child: const CircleAvatar(
            backgroundImage:
                NetworkImage(
              "https://i.pravatar.cc/300",
            ),
          ),
        ),
      ],
    );
  }
}