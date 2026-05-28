import 'package:flutter/material.dart';

import '../../../../core/theme/app_radius.dart';

class MoodboardCard extends StatelessWidget {
  const MoodboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(
        AppRadius.lg,
      ),

      child: Stack(
        alignment: Alignment.center,

        children: [

          Image.network(
            'https://images.unsplash.com/photo-1497366754035-f200968a6e72',

            height: 220,
            width: double.infinity,

            fit: BoxFit.cover,
          ),

          Container(
            height: 220,

            color:
                Colors.black.withOpacity(.5),
          ),

          Container(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),

            decoration: BoxDecoration(
              color:
                  Colors.black.withOpacity(
                .35,
              ),

              borderRadius:
                  BorderRadius.circular(40),

              border: Border.all(
                color: Colors.white10,
              ),
            ),

            child: Row(
              mainAxisSize:
                  MainAxisSize.min,

              children: const [

                Icon(
                  Icons.add_photo_alternate,
                  color: Colors.white,
                  size: 18,
                ),

                SizedBox(width: 10),

                Text(
                  "attach moodboard",

                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}