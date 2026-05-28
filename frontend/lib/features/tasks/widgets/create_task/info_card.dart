import 'package:flutter/material.dart';

import '../../../../core/common/widgets/glass_container.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';

class InfoCard extends StatelessWidget {
  final String title;

  final IconData icon;

  final String value;

  final VoidCallback onTap;

  const InfoCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: GlassContainer(
        borderRadius: AppRadius.md,

        padding:
            const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Text(
              title.toUpperCase(),

              style: TextStyle(
                color: Colors.white
                    .withOpacity(.45),

                fontSize: 10,

                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 18),

            Row(
              children: [

                Icon(
                  icon,
                  color:
                      AppColors.primarySoft,
                  size: 18,
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    value,

                    overflow:
                        TextOverflow
                            .ellipsis,

                    style: const TextStyle(
                      color: AppColors
                          .textPrimary,

                      fontSize: 22,

                      fontWeight:
                          FontWeight
                              .w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}