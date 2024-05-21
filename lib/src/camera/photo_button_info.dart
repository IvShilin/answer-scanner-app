import 'package:flutter/material.dart';
import 'package:ui_application/ui_application.dart';

class InfoButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const InfoButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.info_outline,
          color: UIApplicationColors.yDarkGrey,
        ),
      );
}
