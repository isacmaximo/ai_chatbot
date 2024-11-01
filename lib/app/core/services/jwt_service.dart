import 'dart:developer';

import 'package:ai_chatbot/app/core/services/shared_local_storage_service.dart';
import 'package:ai_chatbot/app/shared/constants.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class JwtService {
  final SharedLocalStorageService _storageService;

  late Dio _client;

  JwtService(this._storageService) {
    _client = Dio();
    _client.options.headers['Content-Type'] = 'application/json';
    _client.options.headers.remove('Authorization');
    _client.options.sendTimeout = sendTimeout;
    _client.options.connectTimeout = connectTimeout;
    _client.options.receiveTimeout = receiveTimeout;
  }

  Future<void> setJWT(String jwt) async {
    await _storageService.put('jwt', jwt);
  }

  Future<String> getJWT() async {
    return await _storageService.get('jwt') ?? '';
  }

  Future<Map<String, dynamic>?> getPayload() async {
    var jwt = await getJWT();

    if (jwt.isNotEmpty) {
      try {
        return JwtDecoder.decode(jwt);
      } on FormatException catch (e) {
        log('Falha ao realizar o decode do token JWT: $e');
      }
    }
    return null;
  }
}
