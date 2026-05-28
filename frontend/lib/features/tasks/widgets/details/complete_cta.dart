import 'package:flutter/material.dart';

import '../../../../core/common/widgets/curator_button.dart';

class CompleteCTA extends StatelessWidget {
  final VoidCallback onTap;

  const CompleteCTA({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CuratorButton(
      text: "mark as done",

      icon:
          Icons.check_circle,

      onTap: onTap,
    );
  }
}