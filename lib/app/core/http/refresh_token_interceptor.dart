import 'dart:developer';

import 'package:dio/dio.dart';

class RefreshTokenInterceptor extends Interceptor {
  RefreshTokenInterceptor();

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    log(
      'RESPONSE[${response.statusCode}]'
      ' => PATH: ${response.requestOptions.path}',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    log(
      'ERROR[${err.response?.statusCode}]'
      ' => PATH: ${err.requestOptions.path}',
    );
    super.onError(err, handler);
  }
}
