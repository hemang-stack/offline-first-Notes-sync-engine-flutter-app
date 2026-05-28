import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

import 'custom_toggle.dart';

class PreferenceTile
    extends StatelessWidget {

  final IconData icon;
  final String title;
  final bool enabled;

  const PreferenceTile({
    super.key,
    required this.icon,
    required this.title,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        vertical: 20,
      ),

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color:
                Colors.white.withOpacity(
              .05,
            ),
          ),
        ),
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [

          Row(
            children: [

              Icon(
                icon,
                color:
                    Colors.white70,
              ),

              const SizedBox(width: 16),

              Text(
                title,

                style: const TextStyle(
                  color:
                      AppColors.textPrimary,

                  fontSize: 16,
                ),
              ),
            ],
          ),

          CustomToggle(
            enabled: enabled,
          ),
        ],
      ),
    );
  }
}