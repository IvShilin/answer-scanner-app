import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/test_check.dart';
import '../photo/photo_check_manager.dart';
import '../photo/photo_check_model.dart';
import '../results/test_results_manager.dart';
import '../results/test_results_model.dart';
import 'di.dart';

abstract class AuroraDi {
  static final photoCheckProvider =
      StateNotifierProvider.autoDispose<PhotoCheckManager, PhotoCheckModel>(
    (ref) => PhotoCheckManager(),
  );

  static final testResultsProvider =
      StateNotifierProvider.autoDispose<ResultManager, TestResultsModel>(
    (ref) => ResultManager(
      testCheckService: getIt.get<TestCheckService>(),
    ),
  );
}
