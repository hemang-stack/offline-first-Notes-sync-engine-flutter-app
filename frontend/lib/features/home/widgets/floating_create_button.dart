import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class FloatingCreateButton
    extends StatelessWidget {

  final VoidCallback onTap;

  const FloatingCreateButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:
          AppColors.primary,

      elevation: 10,

      shape: const CircleBorder(),

      onPressed: onTap,

      child: const Icon(
        Icons.add,
        color: Colors.black,
        size: 28,
      ),
    );
  }
}