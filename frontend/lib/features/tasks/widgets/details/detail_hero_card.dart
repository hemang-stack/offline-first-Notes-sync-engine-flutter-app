import 'package:flutter/material.dart';

import '../../../../core/theme/app_radius.dart';

class DetailHeroCard extends StatelessWidget {
  const DetailHeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,

      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(
          AppRadius.xl,
        ),

        color: const Color(0xFF151515),
      ),

      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(
          AppRadius.xl,
        ),

        child: Image.network(
          "https://images.unsplash.com/photo-1511818966892-d7d671e672a2",

          fit: BoxFit.cover,

          errorBuilder:
              (
                context,
                error,
                stackTrace,
              ) {

            return Container(
              color:
                  const Color(0xFF1A1A1A),

              child: const Center(
                child: Icon(
                  Icons.image,
                  color: Colors.white24,
                  size: 50,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}