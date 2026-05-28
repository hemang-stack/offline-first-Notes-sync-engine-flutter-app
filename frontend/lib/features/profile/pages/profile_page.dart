import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';

import '../widgets/logout_button.dart';
import '../widgets/preferences_section.dart';
import '../widgets/profile_header.dart';
import '../widgets/stats_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),

          child: ListView(
            physics:
                const BouncingScrollPhysics(),

            children: [

              const SizedBox(height: 24),

              /// TITLE
              const Text(
                "profile",

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
                "YOUR CURATED IDENTITY",

                style: TextStyle(
                  color:
                      Colors.white.withOpacity(
                    .4,
                  ),

                  fontSize: 10,

                  letterSpacing: 3,
                ),
              ),

              const SizedBox(height: 50),

              /// HEADER
              const ProfileHeader(),

              const SizedBox(height: 50),

              /// STATS
              const StatsSection(),

              const SizedBox(height: 44),

              /// PREFERENCES
              const PreferencesSection(),

              const SizedBox(height: 60),

              /// LOGOUT
              LogoutButton(
                onTap: () {},
              ),

              const SizedBox(height: 24),

              Center(
                child: Text(
                  "CURATOR v2.4.0",

                  style: TextStyle(
                    color:
                        Colors.white
                            .withOpacity(.2),

                    fontSize: 10,

                    letterSpacing: 3,
                  ),
                ),
              ),

              const SizedBox(height: 140),
            ],
          ),
        ),
      ),
    );
  }
}