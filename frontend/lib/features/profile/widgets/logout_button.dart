import 'package:flutter/material.dart';

import '../../../core/common/widgets/curator_button.dart';

class LogoutButton
    extends StatelessWidget {

  final VoidCallback onTap;

  const LogoutButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CuratorButton(
      text: "log out",
      icon: Icons.logout,
      onTap: onTap,
    );
  }
}