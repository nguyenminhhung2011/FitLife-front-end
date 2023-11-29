import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/data/local/preferences.dart';
import 'package:fit_life/mvvm/data/remote/auth/auth_api.dart';

class AppCoreFactory {
  static Dio createDio(String baseUrl) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          "content-type": "application/json;encoding=utf-8",
          "Accept": "*/*",
        },
      ),
    )
      ..interceptors.add(TokenInterceptor())
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    if (!kIsWeb) {
      // ignore: deprecated_member_use
      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }
    return dio;
  }
}

class TokenInterceptor implements Interceptor {
  @override
  // ignore: deprecated_member_use
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    log("🐛[Dio error] ${err.message}");
    if (err.message?.contains("401") ?? false) {
      try {
        final response = await injector.get<AuthApi>().refreshToken();
        if (response.response.statusCode == HttpStatus.ok) {
          final responseData = response.data;
          await CommonAppSettingPref.setAccessToken(responseData.jwt);
          await CommonAppSettingPref.setRefreshToken(responseData.refreshToken);
        }
      } catch (_) {
        ///[Do something]
      }
    }
    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String accessToken = CommonAppSettingPref.getAccessToken();
    String refreshToken = CommonAppSettingPref.getRefreshToken();
    log("🌐[Optional] ${options.path}");
    log('🎉[Access] $accessToken\n🎉[Refresh] $refreshToken');

    ///[✏️ Config time out]
    options.connectTimeout = const Duration(seconds: 30);
    options.receiveTimeout = const Duration(seconds: 30);

    if (accessToken.isEmpty || refreshToken.isEmpty) {
      return handler.next(options);
    }
    if (options.path.contains("refreshToken")) {
      options.headers["Authorization"] = "Bearer $refreshToken";
      handler.next(options);
    }

    options.headers["Authorization"] =
        "Bearer ${CommonAppSettingPref.getAccessToken()}";
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
}
