import 'package:flutter/material.dart';

import '../theme/ui_application_theme.dart';

class DarkLightButton extends StatelessWidget {
  const DarkLightButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = UIApplicationTheme.of(context);
    final icon = theme.map(
      light: (_) => Icons.sunny,
      dark: (_) => Icons.nightlight_round_outlined,
    );
    return ElevatedButton(
      onPressed: () async {
        await UIApplication.toggleThemeOf(context);
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(11),
        elevation: 3,
      ),
      child: Icon(icon),
    );
  }
}
