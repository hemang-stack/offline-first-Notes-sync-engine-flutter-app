import 'package:flutter/material.dart';

class ArchiveEmptyState
    extends StatelessWidget {

  const ArchiveEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          Icon(
            Icons.history,
            size: 46,
            color:
                Colors.white.withOpacity(
              .12,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "no archives yet.",

            style: TextStyle(
              color:
                  Colors.white.withOpacity(
                .35,
              ),

              fontSize: 20,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "completed tasks will live here",

            style: TextStyle(
              color:
                  Colors.white.withOpacity(
                .2,
              ),

              fontSize: 12,

              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}