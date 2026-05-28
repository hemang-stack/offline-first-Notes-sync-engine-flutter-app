import 'package:flutter/material.dart';

class ArchiveFooter
    extends StatelessWidget {

  const ArchiveFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          width: 4,
          height: 4,

          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFFB693),
          ),
        ),

        const SizedBox(height: 20),

        Text(
          "END OF HISTORY",

          style: TextStyle(
            color:
                Colors.white.withOpacity(
              .2,
            ),

            fontSize: 10,

            letterSpacing: 4,
          ),
        ),
      ],
    );
  }
}