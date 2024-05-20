import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Column(
          children: [
            Expanded(child: Placeholder()),
          ],
        ),
      );
}
