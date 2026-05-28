import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

import 'profile_avatar.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const ProfileAvatar(),

        const SizedBox(height: 26),

        const Text(
          "alex m.",

          style: TextStyle(
            color: AppColors.textPrimary,

            fontSize: 28,

            fontWeight: FontWeight.w700,

            letterSpacing: -1,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          "LEVEL: CURATOR PRIME",

          style: TextStyle(
            color:
                Colors.white.withOpacity(.4),

            fontSize: 10,

            letterSpacing: 3,
          ),
        ),
      ],
    );
  }
}