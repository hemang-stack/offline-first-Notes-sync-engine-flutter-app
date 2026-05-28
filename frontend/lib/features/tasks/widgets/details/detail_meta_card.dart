import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';

class DetailMetaCard extends StatelessWidget {

  final String title;
  final String value;

  final Widget? trailing;

  const DetailMetaCard({
    super.key,
    required this.title,
    required this.value,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,

      padding:
          const EdgeInsets.all(28),

      decoration: BoxDecoration(
        color: const Color(0xFF111111),

        borderRadius:
            BorderRadius.circular(
          AppRadius.xl,
        ),

        border: Border.all(
          color: Colors.white10,
        ),
      ),

      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center,

        children: [

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment
                      .start,

              mainAxisSize:
                  MainAxisSize.min,

              children: [

                Text(
                  title.toUpperCase(),

                  style: TextStyle(
                    color:
                        Colors.white
                            .withOpacity(
                      .4,
                    ),

                    fontSize: 10,

                    letterSpacing: 4,
                  ),
                ),

                const SizedBox(
                    height: 22),

                Text(
                  value,

                  style: const TextStyle(
                    color:
                        AppColors
                            .textPrimary,

                    fontSize: 22,

                    fontWeight:
                        FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          if (trailing != null)
            trailing!,
        ],
      ),
    );
  }
}