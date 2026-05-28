import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class ArchiveTaskTile extends StatelessWidget {
  final String title;
  final String date;

  const ArchiveTaskTile({
    super.key,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withOpacity(
              .05,
            ),
            width: .5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white.withOpacity(
                  .35,
                ),
                fontSize: 16,
                height: 1.5,
                decoration: TextDecoration.lineThrough,
                decorationColor: AppColors.primarySoft,
                decorationThickness: 1.4,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Text(
            date,
            style: TextStyle(
              color: Colors.white.withOpacity(
                .25,
              ),
              fontSize: 10,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
