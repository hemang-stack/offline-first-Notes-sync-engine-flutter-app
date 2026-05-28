import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class CuratorTopbar extends StatelessWidget {
  const CuratorTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },

          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
        ),

        const SizedBox(width: 20),

        const Text(
          "curator",

          style: TextStyle(
            color: AppColors.textPrimary,

            fontSize: 24,

            fontWeight: FontWeight.w700,
          ),
        ),

        const Spacer(),

        Container(
          width: 46,
          height: 46,

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            border: Border.all(
              color: Colors.white10,
            ),

            image: const DecorationImage(
              image: NetworkImage(
                "https://i.pravatar.cc/150?img=12",
              ),

              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}