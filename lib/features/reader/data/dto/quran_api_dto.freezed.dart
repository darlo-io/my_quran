// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_api_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiResponse {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
    ApiResponse value,
    $Res Function(ApiResponse) then,
  ) = _$ApiResponseCopyWithImpl<$Res, ApiResponse>;
  @useResult
  $Res call({int code, String status});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res, $Val extends ApiResponse>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? status = null}) {
    return _then(
      _value.copyWith(
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ApiResponseImplCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$$ApiResponseImplCopyWith(
    _$ApiResponseImpl value,
    $Res Function(_$ApiResponseImpl) then,
  ) = __$$ApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status});
}

/// @nodoc
class __$$ApiResponseImplCopyWithImpl<$Res>
    extends _$ApiResponseCopyWithImpl<$Res, _$ApiResponseImpl>
    implements _$$ApiResponseImplCopyWith<$Res> {
  __$$ApiResponseImplCopyWithImpl(
    _$ApiResponseImpl _value,
    $Res Function(_$ApiResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? status = null}) {
    return _then(
      _$ApiResponseImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
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
class _$ApiResponseImpl implements _ApiResponse {
  const _$ApiResponseImpl({required this.code, required this.status});

  factory _$ApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String status;

  @override
  String toString() {
    return 'ApiResponse(code: $code, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseImplCopyWith<_$ApiResponseImpl> get copyWith =>
      __$$ApiResponseImplCopyWithImpl<_$ApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseImplToJson(this);
  }
}

abstract class _ApiResponse implements ApiResponse {
  const factory _ApiResponse({
    required final int code,
    required final String status,
  }) = _$ApiResponseImpl;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$ApiResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get status;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseImplCopyWith<_$ApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiListResponse _$ApiListResponseFromJson(Map<String, dynamic> json) {
  return _ApiListResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiListResponse {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get data => throw _privateConstructorUsedError;

  /// Serializes this ApiListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiListResponseCopyWith<ApiListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiListResponseCopyWith<$Res> {
  factory $ApiListResponseCopyWith(
    ApiListResponse value,
    $Res Function(ApiListResponse) then,
  ) = _$ApiListResponseCopyWithImpl<$Res, ApiListResponse>;
  @useResult
  $Res call({int code, String status, List<Map<String, dynamic>> data});
}

/// @nodoc
class _$ApiListResponseCopyWithImpl<$Res, $Val extends ApiListResponse>
    implements $ApiListResponseCopyWith<$Res> {
  _$ApiListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? status = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiListResponseImplCopyWith<$Res>
    implements $ApiListResponseCopyWith<$Res> {
  factory _$$ApiListResponseImplCopyWith(
    _$ApiListResponseImpl value,
    $Res Function(_$ApiListResponseImpl) then,
  ) = __$$ApiListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, List<Map<String, dynamic>> data});
}

/// @nodoc
class __$$ApiListResponseImplCopyWithImpl<$Res>
    extends _$ApiListResponseCopyWithImpl<$Res, _$ApiListResponseImpl>
    implements _$$ApiListResponseImplCopyWith<$Res> {
  __$$ApiListResponseImplCopyWithImpl(
    _$ApiListResponseImpl _value,
    $Res Function(_$ApiListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? status = null, Object? data = null}) {
    return _then(
      _$ApiListResponseImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiListResponseImpl implements _ApiListResponse {
  const _$ApiListResponseImpl({
    required this.code,
    required this.status,
    required final List<Map<String, dynamic>> data,
  }) : _data = data;

  factory _$ApiListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiListResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  final List<Map<String, dynamic>> _data;
  @override
  List<Map<String, dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ApiListResponse(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiListResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    code,
    status,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of ApiListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiListResponseImplCopyWith<_$ApiListResponseImpl> get copyWith =>
      __$$ApiListResponseImplCopyWithImpl<_$ApiListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiListResponseImplToJson(this);
  }
}

abstract class _ApiListResponse implements ApiListResponse {
  const factory _ApiListResponse({
    required final int code,
    required final String status,
    required final List<Map<String, dynamic>> data,
  }) = _$ApiListResponseImpl;

  factory _ApiListResponse.fromJson(Map<String, dynamic> json) =
      _$ApiListResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  List<Map<String, dynamic>> get data;

  /// Create a copy of ApiListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiListResponseImplCopyWith<_$ApiListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiSurah _$ApiSurahFromJson(Map<String, dynamic> json) {
  return _ApiSurah.fromJson(json);
}

/// @nodoc
mixin _$ApiSurah {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get englishNameTranslation => throw _privateConstructorUsedError;
  String get revelationType => throw _privateConstructorUsedError;
  int get numberOfAyahs => throw _privateConstructorUsedError;
  List<ApiAyah>? get ayahs => throw _privateConstructorUsedError;

  /// Serializes this ApiSurah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiSurahCopyWith<ApiSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiSurahCopyWith<$Res> {
  factory $ApiSurahCopyWith(ApiSurah value, $Res Function(ApiSurah) then) =
      _$ApiSurahCopyWithImpl<$Res, ApiSurah>;
  @useResult
  $Res call({
    int number,
    String name,
    String englishName,
    String englishNameTranslation,
    String revelationType,
    int numberOfAyahs,
    List<ApiAyah>? ayahs,
  });
}

/// @nodoc
class _$ApiSurahCopyWithImpl<$Res, $Val extends ApiSurah>
    implements $ApiSurahCopyWith<$Res> {
  _$ApiSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
    Object? ayahs = freezed,
  }) {
    return _then(
      _value.copyWith(
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            englishName: null == englishName
                ? _value.englishName
                : englishName // ignore: cast_nullable_to_non_nullable
                      as String,
            englishNameTranslation: null == englishNameTranslation
                ? _value.englishNameTranslation
                : englishNameTranslation // ignore: cast_nullable_to_non_nullable
                      as String,
            revelationType: null == revelationType
                ? _value.revelationType
                : revelationType // ignore: cast_nullable_to_non_nullable
                      as String,
            numberOfAyahs: null == numberOfAyahs
                ? _value.numberOfAyahs
                : numberOfAyahs // ignore: cast_nullable_to_non_nullable
                      as int,
            ayahs: freezed == ayahs
                ? _value.ayahs
                : ayahs // ignore: cast_nullable_to_non_nullable
                      as List<ApiAyah>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiSurahImplCopyWith<$Res>
    implements $ApiSurahCopyWith<$Res> {
  factory _$$ApiSurahImplCopyWith(
    _$ApiSurahImpl value,
    $Res Function(_$ApiSurahImpl) then,
  ) = __$$ApiSurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int number,
    String name,
    String englishName,
    String englishNameTranslation,
    String revelationType,
    int numberOfAyahs,
    List<ApiAyah>? ayahs,
  });
}

/// @nodoc
class __$$ApiSurahImplCopyWithImpl<$Res>
    extends _$ApiSurahCopyWithImpl<$Res, _$ApiSurahImpl>
    implements _$$ApiSurahImplCopyWith<$Res> {
  __$$ApiSurahImplCopyWithImpl(
    _$ApiSurahImpl _value,
    $Res Function(_$ApiSurahImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
    Object? ayahs = freezed,
  }) {
    return _then(
      _$ApiSurahImpl(
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        englishName: null == englishName
            ? _value.englishName
            : englishName // ignore: cast_nullable_to_non_nullable
                  as String,
        englishNameTranslation: null == englishNameTranslation
            ? _value.englishNameTranslation
            : englishNameTranslation // ignore: cast_nullable_to_non_nullable
                  as String,
        revelationType: null == revelationType
            ? _value.revelationType
            : revelationType // ignore: cast_nullable_to_non_nullable
                  as String,
        numberOfAyahs: null == numberOfAyahs
            ? _value.numberOfAyahs
            : numberOfAyahs // ignore: cast_nullable_to_non_nullable
                  as int,
        ayahs: freezed == ayahs
            ? _value._ayahs
            : ayahs // ignore: cast_nullable_to_non_nullable
                  as List<ApiAyah>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiSurahImpl implements _ApiSurah {
  const _$ApiSurahImpl({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.numberOfAyahs,
    final List<ApiAyah>? ayahs,
  }) : _ayahs = ayahs;

  factory _$ApiSurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiSurahImplFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  @override
  final int numberOfAyahs;
  final List<ApiAyah>? _ayahs;
  @override
  List<ApiAyah>? get ayahs {
    final value = _ayahs;
    if (value == null) return null;
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiSurah(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs, ayahs: $ayahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSurahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    number,
    name,
    englishName,
    englishNameTranslation,
    revelationType,
    numberOfAyahs,
    const DeepCollectionEquality().hash(_ayahs),
  );

  /// Create a copy of ApiSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSurahImplCopyWith<_$ApiSurahImpl> get copyWith =>
      __$$ApiSurahImplCopyWithImpl<_$ApiSurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiSurahImplToJson(this);
  }
}

abstract class _ApiSurah implements ApiSurah {
  const factory _ApiSurah({
    required final int number,
    required final String name,
    required final String englishName,
    required final String englishNameTranslation,
    required final String revelationType,
    required final int numberOfAyahs,
    final List<ApiAyah>? ayahs,
  }) = _$ApiSurahImpl;

  factory _ApiSurah.fromJson(Map<String, dynamic> json) =
      _$ApiSurahImpl.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get englishNameTranslation;
  @override
  String get revelationType;
  @override
  int get numberOfAyahs;
  @override
  List<ApiAyah>? get ayahs;

  /// Create a copy of ApiSurah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiSurahImplCopyWith<_$ApiSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiAyah _$ApiAyahFromJson(Map<String, dynamic> json) {
  return _ApiAyah.fromJson(json);
}

/// @nodoc
mixin _$ApiAyah {
  int get number => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get numberInSurah => throw _privateConstructorUsedError;
  int get juz => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get hizbQuarter => throw _privateConstructorUsedError;
  bool? get sajda => throw _privateConstructorUsedError;

  /// Serializes this ApiAyah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiAyah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiAyahCopyWith<ApiAyah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAyahCopyWith<$Res> {
  factory $ApiAyahCopyWith(ApiAyah value, $Res Function(ApiAyah) then) =
      _$ApiAyahCopyWithImpl<$Res, ApiAyah>;
  @useResult
  $Res call({
    int number,
    String text,
    int numberInSurah,
    int juz,
    int page,
    int hizbQuarter,
    bool? sajda,
  });
}

/// @nodoc
class _$ApiAyahCopyWithImpl<$Res, $Val extends ApiAyah>
    implements $ApiAyahCopyWith<$Res> {
  _$ApiAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiAyah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? numberInSurah = null,
    Object? juz = null,
    Object? page = null,
    Object? hizbQuarter = null,
    Object? sajda = freezed,
  }) {
    return _then(
      _value.copyWith(
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            numberInSurah: null == numberInSurah
                ? _value.numberInSurah
                : numberInSurah // ignore: cast_nullable_to_non_nullable
                      as int,
            juz: null == juz
                ? _value.juz
                : juz // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            hizbQuarter: null == hizbQuarter
                ? _value.hizbQuarter
                : hizbQuarter // ignore: cast_nullable_to_non_nullable
                      as int,
            sajda: freezed == sajda
                ? _value.sajda
                : sajda // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiAyahImplCopyWith<$Res> implements $ApiAyahCopyWith<$Res> {
  factory _$$ApiAyahImplCopyWith(
    _$ApiAyahImpl value,
    $Res Function(_$ApiAyahImpl) then,
  ) = __$$ApiAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int number,
    String text,
    int numberInSurah,
    int juz,
    int page,
    int hizbQuarter,
    bool? sajda,
  });
}

/// @nodoc
class __$$ApiAyahImplCopyWithImpl<$Res>
    extends _$ApiAyahCopyWithImpl<$Res, _$ApiAyahImpl>
    implements _$$ApiAyahImplCopyWith<$Res> {
  __$$ApiAyahImplCopyWithImpl(
    _$ApiAyahImpl _value,
    $Res Function(_$ApiAyahImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiAyah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? numberInSurah = null,
    Object? juz = null,
    Object? page = null,
    Object? hizbQuarter = null,
    Object? sajda = freezed,
  }) {
    return _then(
      _$ApiAyahImpl(
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        numberInSurah: null == numberInSurah
            ? _value.numberInSurah
            : numberInSurah // ignore: cast_nullable_to_non_nullable
                  as int,
        juz: null == juz
            ? _value.juz
            : juz // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        hizbQuarter: null == hizbQuarter
            ? _value.hizbQuarter
            : hizbQuarter // ignore: cast_nullable_to_non_nullable
                  as int,
        sajda: freezed == sajda
            ? _value.sajda
            : sajda // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiAyahImpl implements _ApiAyah {
  const _$ApiAyahImpl({
    required this.number,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.page,
    required this.hizbQuarter,
    this.sajda,
  });

  factory _$ApiAyahImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAyahImplFromJson(json);

  @override
  final int number;
  @override
  final String text;
  @override
  final int numberInSurah;
  @override
  final int juz;
  @override
  final int page;
  @override
  final int hizbQuarter;
  @override
  final bool? sajda;

  @override
  String toString() {
    return 'ApiAyah(number: $number, text: $text, numberInSurah: $numberInSurah, juz: $juz, page: $page, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAyahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.numberInSurah, numberInSurah) ||
                other.numberInSurah == numberInSurah) &&
            (identical(other.juz, juz) || other.juz == juz) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hizbQuarter, hizbQuarter) ||
                other.hizbQuarter == hizbQuarter) &&
            (identical(other.sajda, sajda) || other.sajda == sajda));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    number,
    text,
    numberInSurah,
    juz,
    page,
    hizbQuarter,
    sajda,
  );

  /// Create a copy of ApiAyah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAyahImplCopyWith<_$ApiAyahImpl> get copyWith =>
      __$$ApiAyahImplCopyWithImpl<_$ApiAyahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAyahImplToJson(this);
  }
}

abstract class _ApiAyah implements ApiAyah {
  const factory _ApiAyah({
    required final int number,
    required final String text,
    required final int numberInSurah,
    required final int juz,
    required final int page,
    required final int hizbQuarter,
    final bool? sajda,
  }) = _$ApiAyahImpl;

  factory _ApiAyah.fromJson(Map<String, dynamic> json) = _$ApiAyahImpl.fromJson;

  @override
  int get number;
  @override
  String get text;
  @override
  int get numberInSurah;
  @override
  int get juz;
  @override
  int get page;
  @override
  int get hizbQuarter;
  @override
  bool? get sajda;

  /// Create a copy of ApiAyah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiAyahImplCopyWith<_$ApiAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiEdition _$ApiEditionFromJson(Map<String, dynamic> json) {
  return _ApiEdition.fromJson(json);
}

/// @nodoc
mixin _$ApiEdition {
  String get identifier => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ApiEdition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiEdition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiEditionCopyWith<ApiEdition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEditionCopyWith<$Res> {
  factory $ApiEditionCopyWith(
    ApiEdition value,
    $Res Function(ApiEdition) then,
  ) = _$ApiEditionCopyWithImpl<$Res, ApiEdition>;
  @useResult
  $Res call({
    String identifier,
    String language,
    String name,
    String englishName,
    String format,
    String type,
  });
}

/// @nodoc
class _$ApiEditionCopyWithImpl<$Res, $Val extends ApiEdition>
    implements $ApiEditionCopyWith<$Res> {
  _$ApiEditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiEdition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
  }) {
    return _then(
      _value.copyWith(
            identifier: null == identifier
                ? _value.identifier
                : identifier // ignore: cast_nullable_to_non_nullable
                      as String,
            language: null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            englishName: null == englishName
                ? _value.englishName
                : englishName // ignore: cast_nullable_to_non_nullable
                      as String,
            format: null == format
                ? _value.format
                : format // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiEditionImplCopyWith<$Res>
    implements $ApiEditionCopyWith<$Res> {
  factory _$$ApiEditionImplCopyWith(
    _$ApiEditionImpl value,
    $Res Function(_$ApiEditionImpl) then,
  ) = __$$ApiEditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String identifier,
    String language,
    String name,
    String englishName,
    String format,
    String type,
  });
}

/// @nodoc
class __$$ApiEditionImplCopyWithImpl<$Res>
    extends _$ApiEditionCopyWithImpl<$Res, _$ApiEditionImpl>
    implements _$$ApiEditionImplCopyWith<$Res> {
  __$$ApiEditionImplCopyWithImpl(
    _$ApiEditionImpl _value,
    $Res Function(_$ApiEditionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiEdition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
  }) {
    return _then(
      _$ApiEditionImpl(
        identifier: null == identifier
            ? _value.identifier
            : identifier // ignore: cast_nullable_to_non_nullable
                  as String,
        language: null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        englishName: null == englishName
            ? _value.englishName
            : englishName // ignore: cast_nullable_to_non_nullable
                  as String,
        format: null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiEditionImpl implements _ApiEdition {
  const _$ApiEditionImpl({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
  });

  factory _$ApiEditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiEditionImplFromJson(json);

  @override
  final String identifier;
  @override
  final String language;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String format;
  @override
  final String type;

  @override
  String toString() {
    return 'ApiEdition(identifier: $identifier, language: $language, name: $name, englishName: $englishName, format: $format, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiEditionImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    identifier,
    language,
    name,
    englishName,
    format,
    type,
  );

  /// Create a copy of ApiEdition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiEditionImplCopyWith<_$ApiEditionImpl> get copyWith =>
      __$$ApiEditionImplCopyWithImpl<_$ApiEditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiEditionImplToJson(this);
  }
}

abstract class _ApiEdition implements ApiEdition {
  const factory _ApiEdition({
    required final String identifier,
    required final String language,
    required final String name,
    required final String englishName,
    required final String format,
    required final String type,
  }) = _$ApiEditionImpl;

  factory _ApiEdition.fromJson(Map<String, dynamic> json) =
      _$ApiEditionImpl.fromJson;

  @override
  String get identifier;
  @override
  String get language;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get format;
  @override
  String get type;

  /// Create a copy of ApiEdition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiEditionImplCopyWith<_$ApiEditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiEditionAyah _$ApiEditionAyahFromJson(Map<String, dynamic> json) {
  return _ApiEditionAyah.fromJson(json);
}

/// @nodoc
mixin _$ApiEditionAyah {
  int get number => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get numberInSurah => throw _privateConstructorUsedError;

  /// Serializes this ApiEditionAyah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiEditionAyah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiEditionAyahCopyWith<ApiEditionAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEditionAyahCopyWith<$Res> {
  factory $ApiEditionAyahCopyWith(
    ApiEditionAyah value,
    $Res Function(ApiEditionAyah) then,
  ) = _$ApiEditionAyahCopyWithImpl<$Res, ApiEditionAyah>;
  @useResult
  $Res call({int number, String text, int numberInSurah});
}

/// @nodoc
class _$ApiEditionAyahCopyWithImpl<$Res, $Val extends ApiEditionAyah>
    implements $ApiEditionAyahCopyWith<$Res> {
  _$ApiEditionAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiEditionAyah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? numberInSurah = null,
  }) {
    return _then(
      _value.copyWith(
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            numberInSurah: null == numberInSurah
                ? _value.numberInSurah
                : numberInSurah // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiEditionAyahImplCopyWith<$Res>
    implements $ApiEditionAyahCopyWith<$Res> {
  factory _$$ApiEditionAyahImplCopyWith(
    _$ApiEditionAyahImpl value,
    $Res Function(_$ApiEditionAyahImpl) then,
  ) = __$$ApiEditionAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String text, int numberInSurah});
}

/// @nodoc
class __$$ApiEditionAyahImplCopyWithImpl<$Res>
    extends _$ApiEditionAyahCopyWithImpl<$Res, _$ApiEditionAyahImpl>
    implements _$$ApiEditionAyahImplCopyWith<$Res> {
  __$$ApiEditionAyahImplCopyWithImpl(
    _$ApiEditionAyahImpl _value,
    $Res Function(_$ApiEditionAyahImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiEditionAyah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? numberInSurah = null,
  }) {
    return _then(
      _$ApiEditionAyahImpl(
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        numberInSurah: null == numberInSurah
            ? _value.numberInSurah
            : numberInSurah // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiEditionAyahImpl implements _ApiEditionAyah {
  const _$ApiEditionAyahImpl({
    required this.number,
    required this.text,
    required this.numberInSurah,
  });

  factory _$ApiEditionAyahImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiEditionAyahImplFromJson(json);

  @override
  final int number;
  @override
  final String text;
  @override
  final int numberInSurah;

  @override
  String toString() {
    return 'ApiEditionAyah(number: $number, text: $text, numberInSurah: $numberInSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiEditionAyahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.numberInSurah, numberInSurah) ||
                other.numberInSurah == numberInSurah));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, text, numberInSurah);

  /// Create a copy of ApiEditionAyah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiEditionAyahImplCopyWith<_$ApiEditionAyahImpl> get copyWith =>
      __$$ApiEditionAyahImplCopyWithImpl<_$ApiEditionAyahImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiEditionAyahImplToJson(this);
  }
}

abstract class _ApiEditionAyah implements ApiEditionAyah {
  const factory _ApiEditionAyah({
    required final int number,
    required final String text,
    required final int numberInSurah,
  }) = _$ApiEditionAyahImpl;

  factory _ApiEditionAyah.fromJson(Map<String, dynamic> json) =
      _$ApiEditionAyahImpl.fromJson;

  @override
  int get number;
  @override
  String get text;
  @override
  int get numberInSurah;

  /// Create a copy of ApiEditionAyah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiEditionAyahImplCopyWith<_$ApiEditionAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiEditionSurah _$ApiEditionSurahFromJson(Map<String, dynamic> json) {
  return _ApiEditionSurah.fromJson(json);
}

/// @nodoc
mixin _$ApiEditionSurah {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get englishNameTranslation => throw _privateConstructorUsedError;
  String get revelationType => throw _privateConstructorUsedError;
  List<ApiEditionAyah>? get ayahs => throw _privateConstructorUsedError;

  /// Serializes this ApiEditionSurah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiEditionSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiEditionSurahCopyWith<ApiEditionSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEditionSurahCopyWith<$Res> {
  factory $ApiEditionSurahCopyWith(
    ApiEditionSurah value,
    $Res Function(ApiEditionSurah) then,
  ) = _$ApiEditionSurahCopyWithImpl<$Res, ApiEditionSurah>;
  @useResult
  $Res call({
    int number,
    String name,
    String englishName,
    String englishNameTranslation,
    String revelationType,
    List<ApiEditionAyah>? ayahs,
  });
}

/// @nodoc
class _$ApiEditionSurahCopyWithImpl<$Res, $Val extends ApiEditionSurah>
    implements $ApiEditionSurahCopyWith<$Res> {
  _$ApiEditionSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiEditionSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? ayahs = freezed,
  }) {
    return _then(
      _value.copyWith(
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            englishName: null == englishName
                ? _value.englishName
                : englishName // ignore: cast_nullable_to_non_nullable
                      as String,
            englishNameTranslation: null == englishNameTranslation
                ? _value.englishNameTranslation
                : englishNameTranslation // ignore: cast_nullable_to_non_nullable
                      as String,
            revelationType: null == revelationType
                ? _value.revelationType
                : revelationType // ignore: cast_nullable_to_non_nullable
                      as String,
            ayahs: freezed == ayahs
                ? _value.ayahs
                : ayahs // ignore: cast_nullable_to_non_nullable
                      as List<ApiEditionAyah>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiEditionSurahImplCopyWith<$Res>
    implements $ApiEditionSurahCopyWith<$Res> {
  factory _$$ApiEditionSurahImplCopyWith(
    _$ApiEditionSurahImpl value,
    $Res Function(_$ApiEditionSurahImpl) then,
  ) = __$$ApiEditionSurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int number,
    String name,
    String englishName,
    String englishNameTranslation,
    String revelationType,
    List<ApiEditionAyah>? ayahs,
  });
}

/// @nodoc
class __$$ApiEditionSurahImplCopyWithImpl<$Res>
    extends _$ApiEditionSurahCopyWithImpl<$Res, _$ApiEditionSurahImpl>
    implements _$$ApiEditionSurahImplCopyWith<$Res> {
  __$$ApiEditionSurahImplCopyWithImpl(
    _$ApiEditionSurahImpl _value,
    $Res Function(_$ApiEditionSurahImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiEditionSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? ayahs = freezed,
  }) {
    return _then(
      _$ApiEditionSurahImpl(
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        englishName: null == englishName
            ? _value.englishName
            : englishName // ignore: cast_nullable_to_non_nullable
                  as String,
        englishNameTranslation: null == englishNameTranslation
            ? _value.englishNameTranslation
            : englishNameTranslation // ignore: cast_nullable_to_non_nullable
                  as String,
        revelationType: null == revelationType
            ? _value.revelationType
            : revelationType // ignore: cast_nullable_to_non_nullable
                  as String,
        ayahs: freezed == ayahs
            ? _value._ayahs
            : ayahs // ignore: cast_nullable_to_non_nullable
                  as List<ApiEditionAyah>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiEditionSurahImpl implements _ApiEditionSurah {
  const _$ApiEditionSurahImpl({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    final List<ApiEditionAyah>? ayahs,
  }) : _ayahs = ayahs;

  factory _$ApiEditionSurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiEditionSurahImplFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  final List<ApiEditionAyah>? _ayahs;
  @override
  List<ApiEditionAyah>? get ayahs {
    final value = _ayahs;
    if (value == null) return null;
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiEditionSurah(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, ayahs: $ayahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiEditionSurahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    number,
    name,
    englishName,
    englishNameTranslation,
    revelationType,
    const DeepCollectionEquality().hash(_ayahs),
  );

  /// Create a copy of ApiEditionSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiEditionSurahImplCopyWith<_$ApiEditionSurahImpl> get copyWith =>
      __$$ApiEditionSurahImplCopyWithImpl<_$ApiEditionSurahImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiEditionSurahImplToJson(this);
  }
}

abstract class _ApiEditionSurah implements ApiEditionSurah {
  const factory _ApiEditionSurah({
    required final int number,
    required final String name,
    required final String englishName,
    required final String englishNameTranslation,
    required final String revelationType,
    final List<ApiEditionAyah>? ayahs,
  }) = _$ApiEditionSurahImpl;

  factory _ApiEditionSurah.fromJson(Map<String, dynamic> json) =
      _$ApiEditionSurahImpl.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get englishNameTranslation;
  @override
  String get revelationType;
  @override
  List<ApiEditionAyah>? get ayahs;

  /// Create a copy of ApiEditionSurah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiEditionSurahImplCopyWith<_$ApiEditionSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiAudioFile _$ApiAudioFileFromJson(Map<String, dynamic> json) {
  return _ApiAudioFile.fromJson(json);
}

/// @nodoc
mixin _$ApiAudioFile {
  int get number => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;
  int get numberInSurah => throw _privateConstructorUsedError;

  /// Serializes this ApiAudioFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiAudioFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiAudioFileCopyWith<ApiAudioFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAudioFileCopyWith<$Res> {
  factory $ApiAudioFileCopyWith(
    ApiAudioFile value,
    $Res Function(ApiAudioFile) then,
  ) = _$ApiAudioFileCopyWithImpl<$Res, ApiAudioFile>;
  @useResult
  $Res call({int number, String audio, int numberInSurah});
}

/// @nodoc
class _$ApiAudioFileCopyWithImpl<$Res, $Val extends ApiAudioFile>
    implements $ApiAudioFileCopyWith<$Res> {
  _$ApiAudioFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiAudioFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? audio = null,
    Object? numberInSurah = null,
  }) {
    return _then(
      _value.copyWith(
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            audio: null == audio
                ? _value.audio
                : audio // ignore: cast_nullable_to_non_nullable
                      as String,
            numberInSurah: null == numberInSurah
                ? _value.numberInSurah
                : numberInSurah // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiAudioFileImplCopyWith<$Res>
    implements $ApiAudioFileCopyWith<$Res> {
  factory _$$ApiAudioFileImplCopyWith(
    _$ApiAudioFileImpl value,
    $Res Function(_$ApiAudioFileImpl) then,
  ) = __$$ApiAudioFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String audio, int numberInSurah});
}

/// @nodoc
class __$$ApiAudioFileImplCopyWithImpl<$Res>
    extends _$ApiAudioFileCopyWithImpl<$Res, _$ApiAudioFileImpl>
    implements _$$ApiAudioFileImplCopyWith<$Res> {
  __$$ApiAudioFileImplCopyWithImpl(
    _$ApiAudioFileImpl _value,
    $Res Function(_$ApiAudioFileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiAudioFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? audio = null,
    Object? numberInSurah = null,
  }) {
    return _then(
      _$ApiAudioFileImpl(
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        audio: null == audio
            ? _value.audio
            : audio // ignore: cast_nullable_to_non_nullable
                  as String,
        numberInSurah: null == numberInSurah
            ? _value.numberInSurah
            : numberInSurah // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiAudioFileImpl implements _ApiAudioFile {
  const _$ApiAudioFileImpl({
    required this.number,
    required this.audio,
    required this.numberInSurah,
  });

  factory _$ApiAudioFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAudioFileImplFromJson(json);

  @override
  final int number;
  @override
  final String audio;
  @override
  final int numberInSurah;

  @override
  String toString() {
    return 'ApiAudioFile(number: $number, audio: $audio, numberInSurah: $numberInSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAudioFileImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.numberInSurah, numberInSurah) ||
                other.numberInSurah == numberInSurah));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, audio, numberInSurah);

  /// Create a copy of ApiAudioFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAudioFileImplCopyWith<_$ApiAudioFileImpl> get copyWith =>
      __$$ApiAudioFileImplCopyWithImpl<_$ApiAudioFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAudioFileImplToJson(this);
  }
}

abstract class _ApiAudioFile implements ApiAudioFile {
  const factory _ApiAudioFile({
    required final int number,
    required final String audio,
    required final int numberInSurah,
  }) = _$ApiAudioFileImpl;

  factory _ApiAudioFile.fromJson(Map<String, dynamic> json) =
      _$ApiAudioFileImpl.fromJson;

  @override
  int get number;
  @override
  String get audio;
  @override
  int get numberInSurah;

  /// Create a copy of ApiAudioFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiAudioFileImplCopyWith<_$ApiAudioFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiAudioSurah _$ApiAudioSurahFromJson(Map<String, dynamic> json) {
  return _ApiAudioSurah.fromJson(json);
}

/// @nodoc
mixin _$ApiAudioSurah {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get englishNameTranslation => throw _privateConstructorUsedError;
  String get revelationType => throw _privateConstructorUsedError;
  List<ApiAudioFile>? get ayahs => throw _privateConstructorUsedError;

  /// Serializes this ApiAudioSurah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiAudioSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiAudioSurahCopyWith<ApiAudioSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAudioSurahCopyWith<$Res> {
  factory $ApiAudioSurahCopyWith(
    ApiAudioSurah value,
    $Res Function(ApiAudioSurah) then,
  ) = _$ApiAudioSurahCopyWithImpl<$Res, ApiAudioSurah>;
  @useResult
  $Res call({
    int number,
    String name,
    String englishName,
    String englishNameTranslation,
    String revelationType,
    List<ApiAudioFile>? ayahs,
  });
}

/// @nodoc
class _$ApiAudioSurahCopyWithImpl<$Res, $Val extends ApiAudioSurah>
    implements $ApiAudioSurahCopyWith<$Res> {
  _$ApiAudioSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiAudioSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? ayahs = freezed,
  }) {
    return _then(
      _value.copyWith(
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            englishName: null == englishName
                ? _value.englishName
                : englishName // ignore: cast_nullable_to_non_nullable
                      as String,
            englishNameTranslation: null == englishNameTranslation
                ? _value.englishNameTranslation
                : englishNameTranslation // ignore: cast_nullable_to_non_nullable
                      as String,
            revelationType: null == revelationType
                ? _value.revelationType
                : revelationType // ignore: cast_nullable_to_non_nullable
                      as String,
            ayahs: freezed == ayahs
                ? _value.ayahs
                : ayahs // ignore: cast_nullable_to_non_nullable
                      as List<ApiAudioFile>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiAudioSurahImplCopyWith<$Res>
    implements $ApiAudioSurahCopyWith<$Res> {
  factory _$$ApiAudioSurahImplCopyWith(
    _$ApiAudioSurahImpl value,
    $Res Function(_$ApiAudioSurahImpl) then,
  ) = __$$ApiAudioSurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int number,
    String name,
    String englishName,
    String englishNameTranslation,
    String revelationType,
    List<ApiAudioFile>? ayahs,
  });
}

/// @nodoc
class __$$ApiAudioSurahImplCopyWithImpl<$Res>
    extends _$ApiAudioSurahCopyWithImpl<$Res, _$ApiAudioSurahImpl>
    implements _$$ApiAudioSurahImplCopyWith<$Res> {
  __$$ApiAudioSurahImplCopyWithImpl(
    _$ApiAudioSurahImpl _value,
    $Res Function(_$ApiAudioSurahImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiAudioSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? ayahs = freezed,
  }) {
    return _then(
      _$ApiAudioSurahImpl(
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        englishName: null == englishName
            ? _value.englishName
            : englishName // ignore: cast_nullable_to_non_nullable
                  as String,
        englishNameTranslation: null == englishNameTranslation
            ? _value.englishNameTranslation
            : englishNameTranslation // ignore: cast_nullable_to_non_nullable
                  as String,
        revelationType: null == revelationType
            ? _value.revelationType
            : revelationType // ignore: cast_nullable_to_non_nullable
                  as String,
        ayahs: freezed == ayahs
            ? _value._ayahs
            : ayahs // ignore: cast_nullable_to_non_nullable
                  as List<ApiAudioFile>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiAudioSurahImpl implements _ApiAudioSurah {
  const _$ApiAudioSurahImpl({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    final List<ApiAudioFile>? ayahs,
  }) : _ayahs = ayahs;

  factory _$ApiAudioSurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAudioSurahImplFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  final List<ApiAudioFile>? _ayahs;
  @override
  List<ApiAudioFile>? get ayahs {
    final value = _ayahs;
    if (value == null) return null;
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiAudioSurah(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, ayahs: $ayahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAudioSurahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    number,
    name,
    englishName,
    englishNameTranslation,
    revelationType,
    const DeepCollectionEquality().hash(_ayahs),
  );

  /// Create a copy of ApiAudioSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAudioSurahImplCopyWith<_$ApiAudioSurahImpl> get copyWith =>
      __$$ApiAudioSurahImplCopyWithImpl<_$ApiAudioSurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAudioSurahImplToJson(this);
  }
}

abstract class _ApiAudioSurah implements ApiAudioSurah {
  const factory _ApiAudioSurah({
    required final int number,
    required final String name,
    required final String englishName,
    required final String englishNameTranslation,
    required final String revelationType,
    final List<ApiAudioFile>? ayahs,
  }) = _$ApiAudioSurahImpl;

  factory _ApiAudioSurah.fromJson(Map<String, dynamic> json) =
      _$ApiAudioSurahImpl.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get englishNameTranslation;
  @override
  String get revelationType;
  @override
  List<ApiAudioFile>? get ayahs;

  /// Create a copy of ApiAudioSurah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiAudioSurahImplCopyWith<_$ApiAudioSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
