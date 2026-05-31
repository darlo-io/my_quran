import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.serverError({
    required String message,
    @Default(500) int statusCode,
  }) = ServerErrorFailure;

  const factory Failure.networkError({
    required String message,
  }) = NetworkErrorFailure;

  const factory Failure.cacheError({
    required String message,
  }) = CacheErrorFailure;

  const factory Failure.notFound({
    required String message,
  }) = NotFoundFailure;

  const factory Failure.unauthorized({
    required String message,
  }) = UnauthorizedFailure;

  const factory Failure.validationError({
    required String message,
    Map<String, String>? errors,
  }) = ValidationErrorFailure;

  const factory Failure.unexpected({
    required String message,
    Object? originalError,
  }) = UnexpectedFailure;
}
