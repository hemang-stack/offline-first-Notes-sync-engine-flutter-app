import 'package:flutter/material.dart';

class FloatingActionButtons
    extends StatelessWidget {

  final VoidCallback onEdit;

  const FloatingActionButtons({
    super.key,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        const Spacer(),

        _circleButton(
          Icons.share_outlined,
          () {},
        ),

        const SizedBox(width: 18),

        _circleButton(
          Icons.edit_outlined,
          onEdit,
        ),
      ],
    );
  }

  Widget _circleButton(
    IconData icon,
    VoidCallback onTap,
  ) {

    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 72,
        height: 72,

        decoration: BoxDecoration(
          shape: BoxShape.circle,

          color:
              Colors.white.withOpacity(
            .08,
          ),

          border: Border.all(
            color: Colors.white10,
          ),
        ),

        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}