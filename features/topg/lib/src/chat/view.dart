import 'package:flutter/material.dart';

import 'message.dart';
import 'message_model.dart';

class ChatView extends StatelessWidget {
  final List<MessageModel> messageList;
  const ChatView({required this.messageList, super.key});

  @override
  Widget build(BuildContext context) => ListView.separated(
        shrinkWrap: true,
        reverse: true,
        itemCount: messageList.length + 1,
        itemBuilder: (BuildContext context, int index) => const SizedBox(
          height: 7,
        ),
        separatorBuilder: (BuildContext context, int index) {
          Widget message = Message(model: messageList[index]);
          if (messageList[index].author == MessageAuthor.you) {
            message = Align(
              alignment: Alignment.centerRight,
              child: message,
            );
          } else {
            message = Align(
              alignment: Alignment.centerLeft,
              child: message,
            );
          }
          return message;
        },
      );
}
