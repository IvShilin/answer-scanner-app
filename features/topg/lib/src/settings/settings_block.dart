import 'package:flutter/material.dart';

import '../theme/topg_theme.dart';
import 'settings_tyle.dart';

class SettingsBlock extends StatelessWidget {
  final bool hasDivider;
  final List<SettingsTyle> settingsList;
  final String title;
  const SettingsBlock({
    required this.title,
    required this.settingsList,
    this.hasDivider = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final settingsTheme = theme.settings;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            title,
            style: TextStyle(color: settingsTheme.blockTitleColor),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: settingsList.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox.shrink(),
          itemBuilder: (BuildContext context, int index) => settingsList[index],
        ),
      ],
    );
  }
}
