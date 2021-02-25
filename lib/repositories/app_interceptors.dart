import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather_app/utils/dependency_injection.dart';
import 'package:weather_app/utils/native_storage.dart';

class AppInterceptors extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    options.queryParameters.addAll({'appid': sl.get<NativeStorage>().apiKey});

    return super.onRequest(options);
  }

  @override
  Future onError(DioError dioError) async {
    if (dioError.error is SocketException) {
      return super.onError(dioError);
    }

    return super.onError(dioError);
  }

  @override
  Future onResponse(Response response) {
    return super.onResponse(response);
  }
}
