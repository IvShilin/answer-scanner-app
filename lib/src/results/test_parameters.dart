import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/s.dart';
import 'package:ui_application/ui_application.dart';

import '../dependency_injection/aurora_di.dart';

class TestParametersWidget extends ConsumerStatefulWidget {
  const TestParametersWidget({super.key});

  @override
  ConsumerState<TestParametersWidget> createState() =>
      _TestParametersWidgetState();
}

class _TestParametersWidgetState extends ConsumerState<TestParametersWidget> {
  String testId = '';
  @override
  Widget build(BuildContext context) {
    final testResultsNotifier =
        ref.watch(AuroraDi.testResultsProvider.notifier);
    final testResults = ref.watch(AuroraDi.testResultsProvider);
    final path = testResults.maybeMap(
      orElse: () => '',
      parameters: (params) => params.path,
    );
    final buttonType = testId.isEmpty ? UIApplicationType.disabled : UIApplicationType.statistics;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: S.of(context).testNumber,
            ),
            onChanged: (value) => setState(() {
              testId = value;
            }),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: MainButton(
            title: Text(S.of(context).send),
            onPressed: () async {
              await testResultsNotifier.sendPhoto(path: path, testId: testId);
            },
            type: buttonType,
          ),
        ),
      ],
    );
  }
}
