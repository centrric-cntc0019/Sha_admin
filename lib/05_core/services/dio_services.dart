import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sha_admin/05_core/services/shared_pref.dart';

import '../../01_presentation/widgets/toast.dart';
import '../failure/main_failure.dart';
import '../../03_domain/di/injection.dart';
import '../../03_domain/auth/models/login_model.dart';

@LazySingleton()
class DioServices {
  BaseOptions options = BaseOptions(
    baseUrl: dotenv.env["baseUrl"] ?? "",
    followRedirects: false,
    contentType: "application/json",
    validateStatus: (status) {
      return status! < 500;
    },
    headers: {"accept": "application/json"},
    connectTimeout: const Duration(seconds: 16), // 60 seconds
    // receiveTimeout: const Duration(seconds: 60 ), // 60 seconds
  );

  final dioInstance = Dio();

  Future<Either<MainFailure, Response>> request(
      {required String url,
      required String method,
      dynamic data,
      bool? authenticated = false}) async {
    try {
      if (authenticated == true) {
        dioInstance.options = options;
        dioInstance.options.method = method;

        /// Set token for authenticated api's
        String? accessToken =
            await getIt<CacheHelper>().getCachedData(key: "access_token");
        dioInstance.options.headers["Authorization"] = "Bearer $accessToken";
        if (dioInstance.interceptors.isEmpty) {
          dioInstance.interceptors.add(TokenInterceptor(dioInstance));
        }
      } else {
        dioInstance.options = options;
        dioInstance.options.method = method;
        dioInstance.options.headers.remove("Authorization");
        if (dioInstance.interceptors.isNotEmpty) {
          log("${dioInstance.interceptors.last}",
              name: "dioInstance.interceptors.last");
          dioInstance.interceptors.removeLast();
        }
        log('interceptors removed');
      }

      final response = await dioInstance.request(
        url,
        data: data,
      );

      debugPrint(
          '******************************* $method *******************************');
      debugPrint("");
      log('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* $method *******************************');

      if (response.statusCode == 200 || response.statusCode == 201) {
        // if (response.data['error'] != null) {
        //   return const Left(MainFailure.clientFailure());
        // }
        return Right(response);
      } else {
        try {
          failureToast("${response.data["app_data"]}");
        } catch (e) {
          log(
            e.toString(),
            name: "Error on showing toast",
          );
        }
        return const Left(MainFailure.clientFailure());
      }
    } on DioException catch (e) {
      debugPrint('DioError ::');
      debugPrint('$e');
      if (e.type == DioExceptionType.connectionError) {
        debugPrint('DioErrorType.connectionError::');
        return const Left(MainFailure.networkFailure());
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        debugPrint('cDioErrorType.connectionTimeout::');
        return const Left(MainFailure.timeout());
      }

      // if (e.type == DioErrorType.receiveTimeout) {
      //   debugPrint('unable to connect to the server');
      //   return const Left(MainFailure.serverFailure());
      // }

      if (e.type == DioExceptionType.unknown) {
        debugPrint('DioErrorType.unknown :: Something went wrong');
        return const Left(MainFailure.serverFailure());
      }
      debugPrint('$e');
      return const Left(MainFailure.serverFailure());
    }
  }
}

class TokenInterceptor extends Interceptor {
  final Dio dioInstance;
  const TokenInterceptor(this.dioInstance);
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    // Check if the response indicates an expired token or other authentication issue.
    if (response.statusCode == 401) {
      // Perform token renewal logic here (Calling an API to get a new token).
      String? newToken = await renewToken(dioInstance);

      if (newToken != null) {
        RequestOptions options = response.requestOptions;
        // Retry the original request with the new token.
        options.headers["Authorization"] = "JWT $newToken";
        return getIt<DioServices>().dioInstance.request(
              options.path,
              data: options.data,
              options: Options(
                method: options.method,
                headers: options.headers,
              ),
            );
      }
    }

    return super.onResponse(response, handler);
  }

// Set max retries to 3
  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    int retries = 0;
    int maxRetries = 3;
    int retrySeconds = 2;

    while (retries < maxRetries) {
      retries++;
      try {
        await Future.delayed(Duration(seconds: retrySeconds));
        return handler.next(err);
      } catch (e) {
        debugPrint('DioError in Interceptor ::');
      }
    }

    return handler.next(err);
  }

  Future<String?> renewToken(Dio dioInstance) async {
    // Renew token here
    String? refreshToken =
        await getIt<CacheHelper>().getCachedData(key: "refresh_token");
    final response = await dioInstance.post(
      "${dotenv.env["baseUrl"] ?? ""}api/v1/renew/access/",
      data: {"refresh_token": refreshToken},
    );
    if (response.statusCode == 200) {
      final data = LoginModel.fromJson(response.data);
      getIt<CacheHelper>()
          .cacheData(key: "access_token", code: data.accessToken!);
      getIt<CacheHelper>()
          .cacheData(key: "refresh_token", code: data.refreshToken!);
      return data.refreshToken;
    }
    return null;
  }
}
