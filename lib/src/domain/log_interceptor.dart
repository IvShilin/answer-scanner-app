import 'package:dio/dio.dart';

import '../log/log.dart';

InterceptorsWrapper interceptorLog(Log logger) => InterceptorsWrapper(
      onRequest: (options, handler) {
        logger.d(
          [
            'uri: ${options.uri}',
            'headers: ${options.headers}',
            'path: ${options.path}',
            'query: ${options.queryParameters}',
            'data: ${options.data}',
          ].join('\n'),
        );
        handler.next(options);
      },
      onResponse: (response, handler) {
        logger.d(
          [
            'statusCode: ${response.statusCode}',
            'path: ${response.requestOptions.path}',
            'data: ${response.data}',
          ].join('\n'),
        );
        handler.next(response);
      },
      onError: (exception, handler) {
        logger.e(
          [
            'type: ${exception.type}',
            'error: ${exception.error}',
            'message: ${exception.message}',
            'data: ${exception.response?.data}',
          ].join('\n'),
        );
        handler.next(exception);
      },
    );
