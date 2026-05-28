import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final double opacity;

  const GlassContainer({
    super.key,
    required this.child,
    this.padding,
    this.borderRadius,
    this.opacity = .03,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        borderRadius ?? AppRadius.md,
      ),

      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),

        child: Container(
          padding: padding,

          decoration: BoxDecoration(
            color:
                Colors.white.withOpacity(opacity),

            borderRadius: BorderRadius.circular(
              borderRadius ?? AppRadius.md,
            ),

            border: Border.all(
              color: AppColors.border,
              width: .5,
            ),
          ),

          child: child,
        ),
      ),
    );
  }
}