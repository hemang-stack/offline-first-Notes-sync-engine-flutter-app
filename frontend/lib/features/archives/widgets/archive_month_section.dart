import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

import 'archive_task_tile.dart';

class ArchiveMonthSection extends StatelessWidget {
  final String month;

  final List<Map<String, String>> tasks;

  const ArchiveMonthSection({
    super.key,
    required this.month,
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// HEADER
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              month,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "${tasks.length} items",
              style: TextStyle(
                color: Colors.white.withOpacity(
                  .35,
                ),
                fontSize: 10,
                letterSpacing: 2,
              ),
            ),
          ],
        ),

        const SizedBox(height: 28),

        /// TASKS
        Column(
          children: tasks.map((task) {
            return ArchiveTaskTile(
              title: task["title"]!,
              date: task["date"]!,
            );
          }).toList(),
        ),
      ],
    );
  }
}
