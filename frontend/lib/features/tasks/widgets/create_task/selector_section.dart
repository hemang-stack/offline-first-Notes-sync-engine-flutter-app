import 'package:flutter/material.dart';

import 'selector_chip.dart';

class SelectorSection extends StatelessWidget {
  final String title;

  final List<String> chips;

  final String selectedValue;

  final Function(String)
      onSelected;

  const SelectorSection({
    super.key,
    required this.title,
    required this.chips,
    required this.selectedValue,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Text(
          title.toUpperCase(),

          style: TextStyle(
            color:
                Colors.white.withOpacity(
              .45,
            ),

            fontSize: 10,

            letterSpacing: 3,

            fontWeight:
                FontWeight.w600,
          ),
        ),

        const SizedBox(height: 18),

        Wrap(
          spacing: 12,
          runSpacing: 12,

          children: chips.map((chip) {

            return SelectorChip(
              label: chip,

              selected:
                  selectedValue == chip,

              onTap: () {
                onSelected(chip);
              },
            );

          }).toList(),
        ),
      ],
    );
  }
}