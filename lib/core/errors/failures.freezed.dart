// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message, Map<String, String>? errors)
    validationError,
    required TResult Function(String message, Object? originalError) unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message, Map<String, String>? errors)?
    validationError,
    TResult? Function(String message, Object? originalError)? unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message, Map<String, String>? errors)?
    validationError,
    TResult Function(String message, Object? originalError)? unexpected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorFailure value) serverError,
    required TResult Function(NetworkErrorFailure value) networkError,
    required TResult Function(CacheErrorFailure value) cacheError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ValidationErrorFailure value) validationError,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorFailure value)? serverError,
    TResult? Function(NetworkErrorFailure value)? networkError,
    TResult? Function(CacheErrorFailure value)? cacheError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(ValidationErrorFailure value)? validationError,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorFailure value)? serverError,
    TResult Function(NetworkErrorFailure value)? networkError,
    TResult Function(CacheErrorFailure value)? cacheError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ValidationErrorFailure value)? validationError,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServerErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerErrorFailureImplCopyWith(
    _$ServerErrorFailureImpl value,
    $Res Function(_$ServerErrorFailureImpl) then,
  ) = __$$ServerErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$ServerErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerErrorFailureImpl>
    implements _$$ServerErrorFailureImplCopyWith<$Res> {
  __$$ServerErrorFailureImplCopyWithImpl(
    _$ServerErrorFailureImpl _value,
    $Res Function(_$ServerErrorFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? statusCode = null}) {
    return _then(
      _$ServerErrorFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        statusCode: null == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ServerErrorFailureImpl implements ServerErrorFailure {
  const _$ServerErrorFailureImpl({
    required this.message,
    this.statusCode = 500,
  });

  @override
  final String message;
  @override
  @JsonKey()
  final int statusCode;

  @override
  String toString() {
    return 'Failure.serverError(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorFailureImplCopyWith<_$ServerErrorFailureImpl> get copyWith =>
      __$$ServerErrorFailureImplCopyWithImpl<_$ServerErrorFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message, Map<String, String>? errors)
    validationError,
    required TResult Function(String message, Object? originalError) unexpected,
  }) {
    return serverError(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message, Map<String, String>? errors)?
    validationError,
    TResult? Function(String message, Object? originalError)? unexpected,
  }) {
    return serverError?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message, Map<String, String>? errors)?
    validationError,
    TResult Function(String message, Object? originalError)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorFailure value) serverError,
    required TResult Function(NetworkErrorFailure value) networkError,
    required TResult Function(CacheErrorFailure value) cacheError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ValidationErrorFailure value) validationError,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorFailure value)? serverError,
    TResult? Function(NetworkErrorFailure value)? networkError,
    TResult? Function(CacheErrorFailure value)? cacheError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(ValidationErrorFailure value)? validationError,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorFailure value)? serverError,
    TResult Function(NetworkErrorFailure value)? networkError,
    TResult Function(CacheErrorFailure value)? cacheError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ValidationErrorFailure value)? validationError,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerErrorFailure implements Failure {
  const factory ServerErrorFailure({
    required final String message,
    final int statusCode,
  }) = _$ServerErrorFailureImpl;

  @override
  String get message;
  int get statusCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorFailureImplCopyWith<_$ServerErrorFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkErrorFailureImplCopyWith(
    _$NetworkErrorFailureImpl value,
    $Res Function(_$NetworkErrorFailureImpl) then,
  ) = __$$NetworkErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkErrorFailureImpl>
    implements _$$NetworkErrorFailureImplCopyWith<$Res> {
  __$$NetworkErrorFailureImplCopyWithImpl(
    _$NetworkErrorFailureImpl _value,
    $Res Function(_$NetworkErrorFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NetworkErrorFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NetworkErrorFailureImpl implements NetworkErrorFailure {
  const _$NetworkErrorFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.networkError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorFailureImplCopyWith<_$NetworkErrorFailureImpl> get copyWith =>
      __$$NetworkErrorFailureImplCopyWithImpl<_$NetworkErrorFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message, Map<String, String>? errors)
    validationError,
    required TResult Function(String message, Object? originalError) unexpected,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message, Map<String, String>? errors)?
    validationError,
    TResult? Function(String message, Object? originalError)? unexpected,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message, Map<String, String>? errors)?
    validationError,
    TResult Function(String message, Object? originalError)? unexpected,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorFailure value) serverError,
    required TResult Function(NetworkErrorFailure value) networkError,
    required TResult Function(CacheErrorFailure value) cacheError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ValidationErrorFailure value) validationError,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorFailure value)? serverError,
    TResult? Function(NetworkErrorFailure value)? networkError,
    TResult? Function(CacheErrorFailure value)? cacheError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(ValidationErrorFailure value)? validationError,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorFailure value)? serverError,
    TResult Function(NetworkErrorFailure value)? networkError,
    TResult Function(CacheErrorFailure value)? cacheError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ValidationErrorFailure value)? validationError,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkErrorFailure implements Failure {
  const factory NetworkErrorFailure({required final String message}) =
      _$NetworkErrorFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkErrorFailureImplCopyWith<_$NetworkErrorFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheErrorFailureImplCopyWith(
    _$CacheErrorFailureImpl value,
    $Res Function(_$CacheErrorFailureImpl) then,
  ) = __$$CacheErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheErrorFailureImpl>
    implements _$$CacheErrorFailureImplCopyWith<$Res> {
  __$$CacheErrorFailureImplCopyWithImpl(
    _$CacheErrorFailureImpl _value,
    $Res Function(_$CacheErrorFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CacheErrorFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CacheErrorFailureImpl implements CacheErrorFailure {
  const _$CacheErrorFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cacheError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheErrorFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheErrorFailureImplCopyWith<_$CacheErrorFailureImpl> get copyWith =>
      __$$CacheErrorFailureImplCopyWithImpl<_$CacheErrorFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message, Map<String, String>? errors)
    validationError,
    required TResult Function(String message, Object? originalError) unexpected,
  }) {
    return cacheError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message, Map<String, String>? errors)?
    validationError,
    TResult? Function(String message, Object? originalError)? unexpected,
  }) {
    return cacheError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message, Map<String, String>? errors)?
    validationError,
    TResult Function(String message, Object? originalError)? unexpected,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorFailure value) serverError,
    required TResult Function(NetworkErrorFailure value) networkError,
    required TResult Function(CacheErrorFailure value) cacheError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ValidationErrorFailure value) validationError,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorFailure value)? serverError,
    TResult? Function(NetworkErrorFailure value)? networkError,
    TResult? Function(CacheErrorFailure value)? cacheError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(ValidationErrorFailure value)? validationError,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return cacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorFailure value)? serverError,
    TResult Function(NetworkErrorFailure value)? networkError,
    TResult Function(CacheErrorFailure value)? cacheError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ValidationErrorFailure value)? validationError,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheErrorFailure implements Failure {
  const factory CacheErrorFailure({required final String message}) =
      _$CacheErrorFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheErrorFailureImplCopyWith<_$CacheErrorFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(
    _$NotFoundFailureImpl value,
    $Res Function(_$NotFoundFailureImpl) then,
  ) = __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
    _$NotFoundFailureImpl _value,
    $Res Function(_$NotFoundFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NotFoundFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NotFoundFailureImpl implements NotFoundFailure {
  const _$NotFoundFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message, Map<String, String>? errors)
    validationError,
    required TResult Function(String message, Object? originalError) unexpected,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message, Map<String, String>? errors)?
    validationError,
    TResult? Function(String message, Object? originalError)? unexpected,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message, Map<String, String>? errors)?
    validationError,
    TResult Function(String message, Object? originalError)? unexpected,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorFailure value) serverError,
    required TResult Function(NetworkErrorFailure value) networkError,
    required TResult Function(CacheErrorFailure value) cacheError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ValidationErrorFailure value) validationError,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorFailure value)? serverError,
    TResult? Function(NetworkErrorFailure value)? networkError,
    TResult? Function(CacheErrorFailure value)? cacheError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(ValidationErrorFailure value)? validationError,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorFailure value)? serverError,
    TResult Function(NetworkErrorFailure value)? networkError,
    TResult Function(CacheErrorFailure value)? cacheError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ValidationErrorFailure value)? validationError,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundFailure implements Failure {
  const factory NotFoundFailure({required final String message}) =
      _$NotFoundFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnauthorizedFailureImplCopyWith(
    _$UnauthorizedFailureImpl value,
    $Res Function(_$UnauthorizedFailureImpl) then,
  ) = __$$UnauthorizedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthorizedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedFailureImpl>
    implements _$$UnauthorizedFailureImplCopyWith<$Res> {
  __$$UnauthorizedFailureImplCopyWithImpl(
    _$UnauthorizedFailureImpl _value,
    $Res Function(_$UnauthorizedFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UnauthorizedFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UnauthorizedFailureImpl implements UnauthorizedFailure {
  const _$UnauthorizedFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedFailureImplCopyWith<_$UnauthorizedFailureImpl> get copyWith =>
      __$$UnauthorizedFailureImplCopyWithImpl<_$UnauthorizedFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message, Map<String, String>? errors)
    validationError,
    required TResult Function(String message, Object? originalError) unexpected,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message, Map<String, String>? errors)?
    validationError,
    TResult? Function(String message, Object? originalError)? unexpected,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message, Map<String, String>? errors)?
    validationError,
    TResult Function(String message, Object? originalError)? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorFailure value) serverError,
    required TResult Function(NetworkErrorFailure value) networkError,
    required TResult Function(CacheErrorFailure value) cacheError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ValidationErrorFailure value) validationError,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorFailure value)? serverError,
    TResult? Function(NetworkErrorFailure value)? networkError,
    TResult? Function(CacheErrorFailure value)? cacheError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(ValidationErrorFailure value)? validationError,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorFailure value)? serverError,
    TResult Function(NetworkErrorFailure value)? networkError,
    TResult Function(CacheErrorFailure value)? cacheError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ValidationErrorFailure value)? validationError,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedFailure implements Failure {
  const factory UnauthorizedFailure({required final String message}) =
      _$UnauthorizedFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedFailureImplCopyWith<_$UnauthorizedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ValidationErrorFailureImplCopyWith(
    _$ValidationErrorFailureImpl value,
    $Res Function(_$ValidationErrorFailureImpl) then,
  ) = __$$ValidationErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Map<String, String>? errors});
}

/// @nodoc
class __$$ValidationErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationErrorFailureImpl>
    implements _$$ValidationErrorFailureImplCopyWith<$Res> {
  __$$ValidationErrorFailureImplCopyWithImpl(
    _$ValidationErrorFailureImpl _value,
    $Res Function(_$ValidationErrorFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? errors = freezed}) {
    return _then(
      _$ValidationErrorFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        errors: freezed == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>?,
      ),
    );
  }
}

/// @nodoc

class _$ValidationErrorFailureImpl implements ValidationErrorFailure {
  const _$ValidationErrorFailureImpl({
    required this.message,
    final Map<String, String>? errors,
  }) : _errors = errors;

  @override
  final String message;
  final Map<String, String>? _errors;
  @override
  Map<String, String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Failure.validationError(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorFailureImplCopyWith<_$ValidationErrorFailureImpl>
  get copyWith =>
      __$$ValidationErrorFailureImplCopyWithImpl<_$ValidationErrorFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message, Map<String, String>? errors)
    validationError,
    required TResult Function(String message, Object? originalError) unexpected,
  }) {
    return validationError(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message, Map<String, String>? errors)?
    validationError,
    TResult? Function(String message, Object? originalError)? unexpected,
  }) {
    return validationError?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message, Map<String, String>? errors)?
    validationError,
    TResult Function(String message, Object? originalError)? unexpected,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorFailure value) serverError,
    required TResult Function(NetworkErrorFailure value) networkError,
    required TResult Function(CacheErrorFailure value) cacheError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ValidationErrorFailure value) validationError,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorFailure value)? serverError,
    TResult? Function(NetworkErrorFailure value)? networkError,
    TResult? Function(CacheErrorFailure value)? cacheError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(ValidationErrorFailure value)? validationError,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return validationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorFailure value)? serverError,
    TResult Function(NetworkErrorFailure value)? networkError,
    TResult Function(CacheErrorFailure value)? cacheError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ValidationErrorFailure value)? validationError,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class ValidationErrorFailure implements Failure {
  const factory ValidationErrorFailure({
    required final String message,
    final Map<String, String>? errors,
  }) = _$ValidationErrorFailureImpl;

  @override
  String get message;
  Map<String, String>? get errors;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorFailureImplCopyWith<_$ValidationErrorFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnexpectedFailureImplCopyWith(
    _$UnexpectedFailureImpl value,
    $Res Function(_$UnexpectedFailureImpl) then,
  ) = __$$UnexpectedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object? originalError});
}

/// @nodoc
class __$$UnexpectedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnexpectedFailureImpl>
    implements _$$UnexpectedFailureImplCopyWith<$Res> {
  __$$UnexpectedFailureImplCopyWithImpl(
    _$UnexpectedFailureImpl _value,
    $Res Function(_$UnexpectedFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? originalError = freezed}) {
    return _then(
      _$UnexpectedFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        originalError: freezed == originalError
            ? _value.originalError
            : originalError,
      ),
    );
  }
}

/// @nodoc

class _$UnexpectedFailureImpl implements UnexpectedFailure {
  const _$UnexpectedFailureImpl({required this.message, this.originalError});

  @override
  final String message;
  @override
  final Object? originalError;

  @override
  String toString() {
    return 'Failure.unexpected(message: $message, originalError: $originalError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other.originalError,
              originalError,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(originalError),
  );

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      __$$UnexpectedFailureImplCopyWithImpl<_$UnexpectedFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message, Map<String, String>? errors)
    validationError,
    required TResult Function(String message, Object? originalError) unexpected,
  }) {
    return unexpected(message, originalError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message, Map<String, String>? errors)?
    validationError,
    TResult? Function(String message, Object? originalError)? unexpected,
  }) {
    return unexpected?.call(message, originalError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message, Map<String, String>? errors)?
    validationError,
    TResult Function(String message, Object? originalError)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message, originalError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorFailure value) serverError,
    required TResult Function(NetworkErrorFailure value) networkError,
    required TResult Function(CacheErrorFailure value) cacheError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ValidationErrorFailure value) validationError,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorFailure value)? serverError,
    TResult? Function(NetworkErrorFailure value)? networkError,
    TResult? Function(CacheErrorFailure value)? cacheError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(ValidationErrorFailure value)? validationError,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorFailure value)? serverError,
    TResult Function(NetworkErrorFailure value)? networkError,
    TResult Function(CacheErrorFailure value)? cacheError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ValidationErrorFailure value)? validationError,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements Failure {
  const factory UnexpectedFailure({
    required final String message,
    final Object? originalError,
  }) = _$UnexpectedFailureImpl;

  @override
  String get message;
  Object? get originalError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
