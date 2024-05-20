import 'package:flutter/material.dart';

import '../../theme/constants/constants.dart';
import '../../theme/theme_modes.dart';
import '../../theme/topg_theme.dart';

enum RateTileType {
  left,
  right,
}

enum RateTileBackgroundType {
  odd,
  even,
}

extension RateTileBackgroundTypeX on RateTileBackgroundType {
  Color resolveColor(TopGMode mode) {
    switch (this) {
      case RateTileBackgroundType.odd:
        return mode == TopGMode.light
            ? TopGColors.softLightBlue
            : TopGColors.softDarkBlue;
      case RateTileBackgroundType.even:
        return mode == TopGMode.light
            ? TopGColors.softLightRose
            : TopGColors.softDarkRose;
    }
  }
}

class DotaRateTile extends StatelessWidget {
  final Widget? symbol;
  final String heroName;
  final double rate;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final RateTileType type;
  final RateTileBackgroundType backgroundType;
  const DotaRateTile({
    required this.heroName,
    required this.rate,
    this.type = RateTileType.left,
    this.backgroundType = RateTileBackgroundType.odd,
    super.key,
    this.onTap,
    this.onLongPress,
    this.symbol,
  });

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final rateTileData = theme.dota.rateTileData;
    final color = backgroundType.resolveColor(theme.mode);

    final rateWidget = Text(
      '$rate%',
      style: rateTileData.rateStyle,
    );
    final leading = type == RateTileType.left ? symbol : rateWidget;
    final trailing = type == RateTileType.left ? rateWidget : symbol;
    final direction =
        type == RateTileType.left ? TextDirection.ltr : TextDirection.rtl;

    return ListTile(
      onTap: onTap,
      onLongPress: onLongPress,
      splashColor: Colors.transparent,
      tileColor: color,
      contentPadding: rateTileData.contentPadding,
      horizontalTitleGap: rateTileData.horizontalTitleGap,
      leading: leading,
      title: Text(
        heroName,
        textDirection: direction,
        style: rateTileData.titleStyle,
      ),
      trailing: trailing,
    );
  }
}

class DotaTileImage extends StatelessWidget {
  final String url;
  const DotaTileImage({
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Image.network(
        url,
        scale: 1.8,
        errorBuilder: (context, error, stackTrace) => const SizedBox(
          height: 40,
          width: 71,
          child: Placeholder(),
        ),
        loadingBuilder: (context, child, loadingProgress) => const SizedBox(
          height: 40,
          width: 71,
          child: Placeholder(),
        ),
      );
}
