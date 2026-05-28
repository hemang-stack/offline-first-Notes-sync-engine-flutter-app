import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';

import '../widgets/archive_empty_state.dart';
import '../widgets/archive_footer.dart';
import '../widgets/archive_month_section.dart';

class ArchivesPage extends StatelessWidget {
  const ArchivesPage({super.key});

  @override
  Widget build(BuildContext context) {

    /// MOCK DATA
    final archiveData = {

      "october": [
        {
          "title":
              "refactor core architecture engine",
          "date": "28 oct",
        },

        {
          "title":
              "quarterly board presentation finalization",
          "date": "24 oct",
        },

        {
          "title":
              "design system documentation audit",
          "date": "19 oct",
        },
      ],

      "september": [
        {
          "title":
              "v2.4 prototype sprint completion",
          "date": "30 sep",
        },

        {
          "title":
              "brand identity workshop session",
          "date": "15 sep",
        },
      ],
    };

    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),

          child: archiveData.isEmpty

              ? const ArchiveEmptyState()

              : ListView(
                  physics:
                      const BouncingScrollPhysics(),

                  children: [

                    const SizedBox(height: 24),

                    /// HEADER
                    const Text(
                      "archives",

                      style: TextStyle(
                        color:
                            AppColors.textPrimary,

                        fontSize: 44,

                        fontWeight:
                            FontWeight.w700,

                        letterSpacing: -2,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "THE QUIET RECORD OF PROGRESS",

                      style: TextStyle(
                        color: Colors.white
                            .withOpacity(.4),

                        fontSize: 10,

                        letterSpacing: 3,
                      ),
                    ),

                    const SizedBox(height: 60),

                    ...archiveData.entries.map(
                      (entry) {

                        return Padding(
                          padding:
                              const EdgeInsets.only(
                            bottom: 60,
                          ),

                          child:
                              ArchiveMonthSection(
                            month: entry.key,

                            tasks:
                                entry.value,
                          ),
                        );
                      },
                    ),

                    const ArchiveFooter(),

                    const SizedBox(height: 140),
                  ],
                ),
        ),
      ),
    );
  }
}