import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/s.dart';
import 'package:ui_application/ui_application.dart';

import '../dependency_injection/di.dart';
import '../domain/test_check.dart';
import '../results/test_answer_table.dart';
import 'test_update_model.dart';

@RoutePage()
class TestUpdateScreen extends StatefulWidget {
  const TestUpdateScreen({super.key});

  @override
  State<TestUpdateScreen> createState() => _TestUpdateScreenState();
}

class _TestUpdateScreenState extends State<TestUpdateScreen> {
  TestUpdateModel model = const TestUpdateModel();
  @override
  Widget build(BuildContext context) {
    var sendButtonType = UIApplicationType.statistics;
    if (model.login.isEmpty ||
        model.password.isEmpty ||
        model.testId.isEmpty ||
        model.test.isEmpty) {
      sendButtonType = UIApplicationType.disabled;
    }
    for (final row in model.test) {
      if (row.answer.isEmpty || row.question.isEmpty) {
        sendButtonType = UIApplicationType.disabled;
      }
    }

    final removeButtonType =
        model.test.isEmpty ? UIApplicationType.disabled : UIApplicationType.statistics;
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).updatingTheTests),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  labelText: S.of(context).login,
                ),
                onChanged: (value) => setState(() {
                  final newModel = model.copyWith(login: value);
                  model = newModel;
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  labelText: S.of(context).password,
                ),
                onChanged: (value) => setState(() {
                  final newModel = model.copyWith(password: value);
                  model = newModel;
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  labelText: S.of(context).testNumber,
                ),
                onChanged: (value) => setState(() {
                  final newModel = model.copyWith(testId: value);
                  model = newModel;
                }),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TestTableRow(
                cells: [
                  Text(
                    S.of(context).questionNumber,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    S.of(context).selectedAnswer,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            for (int i = 0; i < model.test.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TestTableRow(
                  cells: [
                    TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) => setState(() {
                        final newList = <TestUpdateRowModel>[];
                        for (int j = 0; j < model.test.length; j++) {
                          String question = model.test[j].question;
                          if (i == j) {
                            question = value;
                          }
                          final newRow = TestUpdateRowModel(
                              question: question, answer: model.test[j].answer);
                          newList.add(newRow);
                        }
                        final newModel = model.copyWith(test: newList);
                        model = newModel;
                      }),
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) => setState(() {
                        final newList = <TestUpdateRowModel>[];
                        for (int j = 0; j < model.test.length; j++) {
                          String answer = model.test[j].answer;
                          if (i == j) {
                            answer = value;
                          }
                          final newRow = TestUpdateRowModel(
                              question: model.test[j].question, answer: answer);
                          newList.add(newRow);
                        }
                        final newModel = model.copyWith(test: newList);
                        model = newModel;
                      }),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  MainButton(
                    title: Text(S.of(context).remove),
                    onPressed: () {
                      setState(() {
                        final newList = List<TestUpdateRowModel>.from(
                          model.test,
                          growable: true,
                        );
                        newList.removeLast();
                        final newModel = model.copyWith(test: newList);
                        model = newModel;
                      });
                    },
                    type: removeButtonType,
                  ),
                  const SizedBox(height: 15),
                  MainButton(
                    title: Text(S.of(context).add),
                    onPressed: () {
                      setState(() {
                        final newList = List<TestUpdateRowModel>.from(
                          model.test,
                          growable: true,
                        );
                        newList.add(const TestUpdateRowModel());
                        final newModel = model.copyWith(test: newList);
                        model = newModel;
                      });
                    },
                    type: UIApplicationType.statistics,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: MainButton(
                title: Text(S.of(context).send),
                onPressed: () async {
                  await getIt.get<TestCheckService>().sendTest(model);
                  // ignore: use_build_context_synchronously
                  unawaited(context.router.maybePop());
                },
                type: sendButtonType,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
