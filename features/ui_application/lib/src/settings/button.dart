import 'package:flutter/material.dart';

import '../../ui_application.dart';

class SettingsButton extends StatelessWidget {
  final VoidCallback onTap;
  const SettingsButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = UIApplicationTheme.of(context);
    final settingsTheme = theme.settings;
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.more_vert,
        color: settingsTheme.buttonColor,
      ),
    );
  }
}
