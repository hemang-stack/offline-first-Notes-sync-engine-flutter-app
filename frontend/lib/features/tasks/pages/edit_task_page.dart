import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class EditTaskPage extends StatelessWidget {
  const EditTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppColors.background,

      appBar: AppBar(
        backgroundColor:
            AppColors.background,

        title: const Text(
          "edit task",
        ),
      ),

      body: const Center(
        child: Text(
          "Edit Task Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}