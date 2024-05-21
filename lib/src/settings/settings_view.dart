import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:ui_application/ui_application.dart';

import '../routes/app_router.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = UIApplicationTheme.of(context);
    final themeMode = theme.mode;
    final themeTitle = themeMode == UIApplicationMode.light
        ? S.of(context).lightTheme
        : S.of(context).darkTheme;
    final themeIcon = themeMode == UIApplicationMode.light
        ? Icons.sunny
        : Icons.nightlight_round_outlined;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
        centerTitle: true,
      ),
      body: SettingsView(
        settingBlocksList: [
          // Общие настройки
          SettingsBlock(
            title: S.of(context).settings,
            hasDivider: true,
            settingsList: [
              // Смена темы
              SettingsTyle(
                title: themeTitle,
                icon: themeIcon,
                onTap: () async {
                  await UIApplication.toggleThemeOf(context);
                },
              ),
              // Смена языка
              SettingsTyle(
                title: S.of(context).language,
                icon: Icons.language,
                lastInBlock: true,
                trailing: Text(
                  S.of(context).localeFull,
                  style: const TextStyle(color: UIApplicationColors.blueCrayola),
                ),
                onTap: () async {
                  await ScarlettLocalization.switchLocaleOf(context);
                },
              ),
            ],
          ),
          SettingsBlock(
            title: S.of(context).additional,
            hasDivider: true,
            settingsList: [
              // Смена темы
              SettingsTyle(
                title: S.of(context).changingTests,
                icon: Icons.admin_panel_settings,
                lastInBlock: true,
                onTap: () async {
                  await context.router.push(const TestUpdateRoute());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
