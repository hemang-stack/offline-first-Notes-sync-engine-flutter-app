import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class NavigationFab extends StatelessWidget {
  final VoidCallback onTap;

  const NavigationFab({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,

        boxShadow: [

          BoxShadow(
            color:
                AppColors.primary
                    .withOpacity(.35),

            blurRadius: 30,

            spreadRadius: 2,
          ),
        ],
      ),

      child: FloatingActionButton(
        backgroundColor:
            AppColors.primary,

        elevation: 0,

        shape: const CircleBorder(),

        onPressed: onTap,

        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}