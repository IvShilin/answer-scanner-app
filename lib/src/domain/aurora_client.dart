import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../log/log.dart';
import 'log_interceptor.dart';

const auroraClient = Named('AuroraClient');

Dio createAuroraClient(Log logger) {
  final Dio client = Dio(
    BaseOptions(
      baseUrl: 'http://87.242.101.70:8088',
    ),
  )..interceptors.addAll([interceptorLog(logger)]);

  return client;
}
