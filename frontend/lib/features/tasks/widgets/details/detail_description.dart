import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class DetailDescription
    extends StatelessWidget {

  const DetailDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Text(
          "DESCRIPTION",

          style: TextStyle(
            color:
                Colors.white
                    .withOpacity(.4),

            fontSize: 10,

            letterSpacing: 4,

            fontWeight:
                FontWeight.w600,
          ),
        ),

        const SizedBox(height: 24),

        Text(
          "Revisit the spatial hierarchy and modernize the interaction design against the revised sustainability guidelines. Focus on maintaining architectural rhythm and the emotional weight of the visual systems.",

          style: TextStyle(
            color:
                Colors.white
                    .withOpacity(.82),

            fontSize: 18,

            height: 1.9,

            fontWeight:
                FontWeight.w400,
          ),
        ),

        const SizedBox(height: 24),

        RichText(
          text: TextSpan(
            style: TextStyle(
              color:
                  Colors.white
                      .withOpacity(.82),

              fontSize: 18,

              height: 1.9,
            ),

            children: const [

              TextSpan(
                text:
                    "Cross-reference with the ",
              ),

              TextSpan(
                text:
                    "Zaha Hadid influence framework",

                style: TextStyle(
                  color:
                      AppColors.primary,

                  fontWeight:
                      FontWeight.w600,
                ),
              ),

              TextSpan(
                text:
                    " and material flow systems.",
              ),
            ],
          ),
        ),
      ],
    );
  }
}