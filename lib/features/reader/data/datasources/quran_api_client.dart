import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:quran_app/features/reader/data/dto/quran_api_dto.dart';

class QuranApiClient {
  static const String _baseUrl = 'https://api.alquran.cloud/v1';

  final Dio _dio;

  QuranApiClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: _baseUrl,
            connectTimeout: const Duration(seconds: 15),
            receiveTimeout: const Duration(seconds: 15),
          ),
        ) {
    _dio.interceptors.add(
      PrettyDioLogger(requestBody: true, responseBody: true, compact: true),
    );
  }

  Future<List<ApiSurah>> getAllSurahs() async {
    final response = await _dio.get<Map<String, dynamic>>('/surah');
    final json = response.data!;
    final dataList = json['data'] as List;
    return dataList
        .map((e) => ApiSurah.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<ApiSurah> getSurah(int number) async {
    final response =
        await _dio.get<Map<String, dynamic>>('/surah/$number');
    final json = response.data!;
    return ApiSurah.fromJson(json['data'] as Map<String, dynamic>);
  }

  Future<ApiAyah> getAyah(int number) async {
    final response = await _dio.get<Map<String, dynamic>>('/ayah/$number');
    final json = response.data!;
    return ApiAyah.fromJson(json['data'] as Map<String, dynamic>);
  }

  Future<ApiAyah> getAyahWithEdition(int number, String edition) async {
    final response =
        await _dio.get<Map<String, dynamic>>('/ayah/$number/$edition');
    final json = response.data!;
    return ApiAyah.fromJson(json['data'] as Map<String, dynamic>);
  }

  Future<List<ApiEdition>> getEditions({
    String? format,
    String? language,
    String? type,
  }) async {
    final queryParams = <String, dynamic>{};
    if (format != null) queryParams['format'] = format;
    if (language != null) queryParams['language'] = language;
    if (type != null) queryParams['type'] = type;

    final response = await _dio.get<Map<String, dynamic>>(
      '/edition',
      queryParameters: queryParams.isEmpty ? null : queryParams,
    );
    final json = response.data!;
    final dataList = json['data'] as List;
    return dataList
        .map((e) => ApiEdition.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<ApiEditionSurah> getSurahWithEdition(
    int number,
    String edition,
  ) async {
    final response =
        await _dio.get<Map<String, dynamic>>('/surah/$number/$edition');
    final json = response.data!;
    return ApiEditionSurah.fromJson(json['data'] as Map<String, dynamic>);
  }

  Future<List<ApiEdition>> getAudioEditions() async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/edition',
      queryParameters: {'format': 'audio'},
    );
    final json = response.data!;
    final dataList = json['data'] as List;
    return dataList
        .map((e) => ApiEdition.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<ApiAudioSurah> getSurahAudio(int number, String reciter) async {
    final response =
        await _dio.get<Map<String, dynamic>>('/surah/$number/$reciter');
    final json = response.data!;
    return ApiAudioSurah.fromJson(json['data'] as Map<String, dynamic>);
  }
}
