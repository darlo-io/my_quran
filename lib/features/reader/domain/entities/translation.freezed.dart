// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  int get id => throw _privateConstructorUsedError;
  String get translationKey => throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;
  String get translatorName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;

  /// Serializes this Translation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
    Translation value,
    $Res Function(Translation) then,
  ) = _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call({
    int id,
    String translationKey,
    String languageCode,
    String translatorName,
    String version,
    bool enabled,
  });
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? translationKey = null,
    Object? languageCode = null,
    Object? translatorName = null,
    Object? version = null,
    Object? enabled = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            translationKey: null == translationKey
                ? _value.translationKey
                : translationKey // ignore: cast_nullable_to_non_nullable
                      as String,
            languageCode: null == languageCode
                ? _value.languageCode
                : languageCode // ignore: cast_nullable_to_non_nullable
                      as String,
            translatorName: null == translatorName
                ? _value.translatorName
                : translatorName // ignore: cast_nullable_to_non_nullable
                      as String,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TranslationImplCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$TranslationImplCopyWith(
    _$TranslationImpl value,
    $Res Function(_$TranslationImpl) then,
  ) = __$$TranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String translationKey,
    String languageCode,
    String translatorName,
    String version,
    bool enabled,
  });
}

/// @nodoc
class __$$TranslationImplCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$TranslationImpl>
    implements _$$TranslationImplCopyWith<$Res> {
  __$$TranslationImplCopyWithImpl(
    _$TranslationImpl _value,
    $Res Function(_$TranslationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? translationKey = null,
    Object? languageCode = null,
    Object? translatorName = null,
    Object? version = null,
    Object? enabled = null,
  }) {
    return _then(
      _$TranslationImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        translationKey: null == translationKey
            ? _value.translationKey
            : translationKey // ignore: cast_nullable_to_non_nullable
                  as String,
        languageCode: null == languageCode
            ? _value.languageCode
            : languageCode // ignore: cast_nullable_to_non_nullable
                  as String,
        translatorName: null == translatorName
            ? _value.translatorName
            : translatorName // ignore: cast_nullable_to_non_nullable
                  as String,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationImpl implements _Translation {
  const _$TranslationImpl({
    required this.id,
    required this.translationKey,
    required this.languageCode,
    required this.translatorName,
    required this.version,
    required this.enabled,
  });

  factory _$TranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationImplFromJson(json);

  @override
  final int id;
  @override
  final String translationKey;
  @override
  final String languageCode;
  @override
  final String translatorName;
  @override
  final String version;
  @override
  final bool enabled;

  @override
  String toString() {
    return 'Translation(id: $id, translationKey: $translationKey, languageCode: $languageCode, translatorName: $translatorName, version: $version, enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.translationKey, translationKey) ||
                other.translationKey == translationKey) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.translatorName, translatorName) ||
                other.translatorName == translatorName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    translationKey,
    languageCode,
    translatorName,
    version,
    enabled,
  );

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      __$$TranslationImplCopyWithImpl<_$TranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationImplToJson(this);
  }
}

abstract class _Translation implements Translation {
  const factory _Translation({
    required final int id,
    required final String translationKey,
    required final String languageCode,
    required final String translatorName,
    required final String version,
    required final bool enabled,
  }) = _$TranslationImpl;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$TranslationImpl.fromJson;

  @override
  int get id;
  @override
  String get translationKey;
  @override
  String get languageCode;
  @override
  String get translatorName;
  @override
  String get version;
  @override
  bool get enabled;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslationAyah _$TranslationAyahFromJson(Map<String, dynamic> json) {
  return _TranslationAyah.fromJson(json);
}

/// @nodoc
mixin _$TranslationAyah {
  int get id => throw _privateConstructorUsedError;
  int get translationId => throw _privateConstructorUsedError;
  int get ayahId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this TranslationAyah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TranslationAyah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationAyahCopyWith<TranslationAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationAyahCopyWith<$Res> {
  factory $TranslationAyahCopyWith(
    TranslationAyah value,
    $Res Function(TranslationAyah) then,
  ) = _$TranslationAyahCopyWithImpl<$Res, TranslationAyah>;
  @useResult
  $Res call({int id, int translationId, int ayahId, String text});
}

/// @nodoc
class _$TranslationAyahCopyWithImpl<$Res, $Val extends TranslationAyah>
    implements $TranslationAyahCopyWith<$Res> {
  _$TranslationAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslationAyah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? translationId = null,
    Object? ayahId = null,
    Object? text = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            translationId: null == translationId
                ? _value.translationId
                : translationId // ignore: cast_nullable_to_non_nullable
                      as int,
            ayahId: null == ayahId
                ? _value.ayahId
                : ayahId // ignore: cast_nullable_to_non_nullable
                      as int,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TranslationAyahImplCopyWith<$Res>
    implements $TranslationAyahCopyWith<$Res> {
  factory _$$TranslationAyahImplCopyWith(
    _$TranslationAyahImpl value,
    $Res Function(_$TranslationAyahImpl) then,
  ) = __$$TranslationAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int translationId, int ayahId, String text});
}

/// @nodoc
class __$$TranslationAyahImplCopyWithImpl<$Res>
    extends _$TranslationAyahCopyWithImpl<$Res, _$TranslationAyahImpl>
    implements _$$TranslationAyahImplCopyWith<$Res> {
  __$$TranslationAyahImplCopyWithImpl(
    _$TranslationAyahImpl _value,
    $Res Function(_$TranslationAyahImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TranslationAyah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? translationId = null,
    Object? ayahId = null,
    Object? text = null,
  }) {
    return _then(
      _$TranslationAyahImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        translationId: null == translationId
            ? _value.translationId
            : translationId // ignore: cast_nullable_to_non_nullable
                  as int,
        ayahId: null == ayahId
            ? _value.ayahId
            : ayahId // ignore: cast_nullable_to_non_nullable
                  as int,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationAyahImpl implements _TranslationAyah {
  const _$TranslationAyahImpl({
    required this.id,
    required this.translationId,
    required this.ayahId,
    required this.text,
  });

  factory _$TranslationAyahImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationAyahImplFromJson(json);

  @override
  final int id;
  @override
  final int translationId;
  @override
  final int ayahId;
  @override
  final String text;

  @override
  String toString() {
    return 'TranslationAyah(id: $id, translationId: $translationId, ayahId: $ayahId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationAyahImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.translationId, translationId) ||
                other.translationId == translationId) &&
            (identical(other.ayahId, ayahId) || other.ayahId == ayahId) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, translationId, ayahId, text);

  /// Create a copy of TranslationAyah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationAyahImplCopyWith<_$TranslationAyahImpl> get copyWith =>
      __$$TranslationAyahImplCopyWithImpl<_$TranslationAyahImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationAyahImplToJson(this);
  }
}

abstract class _TranslationAyah implements TranslationAyah {
  const factory _TranslationAyah({
    required final int id,
    required final int translationId,
    required final int ayahId,
    required final String text,
  }) = _$TranslationAyahImpl;

  factory _TranslationAyah.fromJson(Map<String, dynamic> json) =
      _$TranslationAyahImpl.fromJson;

  @override
  int get id;
  @override
  int get translationId;
  @override
  int get ayahId;
  @override
  String get text;

  /// Create a copy of TranslationAyah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationAyahImplCopyWith<_$TranslationAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
