import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/test_check.dart';
import 'test_results_model.dart';

class ResultManager extends StateNotifier<TestResultsModel> {
  final TestCheckService _testCheckService;
  ResultManager({
    required TestCheckService testCheckService,
  })  : _testCheckService = testCheckService,
        super(const TestResultsModel.loading());

  Future<void> sendPhoto({
    required String path,
    required String testId,
  }) async {
    final model = await _testCheckService.sendPhoto(path: path, testId: testId);
    state = model;
  }

  void setPath(String path) => state = TestResultsModel.parameters(path: path);

  void toLoading() => state = const TestResultsModel.loading();
}
