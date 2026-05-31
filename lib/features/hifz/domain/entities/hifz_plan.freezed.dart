// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hifz_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HifzPlan _$HifzPlanFromJson(Map<String, dynamic> json) {
  return _HifzPlan.fromJson(json);
}

/// @nodoc
mixin _$HifzPlan {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this HifzPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HifzPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HifzPlanCopyWith<HifzPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HifzPlanCopyWith<$Res> {
  factory $HifzPlanCopyWith(HifzPlan value, $Res Function(HifzPlan) then) =
      _$HifzPlanCopyWithImpl<$Res, HifzPlan>;
  @useResult
  $Res call({
    int id,
    String name,
    String level,
    bool active,
    DateTime createdAt,
  });
}

/// @nodoc
class _$HifzPlanCopyWithImpl<$Res, $Val extends HifzPlan>
    implements $HifzPlanCopyWith<$Res> {
  _$HifzPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HifzPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? level = null,
    Object? active = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$HifzPlanImplCopyWith<$Res>
    implements $HifzPlanCopyWith<$Res> {
  factory _$$HifzPlanImplCopyWith(
    _$HifzPlanImpl value,
    $Res Function(_$HifzPlanImpl) then,
  ) = __$$HifzPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String level,
    bool active,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$HifzPlanImplCopyWithImpl<$Res>
    extends _$HifzPlanCopyWithImpl<$Res, _$HifzPlanImpl>
    implements _$$HifzPlanImplCopyWith<$Res> {
  __$$HifzPlanImplCopyWithImpl(
    _$HifzPlanImpl _value,
    $Res Function(_$HifzPlanImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HifzPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? level = null,
    Object? active = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$HifzPlanImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$HifzPlanImpl implements _HifzPlan {
  const _$HifzPlanImpl({
    required this.id,
    required this.name,
    required this.level,
    required this.active,
    required this.createdAt,
  });

  factory _$HifzPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$HifzPlanImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String level;
  @override
  final bool active;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'HifzPlan(id: $id, name: $name, level: $level, active: $active, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HifzPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, level, active, createdAt);

  /// Create a copy of HifzPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HifzPlanImplCopyWith<_$HifzPlanImpl> get copyWith =>
      __$$HifzPlanImplCopyWithImpl<_$HifzPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HifzPlanImplToJson(this);
  }
}

abstract class _HifzPlan implements HifzPlan {
  const factory _HifzPlan({
    required final int id,
    required final String name,
    required final String level,
    required final bool active,
    required final DateTime createdAt,
  }) = _$HifzPlanImpl;

  factory _HifzPlan.fromJson(Map<String, dynamic> json) =
      _$HifzPlanImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get level;
  @override
  bool get active;
  @override
  DateTime get createdAt;

  /// Create a copy of HifzPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HifzPlanImplCopyWith<_$HifzPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HifzItem _$HifzItemFromJson(Map<String, dynamic> json) {
  return _HifzItem.fromJson(json);
}

/// @nodoc
mixin _$HifzItem {
  int get id => throw _privateConstructorUsedError;
  int get planId => throw _privateConstructorUsedError;
  int get ayahId => throw _privateConstructorUsedError;
  int get orderNumber => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this HifzItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HifzItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HifzItemCopyWith<HifzItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HifzItemCopyWith<$Res> {
  factory $HifzItemCopyWith(HifzItem value, $Res Function(HifzItem) then) =
      _$HifzItemCopyWithImpl<$Res, HifzItem>;
  @useResult
  $Res call({int id, int planId, int ayahId, int orderNumber, String status});
}

/// @nodoc
class _$HifzItemCopyWithImpl<$Res, $Val extends HifzItem>
    implements $HifzItemCopyWith<$Res> {
  _$HifzItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HifzItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planId = null,
    Object? ayahId = null,
    Object? orderNumber = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            planId: null == planId
                ? _value.planId
                : planId // ignore: cast_nullable_to_non_nullable
                      as int,
            ayahId: null == ayahId
                ? _value.ayahId
                : ayahId // ignore: cast_nullable_to_non_nullable
                      as int,
            orderNumber: null == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HifzItemImplCopyWith<$Res>
    implements $HifzItemCopyWith<$Res> {
  factory _$$HifzItemImplCopyWith(
    _$HifzItemImpl value,
    $Res Function(_$HifzItemImpl) then,
  ) = __$$HifzItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int planId, int ayahId, int orderNumber, String status});
}

/// @nodoc
class __$$HifzItemImplCopyWithImpl<$Res>
    extends _$HifzItemCopyWithImpl<$Res, _$HifzItemImpl>
    implements _$$HifzItemImplCopyWith<$Res> {
  __$$HifzItemImplCopyWithImpl(
    _$HifzItemImpl _value,
    $Res Function(_$HifzItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HifzItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planId = null,
    Object? ayahId = null,
    Object? orderNumber = null,
    Object? status = null,
  }) {
    return _then(
      _$HifzItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        planId: null == planId
            ? _value.planId
            : planId // ignore: cast_nullable_to_non_nullable
                  as int,
        ayahId: null == ayahId
            ? _value.ayahId
            : ayahId // ignore: cast_nullable_to_non_nullable
                  as int,
        orderNumber: null == orderNumber
            ? _value.orderNumber
            : orderNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HifzItemImpl implements _HifzItem {
  const _$HifzItemImpl({
    required this.id,
    required this.planId,
    required this.ayahId,
    required this.orderNumber,
    required this.status,
  });

  factory _$HifzItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HifzItemImplFromJson(json);

  @override
  final int id;
  @override
  final int planId;
  @override
  final int ayahId;
  @override
  final int orderNumber;
  @override
  final String status;

  @override
  String toString() {
    return 'HifzItem(id: $id, planId: $planId, ayahId: $ayahId, orderNumber: $orderNumber, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HifzItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.ayahId, ayahId) || other.ayahId == ayahId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, planId, ayahId, orderNumber, status);

  /// Create a copy of HifzItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HifzItemImplCopyWith<_$HifzItemImpl> get copyWith =>
      __$$HifzItemImplCopyWithImpl<_$HifzItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HifzItemImplToJson(this);
  }
}

abstract class _HifzItem implements HifzItem {
  const factory _HifzItem({
    required final int id,
    required final int planId,
    required final int ayahId,
    required final int orderNumber,
    required final String status,
  }) = _$HifzItemImpl;

  factory _HifzItem.fromJson(Map<String, dynamic> json) =
      _$HifzItemImpl.fromJson;

  @override
  int get id;
  @override
  int get planId;
  @override
  int get ayahId;
  @override
  int get orderNumber;
  @override
  String get status;

  /// Create a copy of HifzItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HifzItemImplCopyWith<_$HifzItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewSession _$ReviewSessionFromJson(Map<String, dynamic> json) {
  return _ReviewSession.fromJson(json);
}

/// @nodoc
mixin _$ReviewSession {
  int get id => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  int get itemsCount => throw _privateConstructorUsedError;

  /// Serializes this ReviewSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewSessionCopyWith<ReviewSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewSessionCopyWith<$Res> {
  factory $ReviewSessionCopyWith(
    ReviewSession value,
    $Res Function(ReviewSession) then,
  ) = _$ReviewSessionCopyWithImpl<$Res, ReviewSession>;
  @useResult
  $Res call({int id, DateTime startedAt, DateTime? endedAt, int itemsCount});
}

/// @nodoc
class _$ReviewSessionCopyWithImpl<$Res, $Val extends ReviewSession>
    implements $ReviewSessionCopyWith<$Res> {
  _$ReviewSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? itemsCount = null,
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
            itemsCount: null == itemsCount
                ? _value.itemsCount
                : itemsCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewSessionImplCopyWith<$Res>
    implements $ReviewSessionCopyWith<$Res> {
  factory _$$ReviewSessionImplCopyWith(
    _$ReviewSessionImpl value,
    $Res Function(_$ReviewSessionImpl) then,
  ) = __$$ReviewSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime startedAt, DateTime? endedAt, int itemsCount});
}

/// @nodoc
class __$$ReviewSessionImplCopyWithImpl<$Res>
    extends _$ReviewSessionCopyWithImpl<$Res, _$ReviewSessionImpl>
    implements _$$ReviewSessionImplCopyWith<$Res> {
  __$$ReviewSessionImplCopyWithImpl(
    _$ReviewSessionImpl _value,
    $Res Function(_$ReviewSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? itemsCount = null,
  }) {
    return _then(
      _$ReviewSessionImpl(
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
        itemsCount: null == itemsCount
            ? _value.itemsCount
            : itemsCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewSessionImpl implements _ReviewSession {
  const _$ReviewSessionImpl({
    required this.id,
    required this.startedAt,
    this.endedAt,
    required this.itemsCount,
  });

  factory _$ReviewSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewSessionImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime startedAt;
  @override
  final DateTime? endedAt;
  @override
  final int itemsCount;

  @override
  String toString() {
    return 'ReviewSession(id: $id, startedAt: $startedAt, endedAt: $endedAt, itemsCount: $itemsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, startedAt, endedAt, itemsCount);

  /// Create a copy of ReviewSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewSessionImplCopyWith<_$ReviewSessionImpl> get copyWith =>
      __$$ReviewSessionImplCopyWithImpl<_$ReviewSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewSessionImplToJson(this);
  }
}

abstract class _ReviewSession implements ReviewSession {
  const factory _ReviewSession({
    required final int id,
    required final DateTime startedAt,
    final DateTime? endedAt,
    required final int itemsCount,
  }) = _$ReviewSessionImpl;

  factory _ReviewSession.fromJson(Map<String, dynamic> json) =
      _$ReviewSessionImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get startedAt;
  @override
  DateTime? get endedAt;
  @override
  int get itemsCount;

  /// Create a copy of ReviewSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewSessionImplCopyWith<_$ReviewSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewResult _$ReviewResultFromJson(Map<String, dynamic> json) {
  return _ReviewResult.fromJson(json);
}

/// @nodoc
mixin _$ReviewResult {
  int get id => throw _privateConstructorUsedError;
  int get sessionId => throw _privateConstructorUsedError;
  int get hifzItemId => throw _privateConstructorUsedError;
  String get grade => throw _privateConstructorUsedError;
  DateTime get reviewedAt => throw _privateConstructorUsedError;
  DateTime? get nextReviewAt => throw _privateConstructorUsedError;

  /// Serializes this ReviewResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewResultCopyWith<ReviewResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResultCopyWith<$Res> {
  factory $ReviewResultCopyWith(
    ReviewResult value,
    $Res Function(ReviewResult) then,
  ) = _$ReviewResultCopyWithImpl<$Res, ReviewResult>;
  @useResult
  $Res call({
    int id,
    int sessionId,
    int hifzItemId,
    String grade,
    DateTime reviewedAt,
    DateTime? nextReviewAt,
  });
}

/// @nodoc
class _$ReviewResultCopyWithImpl<$Res, $Val extends ReviewResult>
    implements $ReviewResultCopyWith<$Res> {
  _$ReviewResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? hifzItemId = null,
    Object? grade = null,
    Object? reviewedAt = null,
    Object? nextReviewAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as int,
            hifzItemId: null == hifzItemId
                ? _value.hifzItemId
                : hifzItemId // ignore: cast_nullable_to_non_nullable
                      as int,
            grade: null == grade
                ? _value.grade
                : grade // ignore: cast_nullable_to_non_nullable
                      as String,
            reviewedAt: null == reviewedAt
                ? _value.reviewedAt
                : reviewedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            nextReviewAt: freezed == nextReviewAt
                ? _value.nextReviewAt
                : nextReviewAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewResultImplCopyWith<$Res>
    implements $ReviewResultCopyWith<$Res> {
  factory _$$ReviewResultImplCopyWith(
    _$ReviewResultImpl value,
    $Res Function(_$ReviewResultImpl) then,
  ) = __$$ReviewResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int sessionId,
    int hifzItemId,
    String grade,
    DateTime reviewedAt,
    DateTime? nextReviewAt,
  });
}

/// @nodoc
class __$$ReviewResultImplCopyWithImpl<$Res>
    extends _$ReviewResultCopyWithImpl<$Res, _$ReviewResultImpl>
    implements _$$ReviewResultImplCopyWith<$Res> {
  __$$ReviewResultImplCopyWithImpl(
    _$ReviewResultImpl _value,
    $Res Function(_$ReviewResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? hifzItemId = null,
    Object? grade = null,
    Object? reviewedAt = null,
    Object? nextReviewAt = freezed,
  }) {
    return _then(
      _$ReviewResultImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as int,
        hifzItemId: null == hifzItemId
            ? _value.hifzItemId
            : hifzItemId // ignore: cast_nullable_to_non_nullable
                  as int,
        grade: null == grade
            ? _value.grade
            : grade // ignore: cast_nullable_to_non_nullable
                  as String,
        reviewedAt: null == reviewedAt
            ? _value.reviewedAt
            : reviewedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        nextReviewAt: freezed == nextReviewAt
            ? _value.nextReviewAt
            : nextReviewAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewResultImpl implements _ReviewResult {
  const _$ReviewResultImpl({
    required this.id,
    required this.sessionId,
    required this.hifzItemId,
    required this.grade,
    required this.reviewedAt,
    this.nextReviewAt,
  });

  factory _$ReviewResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewResultImplFromJson(json);

  @override
  final int id;
  @override
  final int sessionId;
  @override
  final int hifzItemId;
  @override
  final String grade;
  @override
  final DateTime reviewedAt;
  @override
  final DateTime? nextReviewAt;

  @override
  String toString() {
    return 'ReviewResult(id: $id, sessionId: $sessionId, hifzItemId: $hifzItemId, grade: $grade, reviewedAt: $reviewedAt, nextReviewAt: $nextReviewAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.hifzItemId, hifzItemId) ||
                other.hifzItemId == hifzItemId) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.nextReviewAt, nextReviewAt) ||
                other.nextReviewAt == nextReviewAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    hifzItemId,
    grade,
    reviewedAt,
    nextReviewAt,
  );

  /// Create a copy of ReviewResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewResultImplCopyWith<_$ReviewResultImpl> get copyWith =>
      __$$ReviewResultImplCopyWithImpl<_$ReviewResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewResultImplToJson(this);
  }
}

abstract class _ReviewResult implements ReviewResult {
  const factory _ReviewResult({
    required final int id,
    required final int sessionId,
    required final int hifzItemId,
    required final String grade,
    required final DateTime reviewedAt,
    final DateTime? nextReviewAt,
  }) = _$ReviewResultImpl;

  factory _ReviewResult.fromJson(Map<String, dynamic> json) =
      _$ReviewResultImpl.fromJson;

  @override
  int get id;
  @override
  int get sessionId;
  @override
  int get hifzItemId;
  @override
  String get grade;
  @override
  DateTime get reviewedAt;
  @override
  DateTime? get nextReviewAt;

  /// Create a copy of ReviewResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewResultImplCopyWith<_$ReviewResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
