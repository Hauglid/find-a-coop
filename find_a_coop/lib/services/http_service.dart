import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:http/http.dart';

class HttpService {
  final client = Client();

  Future<Response> get({
    required String baseUrl,
    required String endpoint,
    Map<String, dynamic> extraQueryParameters = const {},
  }) async {
    try {
      final queryParameters = extraQueryParameters;

      final stopwatch = Stopwatch()..start();

      final uri = Uri.https(
        baseUrl,
        endpoint,
        queryParameters,
      );

      final Response response = await client.get(uri);

      stopwatch.stop();

      log('Stopwatch: /$endpoint: ${stopwatch.elapsed.inMilliseconds / 1000} inSeconds');
      return response;
    } catch (e) {
      throw const NoConnectionFailure();
    }
  }
}

class NoConnectionFailure implements Exception {
  const NoConnectionFailure();
}

dynamic jsonDecodeUtf8(Uint8List bytes) {
  return json.decode(utf8.decode(bytes));
}
