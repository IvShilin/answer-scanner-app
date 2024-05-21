import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/s.dart';
import 'package:ui_application/ui_application.dart';

import '../dependency_injection/aurora_di.dart';
import '../routes/app_router.dart';
import 'test_parameters.dart';
import 'test_results_summary.dart';

@RoutePage()
class TestResultsScreen extends ConsumerWidget {
  const TestResultsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testResultNotifier =
        ref.watch(AuroraDi.testResultsProvider.notifier);
    final testResults = ref.watch(AuroraDi.testResultsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).results),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            testResultNotifier.toLoading();
            unawaited(context.router.maybePop());
          },
          icon: const Icon(Icons.chevron_left),
        ),
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          )
        ],
      ),
      body: testResults.map(
        results: (results) => TestResultsWidget(
          answers: results.answersList,
          correctAnswers: results.correctAnswers,
          incorrectAnswers: results.incorrectAnswers,
        ),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        error: (error) => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text('${S.of(context).error}: ${error.message}'),
          ),
        ),
        bad: (_) => Center(child: Text(S.of(context).remake)),
        parameters: (_) => const Center(
          child: TestParametersWidget(),
        ),
      ),
    );
  }
}
