// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reciter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Reciter _$ReciterFromJson(Map<String, dynamic> json) {
  return _Reciter.fromJson(json);
}

/// @nodoc
mixin _$Reciter {
  int get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this Reciter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reciter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReciterCopyWith<Reciter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReciterCopyWith<$Res> {
  factory $ReciterCopyWith(Reciter value, $Res Function(Reciter) then) =
      _$ReciterCopyWithImpl<$Res, Reciter>;
  @useResult
  $Res call({
    int id,
    String slug,
    String name,
    String? imageUrl,
    String? description,
  });
}

/// @nodoc
class _$ReciterCopyWithImpl<$Res, $Val extends Reciter>
    implements $ReciterCopyWith<$Res> {
  _$ReciterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reciter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReciterImplCopyWith<$Res> implements $ReciterCopyWith<$Res> {
  factory _$$ReciterImplCopyWith(
    _$ReciterImpl value,
    $Res Function(_$ReciterImpl) then,
  ) = __$$ReciterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String slug,
    String name,
    String? imageUrl,
    String? description,
  });
}

/// @nodoc
class __$$ReciterImplCopyWithImpl<$Res>
    extends _$ReciterCopyWithImpl<$Res, _$ReciterImpl>
    implements _$$ReciterImplCopyWith<$Res> {
  __$$ReciterImplCopyWithImpl(
    _$ReciterImpl _value,
    $Res Function(_$ReciterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Reciter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _$ReciterImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReciterImpl implements _Reciter {
  const _$ReciterImpl({
    required this.id,
    required this.slug,
    required this.name,
    this.imageUrl,
    this.description,
  });

  factory _$ReciterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReciterImplFromJson(json);

  @override
  final int id;
  @override
  final String slug;
  @override
  final String name;
  @override
  final String? imageUrl;
  @override
  final String? description;

  @override
  String toString() {
    return 'Reciter(id: $id, slug: $slug, name: $name, imageUrl: $imageUrl, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReciterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, slug, name, imageUrl, description);

  /// Create a copy of Reciter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReciterImplCopyWith<_$ReciterImpl> get copyWith =>
      __$$ReciterImplCopyWithImpl<_$ReciterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReciterImplToJson(this);
  }
}

abstract class _Reciter implements Reciter {
  const factory _Reciter({
    required final int id,
    required final String slug,
    required final String name,
    final String? imageUrl,
    final String? description,
  }) = _$ReciterImpl;

  factory _Reciter.fromJson(Map<String, dynamic> json) = _$ReciterImpl.fromJson;

  @override
  int get id;
  @override
  String get slug;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  String? get description;

  /// Create a copy of Reciter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReciterImplCopyWith<_$ReciterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioPack _$AudioPackFromJson(Map<String, dynamic> json) {
  return _AudioPack.fromJson(json);
}

/// @nodoc
mixin _$AudioPack {
  int get id => throw _privateConstructorUsedError;
  int get reciterId => throw _privateConstructorUsedError;
  String get quality => throw _privateConstructorUsedError;
  int get sizeBytes => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  /// Serializes this AudioPack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioPack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioPackCopyWith<AudioPack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPackCopyWith<$Res> {
  factory $AudioPackCopyWith(AudioPack value, $Res Function(AudioPack) then) =
      _$AudioPackCopyWithImpl<$Res, AudioPack>;
  @useResult
  $Res call({
    int id,
    int reciterId,
    String quality,
    int sizeBytes,
    String version,
  });
}

/// @nodoc
class _$AudioPackCopyWithImpl<$Res, $Val extends AudioPack>
    implements $AudioPackCopyWith<$Res> {
  _$AudioPackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioPack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reciterId = null,
    Object? quality = null,
    Object? sizeBytes = null,
    Object? version = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            reciterId: null == reciterId
                ? _value.reciterId
                : reciterId // ignore: cast_nullable_to_non_nullable
                      as int,
            quality: null == quality
                ? _value.quality
                : quality // ignore: cast_nullable_to_non_nullable
                      as String,
            sizeBytes: null == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AudioPackImplCopyWith<$Res>
    implements $AudioPackCopyWith<$Res> {
  factory _$$AudioPackImplCopyWith(
    _$AudioPackImpl value,
    $Res Function(_$AudioPackImpl) then,
  ) = __$$AudioPackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int reciterId,
    String quality,
    int sizeBytes,
    String version,
  });
}

/// @nodoc
class __$$AudioPackImplCopyWithImpl<$Res>
    extends _$AudioPackCopyWithImpl<$Res, _$AudioPackImpl>
    implements _$$AudioPackImplCopyWith<$Res> {
  __$$AudioPackImplCopyWithImpl(
    _$AudioPackImpl _value,
    $Res Function(_$AudioPackImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioPack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reciterId = null,
    Object? quality = null,
    Object? sizeBytes = null,
    Object? version = null,
  }) {
    return _then(
      _$AudioPackImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        reciterId: null == reciterId
            ? _value.reciterId
            : reciterId // ignore: cast_nullable_to_non_nullable
                  as int,
        quality: null == quality
            ? _value.quality
            : quality // ignore: cast_nullable_to_non_nullable
                  as String,
        sizeBytes: null == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioPackImpl implements _AudioPack {
  const _$AudioPackImpl({
    required this.id,
    required this.reciterId,
    required this.quality,
    required this.sizeBytes,
    required this.version,
  });

  factory _$AudioPackImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioPackImplFromJson(json);

  @override
  final int id;
  @override
  final int reciterId;
  @override
  final String quality;
  @override
  final int sizeBytes;
  @override
  final String version;

  @override
  String toString() {
    return 'AudioPack(id: $id, reciterId: $reciterId, quality: $quality, sizeBytes: $sizeBytes, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reciterId, reciterId) ||
                other.reciterId == reciterId) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, reciterId, quality, sizeBytes, version);

  /// Create a copy of AudioPack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPackImplCopyWith<_$AudioPackImpl> get copyWith =>
      __$$AudioPackImplCopyWithImpl<_$AudioPackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioPackImplToJson(this);
  }
}

abstract class _AudioPack implements AudioPack {
  const factory _AudioPack({
    required final int id,
    required final int reciterId,
    required final String quality,
    required final int sizeBytes,
    required final String version,
  }) = _$AudioPackImpl;

  factory _AudioPack.fromJson(Map<String, dynamic> json) =
      _$AudioPackImpl.fromJson;

  @override
  int get id;
  @override
  int get reciterId;
  @override
  String get quality;
  @override
  int get sizeBytes;
  @override
  String get version;

  /// Create a copy of AudioPack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioPackImplCopyWith<_$AudioPackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioFile _$AudioFileFromJson(Map<String, dynamic> json) {
  return _AudioFile.fromJson(json);
}

/// @nodoc
mixin _$AudioFile {
  int get id => throw _privateConstructorUsedError;
  int get audioPackId => throw _privateConstructorUsedError;
  int get surahId => throw _privateConstructorUsedError;
  String get remoteUrl => throw _privateConstructorUsedError;
  String? get localPath => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  String get checksum => throw _privateConstructorUsedError;

  /// Serializes this AudioFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioFileCopyWith<AudioFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioFileCopyWith<$Res> {
  factory $AudioFileCopyWith(AudioFile value, $Res Function(AudioFile) then) =
      _$AudioFileCopyWithImpl<$Res, AudioFile>;
  @useResult
  $Res call({
    int id,
    int audioPackId,
    int surahId,
    String remoteUrl,
    String? localPath,
    int durationSeconds,
    String checksum,
  });
}

/// @nodoc
class _$AudioFileCopyWithImpl<$Res, $Val extends AudioFile>
    implements $AudioFileCopyWith<$Res> {
  _$AudioFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioPackId = null,
    Object? surahId = null,
    Object? remoteUrl = null,
    Object? localPath = freezed,
    Object? durationSeconds = null,
    Object? checksum = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            audioPackId: null == audioPackId
                ? _value.audioPackId
                : audioPackId // ignore: cast_nullable_to_non_nullable
                      as int,
            surahId: null == surahId
                ? _value.surahId
                : surahId // ignore: cast_nullable_to_non_nullable
                      as int,
            remoteUrl: null == remoteUrl
                ? _value.remoteUrl
                : remoteUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            localPath: freezed == localPath
                ? _value.localPath
                : localPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            durationSeconds: null == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            checksum: null == checksum
                ? _value.checksum
                : checksum // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AudioFileImplCopyWith<$Res>
    implements $AudioFileCopyWith<$Res> {
  factory _$$AudioFileImplCopyWith(
    _$AudioFileImpl value,
    $Res Function(_$AudioFileImpl) then,
  ) = __$$AudioFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int audioPackId,
    int surahId,
    String remoteUrl,
    String? localPath,
    int durationSeconds,
    String checksum,
  });
}

/// @nodoc
class __$$AudioFileImplCopyWithImpl<$Res>
    extends _$AudioFileCopyWithImpl<$Res, _$AudioFileImpl>
    implements _$$AudioFileImplCopyWith<$Res> {
  __$$AudioFileImplCopyWithImpl(
    _$AudioFileImpl _value,
    $Res Function(_$AudioFileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioPackId = null,
    Object? surahId = null,
    Object? remoteUrl = null,
    Object? localPath = freezed,
    Object? durationSeconds = null,
    Object? checksum = null,
  }) {
    return _then(
      _$AudioFileImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        audioPackId: null == audioPackId
            ? _value.audioPackId
            : audioPackId // ignore: cast_nullable_to_non_nullable
                  as int,
        surahId: null == surahId
            ? _value.surahId
            : surahId // ignore: cast_nullable_to_non_nullable
                  as int,
        remoteUrl: null == remoteUrl
            ? _value.remoteUrl
            : remoteUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        localPath: freezed == localPath
            ? _value.localPath
            : localPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        checksum: null == checksum
            ? _value.checksum
            : checksum // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioFileImpl implements _AudioFile {
  const _$AudioFileImpl({
    required this.id,
    required this.audioPackId,
    required this.surahId,
    required this.remoteUrl,
    this.localPath,
    required this.durationSeconds,
    required this.checksum,
  });

  factory _$AudioFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioFileImplFromJson(json);

  @override
  final int id;
  @override
  final int audioPackId;
  @override
  final int surahId;
  @override
  final String remoteUrl;
  @override
  final String? localPath;
  @override
  final int durationSeconds;
  @override
  final String checksum;

  @override
  String toString() {
    return 'AudioFile(id: $id, audioPackId: $audioPackId, surahId: $surahId, remoteUrl: $remoteUrl, localPath: $localPath, durationSeconds: $durationSeconds, checksum: $checksum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audioPackId, audioPackId) ||
                other.audioPackId == audioPackId) &&
            (identical(other.surahId, surahId) || other.surahId == surahId) &&
            (identical(other.remoteUrl, remoteUrl) ||
                other.remoteUrl == remoteUrl) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.checksum, checksum) ||
                other.checksum == checksum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    audioPackId,
    surahId,
    remoteUrl,
    localPath,
    durationSeconds,
    checksum,
  );

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioFileImplCopyWith<_$AudioFileImpl> get copyWith =>
      __$$AudioFileImplCopyWithImpl<_$AudioFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioFileImplToJson(this);
  }
}

abstract class _AudioFile implements AudioFile {
  const factory _AudioFile({
    required final int id,
    required final int audioPackId,
    required final int surahId,
    required final String remoteUrl,
    final String? localPath,
    required final int durationSeconds,
    required final String checksum,
  }) = _$AudioFileImpl;

  factory _AudioFile.fromJson(Map<String, dynamic> json) =
      _$AudioFileImpl.fromJson;

  @override
  int get id;
  @override
  int get audioPackId;
  @override
  int get surahId;
  @override
  String get remoteUrl;
  @override
  String? get localPath;
  @override
  int get durationSeconds;
  @override
  String get checksum;

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioFileImplCopyWith<_$AudioFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
