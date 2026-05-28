import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';

import '../widgets/curator_appbar.dart';
import '../widgets/empty_tasks.dart';
import '../widgets/floating_create_button.dart';
import '../widgets/task_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    /// TEMP MOCK TASKS
    final tasks = [
      {
        'title':
            'Refine interaction architecture',
        'subtitle':
            'URGENT • 09:30 PM',
      },

      {
        'title':
            'Prepare product launch deck',
        'subtitle':
            'FOCUSED • 11:00 PM',
      },

      {
        'title':
            'Moodboard exploration session',
        'subtitle':
            'CHILL • 01:00 AM',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              const SizedBox(height: 18),

              /// APPBAR
              const CuratorAppbar(),

              const SizedBox(height: 46),

              /// HEADER
              const Text(
                "good evening.",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -2,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                "${tasks.length} ITEMS AWAITING CURATION",

                style: const TextStyle(
                  color: AppColors.primarySoft,
                  fontSize: 10,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 36),

              /// TASKS
              Expanded(
                child: tasks.isEmpty

                    ? const EmptyTasks()

                    : ListView.separated(
                        physics:
                            const BouncingScrollPhysics(),

                        itemCount: tasks.length,

                        separatorBuilder:
                            (_, __) =>
                                const SizedBox(
                          height: 18,
                        ),

                        itemBuilder: (context, index) {

                          final task =
                              tasks[index];

                          return TaskCard(
                            title:
                                task['title']!,
                            subtitle:
                                task['subtitle']!,
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}