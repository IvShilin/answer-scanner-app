import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../photo/photo_check_view.dart';
import '../photo/photo_view.dart';
import '../results/test_results_view.dart';
import '../settings/settings_view.dart';
import '../updates/test_update_view.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: PhotoRoute.page, initial: true),
        AutoRoute(page: PhotoCheckRoute.page),
        AutoRoute(page: TestResultsRoute.page),
        AutoRoute(page: TestUpdateRoute.page),
      ];
}
