import 'package:flutter/material.dart';

import 'preference_tile.dart';

class PreferencesSection
    extends StatelessWidget {

  const PreferencesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Text(
          "PREFERENCES",

          style: TextStyle(
            color:
                Colors.white.withOpacity(.4),

            fontSize: 10,

            letterSpacing: 3,
          ),
        ),

        const SizedBox(height: 20),

        const PreferenceTile(
          icon: Icons.dark_mode,
          title: "dark mode",
          enabled: true,
        ),

        const PreferenceTile(
          icon: Icons.notifications,
          title: "notifications",
          enabled: false,
        ),

        const PreferenceTile(
          icon: Icons.lock_outline,
          title: "privacy vault",
          enabled: true,
        ),
      ],
    );
  }
}