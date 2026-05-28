import 'package:flutter/material.dart';

import 'stat_card.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Text(
          "PERFORMANCE",

          style: TextStyle(
            color:
                Colors.white.withOpacity(.4),

            fontSize: 10,

            letterSpacing: 3,
          ),
        ),

        const SizedBox(height: 18),

        const Row(
          children: [

            Expanded(
              child: StatCard(
                value: "128",
                label: "done",
              ),
            ),

            SizedBox(width: 14),

            Expanded(
              child: StatCard(
                value: "12",
                label: "streak",
              ),
            ),

            SizedBox(width: 14),

            Expanded(
              child: StatCard(
                value: "94%",
                label: "focus",
              ),
            ),
          ],
        ),
      ],
    );
  }
}