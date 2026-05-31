// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReadingProgress _$ReadingProgressFromJson(Map<String, dynamic> json) {
  return _ReadingProgress.fromJson(json);
}

/// @nodoc
mixin _$ReadingProgress {
  int get id => throw _privateConstructorUsedError;
  int get surahId => throw _privateConstructorUsedError;
  int get ayahId => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  DateTime get lastOpenedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReadingProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingProgressCopyWith<ReadingProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingProgressCopyWith<$Res> {
  factory $ReadingProgressCopyWith(
    ReadingProgress value,
    $Res Function(ReadingProgress) then,
  ) = _$ReadingProgressCopyWithImpl<$Res, ReadingProgress>;
  @useResult
  $Res call({
    int id,
    int surahId,
    int ayahId,
    bool completed,
    DateTime lastOpenedAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$ReadingProgressCopyWithImpl<$Res, $Val extends ReadingProgress>
    implements $ReadingProgressCopyWith<$Res> {
  _$ReadingProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surahId = null,
    Object? ayahId = null,
    Object? completed = null,
    Object? lastOpenedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            surahId: null == surahId
                ? _value.surahId
                : surahId // ignore: cast_nullable_to_non_nullable
                      as int,
            ayahId: null == ayahId
                ? _value.ayahId
                : ayahId // ignore: cast_nullable_to_non_nullable
                      as int,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as bool,
            lastOpenedAt: null == lastOpenedAt
                ? _value.lastOpenedAt
                : lastOpenedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReadingProgressImplCopyWith<$Res>
    implements $ReadingProgressCopyWith<$Res> {
  factory _$$ReadingProgressImplCopyWith(
    _$ReadingProgressImpl value,
    $Res Function(_$ReadingProgressImpl) then,
  ) = __$$ReadingProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int surahId,
    int ayahId,
    bool completed,
    DateTime lastOpenedAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$ReadingProgressImplCopyWithImpl<$Res>
    extends _$ReadingProgressCopyWithImpl<$Res, _$ReadingProgressImpl>
    implements _$$ReadingProgressImplCopyWith<$Res> {
  __$$ReadingProgressImplCopyWithImpl(
    _$ReadingProgressImpl _value,
    $Res Function(_$ReadingProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surahId = null,
    Object? ayahId = null,
    Object? completed = null,
    Object? lastOpenedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ReadingProgressImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        surahId: null == surahId
            ? _value.surahId
            : surahId // ignore: cast_nullable_to_non_nullable
                  as int,
        ayahId: null == ayahId
            ? _value.ayahId
            : ayahId // ignore: cast_nullable_to_non_nullable
                  as int,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastOpenedAt: null == lastOpenedAt
            ? _value.lastOpenedAt
            : lastOpenedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingProgressImpl implements _ReadingProgress {
  const _$ReadingProgressImpl({
    required this.id,
    required this.surahId,
    required this.ayahId,
    required this.completed,
    required this.lastOpenedAt,
    required this.updatedAt,
  });

  factory _$ReadingProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingProgressImplFromJson(json);

  @override
  final int id;
  @override
  final int surahId;
  @override
  final int ayahId;
  @override
  final bool completed;
  @override
  final DateTime lastOpenedAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ReadingProgress(id: $id, surahId: $surahId, ayahId: $ayahId, completed: $completed, lastOpenedAt: $lastOpenedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingProgressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surahId, surahId) || other.surahId == surahId) &&
            (identical(other.ayahId, ayahId) || other.ayahId == ayahId) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.lastOpenedAt, lastOpenedAt) ||
                other.lastOpenedAt == lastOpenedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    surahId,
    ayahId,
    completed,
    lastOpenedAt,
    updatedAt,
  );

  /// Create a copy of ReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingProgressImplCopyWith<_$ReadingProgressImpl> get copyWith =>
      __$$ReadingProgressImplCopyWithImpl<_$ReadingProgressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingProgressImplToJson(this);
  }
}

abstract class _ReadingProgress implements ReadingProgress {
  const factory _ReadingProgress({
    required final int id,
    required final int surahId,
    required final int ayahId,
    required final bool completed,
    required final DateTime lastOpenedAt,
    required final DateTime updatedAt,
  }) = _$ReadingProgressImpl;

  factory _ReadingProgress.fromJson(Map<String, dynamic> json) =
      _$ReadingProgressImpl.fromJson;

  @override
  int get id;
  @override
  int get surahId;
  @override
  int get ayahId;
  @override
  bool get completed;
  @override
  DateTime get lastOpenedAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingProgressImplCopyWith<_$ReadingProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingSession _$ReadingSessionFromJson(Map<String, dynamic> json) {
  return _ReadingSession.fromJson(json);
}

/// @nodoc
mixin _$ReadingSession {
  int get id => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  int get surahId => throw _privateConstructorUsedError;
  int get ayahsRead => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;

  /// Serializes this ReadingSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingSessionCopyWith<ReadingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingSessionCopyWith<$Res> {
  factory $ReadingSessionCopyWith(
    ReadingSession value,
    $Res Function(ReadingSession) then,
  ) = _$ReadingSessionCopyWithImpl<$Res, ReadingSession>;
  @useResult
  $Res call({
    int id,
    DateTime startedAt,
    DateTime? endedAt,
    int surahId,
    int ayahsRead,
    int durationSeconds,
  });
}

/// @nodoc
class _$ReadingSessionCopyWithImpl<$Res, $Val extends ReadingSession>
    implements $ReadingSessionCopyWith<$Res> {
  _$ReadingSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? surahId = null,
    Object? ayahsRead = null,
    Object? durationSeconds = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            startedAt: null == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endedAt: freezed == endedAt
                ? _value.endedAt
                : endedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            surahId: null == surahId
                ? _value.surahId
                : surahId // ignore: cast_nullable_to_non_nullable
                      as int,
            ayahsRead: null == ayahsRead
                ? _value.ayahsRead
                : ayahsRead // ignore: cast_nullable_to_non_nullable
                      as int,
            durationSeconds: null == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReadingSessionImplCopyWith<$Res>
    implements $ReadingSessionCopyWith<$Res> {
  factory _$$ReadingSessionImplCopyWith(
    _$ReadingSessionImpl value,
    $Res Function(_$ReadingSessionImpl) then,
  ) = __$$ReadingSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    DateTime startedAt,
    DateTime? endedAt,
    int surahId,
    int ayahsRead,
    int durationSeconds,
  });
}

/// @nodoc
class __$$ReadingSessionImplCopyWithImpl<$Res>
    extends _$ReadingSessionCopyWithImpl<$Res, _$ReadingSessionImpl>
    implements _$$ReadingSessionImplCopyWith<$Res> {
  __$$ReadingSessionImplCopyWithImpl(
    _$ReadingSessionImpl _value,
    $Res Function(_$ReadingSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReadingSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? surahId = null,
    Object? ayahsRead = null,
    Object? durationSeconds = null,
  }) {
    return _then(
      _$ReadingSessionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        startedAt: null == startedAt
            ? _value.startedAt
            : startedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endedAt: freezed == endedAt
            ? _value.endedAt
            : endedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        surahId: null == surahId
            ? _value.surahId
            : surahId // ignore: cast_nullable_to_non_nullable
                  as int,
        ayahsRead: null == ayahsRead
            ? _value.ayahsRead
            : ayahsRead // ignore: cast_nullable_to_non_nullable
                  as int,
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingSessionImpl implements _ReadingSession {
  const _$ReadingSessionImpl({
    required this.id,
    required this.startedAt,
    this.endedAt,
    required this.surahId,
    required this.ayahsRead,
    required this.durationSeconds,
  });

  factory _$ReadingSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingSessionImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime startedAt;
  @override
  final DateTime? endedAt;
  @override
  final int surahId;
  @override
  final int ayahsRead;
  @override
  final int durationSeconds;

  @override
  String toString() {
    return 'ReadingSession(id: $id, startedAt: $startedAt, endedAt: $endedAt, surahId: $surahId, ayahsRead: $ayahsRead, durationSeconds: $durationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.surahId, surahId) || other.surahId == surahId) &&
            (identical(other.ayahsRead, ayahsRead) ||
                other.ayahsRead == ayahsRead) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    startedAt,
    endedAt,
    surahId,
    ayahsRead,
    durationSeconds,
  );

  /// Create a copy of ReadingSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingSessionImplCopyWith<_$ReadingSessionImpl> get copyWith =>
      __$$ReadingSessionImplCopyWithImpl<_$ReadingSessionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingSessionImplToJson(this);
  }
}

abstract class _ReadingSession implements ReadingSession {
  const factory _ReadingSession({
    required final int id,
    required final DateTime startedAt,
    final DateTime? endedAt,
    required final int surahId,
    required final int ayahsRead,
    required final int durationSeconds,
  }) = _$ReadingSessionImpl;

  factory _ReadingSession.fromJson(Map<String, dynamic> json) =
      _$ReadingSessionImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get startedAt;
  @override
  DateTime? get endedAt;
  @override
  int get surahId;
  @override
  int get ayahsRead;
  @override
  int get durationSeconds;

  /// Create a copy of ReadingSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingSessionImplCopyWith<_$ReadingSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
