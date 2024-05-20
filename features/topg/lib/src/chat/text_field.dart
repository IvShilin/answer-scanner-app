import 'package:flutter/material.dart';

import '../../topg.dart';

class ChatTextField extends StatefulWidget {
  final String? labelText;
  final void Function(String value) onSend;
  const ChatTextField({
    required this.onSend,
    this.labelText,
    super.key,
  });

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  late final TextEditingController controller;
  bool canSend = false;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(_onListen);
  }

  void _onListen() {
    if (controller.text.isEmpty) {
      setState(() {
        canSend = false;
      });
    } else {
      setState(() {
        canSend = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final chatTheme = theme.chat;
    return ColoredBox(
      color: theme.colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: widget.labelText,
                ),
              ),
            ),
            IconButton(
              onPressed: canSend
                  ? () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      widget.onSend(controller.text);
                      controller.clear();
                    }
                  : null,
              icon: const Icon(Icons.send),
              color: chatTheme.buttonActiveColor,
              disabledColor: chatTheme.buttonDisabledColor,
              splashColor: chatTheme.splashColor,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.removeListener(() {});
    controller.dispose();
    super.dispose();
  }
}
