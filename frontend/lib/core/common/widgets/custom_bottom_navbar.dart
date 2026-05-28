import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 30,
      ),

      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(AppRadius.xl),

        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),

          child: Container(
            height: 70,

            decoration: BoxDecoration(
              color:
                  Colors.white.withOpacity(.03),

              borderRadius:
                  BorderRadius.circular(
                AppRadius.xl,
              ),

              border: Border.all(
                color: AppColors.border,
                width: .5,
              ),
            ),

            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,

              children: [

                _NavItem(
                  icon: Icons.grid_view_rounded,
                  selected: currentIndex == 0,
                  onTap: () => onTap(0),
                ),

                _NavItem(
                  icon: Icons.history,
                  selected: currentIndex == 1,
                  onTap: () => onTap(1),
                ),

                _NavItem(
                  icon: Icons.person,
                  selected: currentIndex == 2,
                  onTap: () => onTap(2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: AnimatedContainer(
        duration:
            const Duration(milliseconds: 250),

        width: 46,
        height: 46,

        decoration: BoxDecoration(
          shape: BoxShape.circle,

          color: selected
              ? AppColors.primary
                  .withOpacity(.12)
              : Colors.transparent,
        ),

        child: Icon(
          icon,

          color: selected
              ? AppColors.primarySoft
              : Colors.white54,
        ),
      ),
    );
  }
}