import 'package:flutter/material.dart';

import '../theme/constants/constants.dart';
import '../theme/topg_theme.dart';
import 'message_model.dart';

class Message extends StatelessWidget {
  final MessageModel model;
  const Message({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final chatTheme = theme.chat;

    final shouldShowName =
        model.name != null && model.author != MessageAuthor.you;
    final gradient = model.author == MessageAuthor.you
        ? chatTheme.youMessageBackgroundGradient
        : chatTheme.ilMessageBackgroundGradient;
    final timeColor = model.author == MessageAuthor.you
        ? chatTheme.youTimeColor
        : chatTheme.ilTimeColor;

    Widget? time = const SizedBox.shrink();
    if (model.date != null) {
      final minutes = model.date!.minute < 10
          ? '0${model.date!.minute}'
          : model.date!.minute.toString();

      time = Text(
        '${model.date!.hour}:$minutes',
        style: TextStyle(color: timeColor),
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color.lerp(TopGColors.white, TopGColors.blueCrayola, 0.2),
        gradient: gradient,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: chatTheme.shadowColor,
            offset: const Offset(2, 2),
            blurRadius: 3,
          ),
        ],
      ),
      child: SizedBox(
        width: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: shouldShowName
                      ? Text(
                          model.name!,
                          style: TextStyle(color: chatTheme.authorColor),
                        )
                      : const SizedBox.shrink(),
                ),
              ),
              Text(model.message),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: time,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
