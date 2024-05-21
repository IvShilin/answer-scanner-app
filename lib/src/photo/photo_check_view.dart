import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/s.dart';
import 'package:ui_application/ui_application.dart';

import '../camera/manager.dart';
import '../dependency_injection/aurora_di.dart';
import '../dependency_injection/di.dart';
import '../routes/app_router.dart';

@RoutePage()
class PhotoCheckScreen extends ConsumerWidget {
  const PhotoCheckScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoCheckModel = ref.watch(AuroraDi.photoCheckProvider);
    final testResultsNotifier =
        ref.watch(AuroraDi.testResultsProvider.notifier);

    final sendButtonType = photoCheckModel.maybeMap(
      orElse: () => UIApplicationType.disabled,
      photo: (_) => UIApplicationType.statistics,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).connectionSettings),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            final camerasManager = getIt.get<CamerasManager>();
            unawaited(camerasManager.getAvailableCameras());
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: photoCheckModel.maybeWhen(
              photo: (path) {
                if (kIsWeb) {
                  return Image.network(
                    path,
                    fit: BoxFit.fill,
                  );
                }
                return Image.file(
                  File(path),
                  fit: BoxFit.fill,
                );
              },
              orElse: () => const Placeholder(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: MainButton(
                    title: Text(S.of(context).remake),
                    onPressed: () {
                      final camerasManager = getIt.get<CamerasManager>();
                      unawaited(camerasManager.getAvailableCameras());
                      unawaited(context.router.maybePop());
                    },
                    type: UIApplicationType.regular,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: MainButton(
                    title: Text(S.of(context).continuE),
                    onPressed: photoCheckModel.maybeMap(
                      orElse: () => () {},
                      photo: (photo) => () {
                        testResultsNotifier.setPath(photo.path);
                        unawaited(
                          context.router.push(const TestResultsRoute()),
                        );
                      },
                    ),
                    type: sendButtonType,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
