import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [

        Container(
          padding: const EdgeInsets.all(2),

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            gradient: LinearGradient(
              colors: [
                AppColors.primary
                    .withOpacity(.4),

                Colors.transparent,
              ],
            ),

            boxShadow: [
              BoxShadow(
                color:
                    AppColors.primary
                        .withOpacity(.18),

                blurRadius: 30,
              ),
            ],
          ),

          child: Container(
            width: 110,
            height: 110,

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
        ),

        Positioned(
          right: -2,
          bottom: -2,

          child: Container(
            width: 28,
            height: 28,

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              color: AppColors.primary,

              border: Border.all(
                color:
                    AppColors.background,
                width: 2,
              ),
            ),

            child: const Icon(
              Icons.check,
              size: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}