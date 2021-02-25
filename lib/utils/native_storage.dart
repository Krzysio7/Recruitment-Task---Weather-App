import 'dart:ffi';
import 'dart:io' show Platform;

import 'package:ffi/ffi.dart';

typedef GetKeyApi = Pointer<Utf8> Function();

class NativeStorage {
  DynamicLibrary _dylib;

  String _apiKey;

  String get apiKey => _apiKey;

  NativeStorage() {
    if (_dylib == null) {
      _dylib = Platform.isAndroid
          ? DynamicLibrary.open("libnative_storage.so")
          : DynamicLibrary.process();

      final apiKeyPointer = _dylib
          .lookup<NativeFunction<GetKeyApi>>('get_api_key')
          .asFunction<GetKeyApi>();

      _apiKey = Utf8.fromUtf8(apiKeyPointer());
    }
  }
}
