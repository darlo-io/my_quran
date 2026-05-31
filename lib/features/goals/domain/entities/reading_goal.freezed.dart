// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReadingGoal _$ReadingGoalFromJson(Map<String, dynamic> json) {
  return _ReadingGoal.fromJson(json);
}

/// @nodoc
mixin _$ReadingGoal {
  int get id => throw _privateConstructorUsedError;
  String get goalType => throw _privateConstructorUsedError;
  int get targetValue => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ReadingGoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingGoalCopyWith<ReadingGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingGoalCopyWith<$Res> {
  factory $ReadingGoalCopyWith(
    ReadingGoal value,
    $Res Function(ReadingGoal) then,
  ) = _$ReadingGoalCopyWithImpl<$Res, ReadingGoal>;
  @useResult
  $Res call({
    int id,
    String goalType,
    int targetValue,
    bool active,
    DateTime createdAt,
  });
}

/// @nodoc
class _$ReadingGoalCopyWithImpl<$Res, $Val extends ReadingGoal>
    implements $ReadingGoalCopyWith<$Res> {
  _$ReadingGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goalType = null,
    Object? targetValue = null,
    Object? active = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            goalType: null == goalType
                ? _value.goalType
                : goalType // ignore: cast_nullable_to_non_nullable
                      as String,
            targetValue: null == targetValue
                ? _value.targetValue
                : targetValue // ignore: cast_nullable_to_non_nullable
                      as int,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReadingGoalImplCopyWith<$Res>
    implements $ReadingGoalCopyWith<$Res> {
  factory _$$ReadingGoalImplCopyWith(
    _$ReadingGoalImpl value,
    $Res Function(_$ReadingGoalImpl) then,
  ) = __$$ReadingGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String goalType,
    int targetValue,
    bool active,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$ReadingGoalImplCopyWithImpl<$Res>
    extends _$ReadingGoalCopyWithImpl<$Res, _$ReadingGoalImpl>
    implements _$$ReadingGoalImplCopyWith<$Res> {
  __$$ReadingGoalImplCopyWithImpl(
    _$ReadingGoalImpl _value,
    $Res Function(_$ReadingGoalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goalType = null,
    Object? targetValue = null,
    Object? active = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$ReadingGoalImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        goalType: null == goalType
            ? _value.goalType
            : goalType // ignore: cast_nullable_to_non_nullable
                  as String,
        targetValue: null == targetValue
            ? _value.targetValue
            : targetValue // ignore: cast_nullable_to_non_nullable
                  as int,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingGoalImpl implements _ReadingGoal {
  const _$ReadingGoalImpl({
    required this.id,
    required this.goalType,
    required this.targetValue,
    required this.active,
    required this.createdAt,
  });

  factory _$ReadingGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingGoalImplFromJson(json);

  @override
  final int id;
  @override
  final String goalType;
  @override
  final int targetValue;
  @override
  final bool active;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ReadingGoal(id: $id, goalType: $goalType, targetValue: $targetValue, active: $active, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingGoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goalType, goalType) ||
                other.goalType == goalType) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, goalType, targetValue, active, createdAt);

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingGoalImplCopyWith<_$ReadingGoalImpl> get copyWith =>
      __$$ReadingGoalImplCopyWithImpl<_$ReadingGoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingGoalImplToJson(this);
  }
}

abstract class _ReadingGoal implements ReadingGoal {
  const factory _ReadingGoal({
    required final int id,
    required final String goalType,
    required final int targetValue,
    required final bool active,
    required final DateTime createdAt,
  }) = _$ReadingGoalImpl;

  factory _ReadingGoal.fromJson(Map<String, dynamic> json) =
      _$ReadingGoalImpl.fromJson;

  @override
  int get id;
  @override
  String get goalType;
  @override
  int get targetValue;
  @override
  bool get active;
  @override
  DateTime get createdAt;

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingGoalImplCopyWith<_$ReadingGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalProgress _$GoalProgressFromJson(Map<String, dynamic> json) {
  return _GoalProgress.fromJson(json);
}

/// @nodoc
mixin _$GoalProgress {
  int get id => throw _privateConstructorUsedError;
  int get goalId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get currentValue => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this GoalProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalProgressCopyWith<GoalProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalProgressCopyWith<$Res> {
  factory $GoalProgressCopyWith(
    GoalProgress value,
    $Res Function(GoalProgress) then,
  ) = _$GoalProgressCopyWithImpl<$Res, GoalProgress>;
  @useResult
  $Res call({
    int id,
    int goalId,
    DateTime date,
    int currentValue,
    bool completed,
  });
}

/// @nodoc
class _$GoalProgressCopyWithImpl<$Res, $Val extends GoalProgress>
    implements $GoalProgressCopyWith<$Res> {
  _$GoalProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goalId = null,
    Object? date = null,
    Object? currentValue = null,
    Object? completed = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            goalId: null == goalId
                ? _value.goalId
                : goalId // ignore: cast_nullable_to_non_nullable
                      as int,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            currentValue: null == currentValue
                ? _value.currentValue
                : currentValue // ignore: cast_nullable_to_non_nullable
                      as int,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GoalProgressImplCopyWith<$Res>
    implements $GoalProgressCopyWith<$Res> {
  factory _$$GoalProgressImplCopyWith(
    _$GoalProgressImpl value,
    $Res Function(_$GoalProgressImpl) then,
  ) = __$$GoalProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int goalId,
    DateTime date,
    int currentValue,
    bool completed,
  });
}

/// @nodoc
class __$$GoalProgressImplCopyWithImpl<$Res>
    extends _$GoalProgressCopyWithImpl<$Res, _$GoalProgressImpl>
    implements _$$GoalProgressImplCopyWith<$Res> {
  __$$GoalProgressImplCopyWithImpl(
    _$GoalProgressImpl _value,
    $Res Function(_$GoalProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goalId = null,
    Object? date = null,
    Object? currentValue = null,
    Object? completed = null,
  }) {
    return _then(
      _$GoalProgressImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        goalId: null == goalId
            ? _value.goalId
            : goalId // ignore: cast_nullable_to_non_nullable
                  as int,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        currentValue: null == currentValue
            ? _value.currentValue
            : currentValue // ignore: cast_nullable_to_non_nullable
                  as int,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalProgressImpl implements _GoalProgress {
  const _$GoalProgressImpl({
    required this.id,
    required this.goalId,
    required this.date,
    required this.currentValue,
    required this.completed,
  });

  factory _$GoalProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalProgressImplFromJson(json);

  @override
  final int id;
  @override
  final int goalId;
  @override
  final DateTime date;
  @override
  final int currentValue;
  @override
  final bool completed;

  @override
  String toString() {
    return 'GoalProgress(id: $id, goalId: $goalId, date: $date, currentValue: $currentValue, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalProgressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, goalId, date, currentValue, completed);

  /// Create a copy of GoalProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalProgressImplCopyWith<_$GoalProgressImpl> get copyWith =>
      __$$GoalProgressImplCopyWithImpl<_$GoalProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalProgressImplToJson(this);
  }
}

abstract class _GoalProgress implements GoalProgress {
  const factory _GoalProgress({
    required final int id,
    required final int goalId,
    required final DateTime date,
    required final int currentValue,
    required final bool completed,
  }) = _$GoalProgressImpl;

  factory _GoalProgress.fromJson(Map<String, dynamic> json) =
      _$GoalProgressImpl.fromJson;

  @override
  int get id;
  @override
  int get goalId;
  @override
  DateTime get date;
  @override
  int get currentValue;
  @override
  bool get completed;

  /// Create a copy of GoalProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalProgressImplCopyWith<_$GoalProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
