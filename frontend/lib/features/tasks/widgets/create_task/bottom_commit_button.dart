import 'package:flutter/material.dart';

import '../../../../core/common/widgets/curator_button.dart';

class BottomCommitButton
    extends StatelessWidget {

  final VoidCallback onTap;

  const BottomCommitButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 24,
      right: 24,
      bottom: 36,

      child: CuratorButton(
        text: "commit to grid",

        icon: Icons.bolt,

        onTap: onTap,
      ),
    );
  }
}