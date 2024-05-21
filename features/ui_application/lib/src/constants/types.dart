import 'package:flutter/material.dart';

import '../../ui_application.dart';
import '../theme/ui_application_theme.dart';

enum UIApplicationType {
  regular,
  highlight,
  stress,
  action,
  statistics,
  knowledge,
  surge,
  warning,
  disabled,
}

extension UIApplicationTypeX on UIApplicationType {
  Color resolveColor(BuildContext context) {
    final theme = UIApplicationTheme.of(context);
    switch (this) {
      case UIApplicationType.regular:
        final regularColor = theme.mode == UIApplicationMode.light
            ? UIApplicationColors.yLightGrey
            : UIApplicationColors.yDarkGrey;
        return regularColor;
      case UIApplicationType.highlight:
        final highlightColor = theme.mode == UIApplicationMode.light
            ? UIApplicationColors.softLightBlue
            : UIApplicationColors.softDarkBlue;
        return highlightColor;
      case UIApplicationType.stress:
        final stressColor = theme.mode == UIApplicationMode.light
            ? UIApplicationColors.softLightRose
            : UIApplicationColors.softDarkRose;
        return stressColor;
      case UIApplicationType.action:
        return UIApplicationColors.yYellow;
      case UIApplicationType.statistics:
        return UIApplicationColors.yBlue;
      case UIApplicationType.knowledge:
        return UIApplicationColors.yGreen;
      case UIApplicationType.surge:
        return UIApplicationColors.yViolet;
      case UIApplicationType.warning:
        return UIApplicationColors.yRed;
      case UIApplicationType.disabled:
        return UIApplicationColors.yMidGrey.withOpacity(0.5);
    }
  }
}
