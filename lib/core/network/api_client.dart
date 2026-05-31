import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:quran_app/core/constants/app_constants.dart';
import 'package:quran_app/core/errors/failures.dart';

class ApiClient {
  final Dio _dio;

  ApiClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.apiBaseUrl,
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
            headers: {'Content-Type': 'application/json'},
          ),
        ) {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        compact: false,
      ),
    );
  }

  void setAccessToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  void removeAccessToken() {
    _dio.options.headers.remove('Authorization');
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await _dio.get<T>(path, queryParameters: queryParameters);
    } on DioException catch (e) {
      throw _mapDioError(e);
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
  }) async {
    try {
      return await _dio.post<T>(path, data: data);
    } on DioException catch (e) {
      throw _mapDioError(e);
    }
  }

  Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
  }) async {
    try {
      return await _dio.patch<T>(path, data: data);
    } on DioException catch (e) {
      throw _mapDioError(e);
    }
  }

  Future<Response<T>> delete<T>(String path) async {
    try {
      return await _dio.delete<T>(path);
    } on DioException catch (e) {
      throw _mapDioError(e);
    }
  }

  Failure _mapDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return const Failure.networkError(
          message: 'Нет подключения к интернету',
        );
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode ?? 500;
        final message = _extractErrorMessage(e.response);
        switch (statusCode) {
          case 400:
            return const Failure.validationError(message: '');
          case 401:
            return const Failure.unauthorized(message: '');
          case 404:
            return const Failure.notFound(message: '');
          case 409:
            return Failure.serverError(message: message, statusCode: statusCode);
          default:
            return Failure.serverError(message: message, statusCode: statusCode);
        }
      case DioExceptionType.cancel:
        return Failure.unexpected(message: 'Запрос отменён', originalError: e);
      case DioExceptionType.badCertificate:
        return const Failure.serverError(message: 'Ошибка сертификата', statusCode: 0);
      case DioExceptionType.unknown:
        return Failure.unexpected(message: 'Неизвестная ошибка', originalError: e);
    }
  }

  String _extractErrorMessage(Response<dynamic>? response) {
    try {
      final data = response?.data;
      if (data is Map<String, dynamic> && data.containsKey('message')) {
        return data['message'] as String;
      }
      return response?.statusMessage ?? 'Неизвестная ошибка';
    } catch (_) {
      return 'Неизвестная ошибка';
    }
  }
}

final apiClientProvider = Provider<ApiClient>((ref) {
  final client = ApiClient();
  ref.onDispose(() {
    client.removeAccessToken();
  });
  return client;
});
