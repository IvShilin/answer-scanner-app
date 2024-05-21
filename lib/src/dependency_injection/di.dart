import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../domain/aurora_client.dart';
import '../log/log.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

@module
abstract class AppModule {
  @lazySingleton
  Logger createLog() => Logger();

  @auroraClient
  @lazySingleton
  Dio testPhotoCheckClient(Log logger) => createAuroraClient(logger);
}
