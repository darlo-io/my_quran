// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_pack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContentPack _$ContentPackFromJson(Map<String, dynamic> json) {
  return _ContentPack.fromJson(json);
}

/// @nodoc
mixin _$ContentPack {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  int get sizeBytes => throw _privateConstructorUsedError;
  String get checksum => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;

  /// Serializes this ContentPack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentPack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentPackCopyWith<ContentPack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentPackCopyWith<$Res> {
  factory $ContentPackCopyWith(
    ContentPack value,
    $Res Function(ContentPack) then,
  ) = _$ContentPackCopyWithImpl<$Res, ContentPack>;
  @useResult
  $Res call({
    int id,
    String type,
    String languageCode,
    String version,
    int sizeBytes,
    String checksum,
    DateTime publishedAt,
  });
}

/// @nodoc
class _$ContentPackCopyWithImpl<$Res, $Val extends ContentPack>
    implements $ContentPackCopyWith<$Res> {
  _$ContentPackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentPack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? languageCode = null,
    Object? version = null,
    Object? sizeBytes = null,
    Object? checksum = null,
    Object? publishedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            languageCode: null == languageCode
                ? _value.languageCode
                : languageCode // ignore: cast_nullable_to_non_nullable
                      as String,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            sizeBytes: null == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            checksum: null == checksum
                ? _value.checksum
                : checksum // ignore: cast_nullable_to_non_nullable
                      as String,
            publishedAt: null == publishedAt
                ? _value.publishedAt
                : publishedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContentPackImplCopyWith<$Res>
    implements $ContentPackCopyWith<$Res> {
  factory _$$ContentPackImplCopyWith(
    _$ContentPackImpl value,
    $Res Function(_$ContentPackImpl) then,
  ) = __$$ContentPackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String type,
    String languageCode,
    String version,
    int sizeBytes,
    String checksum,
    DateTime publishedAt,
  });
}

/// @nodoc
class __$$ContentPackImplCopyWithImpl<$Res>
    extends _$ContentPackCopyWithImpl<$Res, _$ContentPackImpl>
    implements _$$ContentPackImplCopyWith<$Res> {
  __$$ContentPackImplCopyWithImpl(
    _$ContentPackImpl _value,
    $Res Function(_$ContentPackImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContentPack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? languageCode = null,
    Object? version = null,
    Object? sizeBytes = null,
    Object? checksum = null,
    Object? publishedAt = null,
  }) {
    return _then(
      _$ContentPackImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        languageCode: null == languageCode
            ? _value.languageCode
            : languageCode // ignore: cast_nullable_to_non_nullable
                  as String,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        sizeBytes: null == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        checksum: null == checksum
            ? _value.checksum
            : checksum // ignore: cast_nullable_to_non_nullable
                  as String,
        publishedAt: null == publishedAt
            ? _value.publishedAt
            : publishedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentPackImpl implements _ContentPack {
  const _$ContentPackImpl({
    required this.id,
    required this.type,
    required this.languageCode,
    required this.version,
    required this.sizeBytes,
    required this.checksum,
    required this.publishedAt,
  });

  factory _$ContentPackImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentPackImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String languageCode;
  @override
  final String version;
  @override
  final int sizeBytes;
  @override
  final String checksum;
  @override
  final DateTime publishedAt;

  @override
  String toString() {
    return 'ContentPack(id: $id, type: $type, languageCode: $languageCode, version: $version, sizeBytes: $sizeBytes, checksum: $checksum, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentPackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.checksum, checksum) ||
                other.checksum == checksum) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    languageCode,
    version,
    sizeBytes,
    checksum,
    publishedAt,
  );

  /// Create a copy of ContentPack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentPackImplCopyWith<_$ContentPackImpl> get copyWith =>
      __$$ContentPackImplCopyWithImpl<_$ContentPackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentPackImplToJson(this);
  }
}

abstract class _ContentPack implements ContentPack {
  const factory _ContentPack({
    required final int id,
    required final String type,
    required final String languageCode,
    required final String version,
    required final int sizeBytes,
    required final String checksum,
    required final DateTime publishedAt,
  }) = _$ContentPackImpl;

  factory _ContentPack.fromJson(Map<String, dynamic> json) =
      _$ContentPackImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get languageCode;
  @override
  String get version;
  @override
  int get sizeBytes;
  @override
  String get checksum;
  @override
  DateTime get publishedAt;

  /// Create a copy of ContentPack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentPackImplCopyWith<_$ContentPackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InstalledPackage _$InstalledPackageFromJson(Map<String, dynamic> json) {
  return _InstalledPackage.fromJson(json);
}

/// @nodoc
mixin _$InstalledPackage {
  int get id => throw _privateConstructorUsedError;
  int get packageId => throw _privateConstructorUsedError;
  String get installedVersion => throw _privateConstructorUsedError;
  DateTime get installedAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this InstalledPackage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstalledPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstalledPackageCopyWith<InstalledPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstalledPackageCopyWith<$Res> {
  factory $InstalledPackageCopyWith(
    InstalledPackage value,
    $Res Function(InstalledPackage) then,
  ) = _$InstalledPackageCopyWithImpl<$Res, InstalledPackage>;
  @useResult
  $Res call({
    int id,
    int packageId,
    String installedVersion,
    DateTime installedAt,
    String status,
  });
}

/// @nodoc
class _$InstalledPackageCopyWithImpl<$Res, $Val extends InstalledPackage>
    implements $InstalledPackageCopyWith<$Res> {
  _$InstalledPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstalledPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageId = null,
    Object? installedVersion = null,
    Object? installedAt = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            packageId: null == packageId
                ? _value.packageId
                : packageId // ignore: cast_nullable_to_non_nullable
                      as int,
            installedVersion: null == installedVersion
                ? _value.installedVersion
                : installedVersion // ignore: cast_nullable_to_non_nullable
                      as String,
            installedAt: null == installedAt
                ? _value.installedAt
                : installedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
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
abstract class _$$InstalledPackageImplCopyWith<$Res>
    implements $InstalledPackageCopyWith<$Res> {
  factory _$$InstalledPackageImplCopyWith(
    _$InstalledPackageImpl value,
    $Res Function(_$InstalledPackageImpl) then,
  ) = __$$InstalledPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int packageId,
    String installedVersion,
    DateTime installedAt,
    String status,
  });
}

/// @nodoc
class __$$InstalledPackageImplCopyWithImpl<$Res>
    extends _$InstalledPackageCopyWithImpl<$Res, _$InstalledPackageImpl>
    implements _$$InstalledPackageImplCopyWith<$Res> {
  __$$InstalledPackageImplCopyWithImpl(
    _$InstalledPackageImpl _value,
    $Res Function(_$InstalledPackageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstalledPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageId = null,
    Object? installedVersion = null,
    Object? installedAt = null,
    Object? status = null,
  }) {
    return _then(
      _$InstalledPackageImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        packageId: null == packageId
            ? _value.packageId
            : packageId // ignore: cast_nullable_to_non_nullable
                  as int,
        installedVersion: null == installedVersion
            ? _value.installedVersion
            : installedVersion // ignore: cast_nullable_to_non_nullable
                  as String,
        installedAt: null == installedAt
            ? _value.installedAt
            : installedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
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
class _$InstalledPackageImpl implements _InstalledPackage {
  const _$InstalledPackageImpl({
    required this.id,
    required this.packageId,
    required this.installedVersion,
    required this.installedAt,
    required this.status,
  });

  factory _$InstalledPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstalledPackageImplFromJson(json);

  @override
  final int id;
  @override
  final int packageId;
  @override
  final String installedVersion;
  @override
  final DateTime installedAt;
  @override
  final String status;

  @override
  String toString() {
    return 'InstalledPackage(id: $id, packageId: $packageId, installedVersion: $installedVersion, installedAt: $installedAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstalledPackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.installedVersion, installedVersion) ||
                other.installedVersion == installedVersion) &&
            (identical(other.installedAt, installedAt) ||
                other.installedAt == installedAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    packageId,
    installedVersion,
    installedAt,
    status,
  );

  /// Create a copy of InstalledPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstalledPackageImplCopyWith<_$InstalledPackageImpl> get copyWith =>
      __$$InstalledPackageImplCopyWithImpl<_$InstalledPackageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InstalledPackageImplToJson(this);
  }
}

abstract class _InstalledPackage implements InstalledPackage {
  const factory _InstalledPackage({
    required final int id,
    required final int packageId,
    required final String installedVersion,
    required final DateTime installedAt,
    required final String status,
  }) = _$InstalledPackageImpl;

  factory _InstalledPackage.fromJson(Map<String, dynamic> json) =
      _$InstalledPackageImpl.fromJson;

  @override
  int get id;
  @override
  int get packageId;
  @override
  String get installedVersion;
  @override
  DateTime get installedAt;
  @override
  String get status;

  /// Create a copy of InstalledPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstalledPackageImplCopyWith<_$InstalledPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DownloadTask _$DownloadTaskFromJson(Map<String, dynamic> json) {
  return _DownloadTask.fromJson(json);
}

/// @nodoc
mixin _$DownloadTask {
  int get id => throw _privateConstructorUsedError;
  int get packageId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DownloadTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadTaskCopyWith<DownloadTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadTaskCopyWith<$Res> {
  factory $DownloadTaskCopyWith(
    DownloadTask value,
    $Res Function(DownloadTask) then,
  ) = _$DownloadTaskCopyWithImpl<$Res, DownloadTask>;
  @useResult
  $Res call({
    int id,
    int packageId,
    String status,
    int progress,
    DateTime createdAt,
  });
}

/// @nodoc
class _$DownloadTaskCopyWithImpl<$Res, $Val extends DownloadTask>
    implements $DownloadTaskCopyWith<$Res> {
  _$DownloadTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageId = null,
    Object? status = null,
    Object? progress = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            packageId: null == packageId
                ? _value.packageId
                : packageId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            progress: null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$DownloadTaskImplCopyWith<$Res>
    implements $DownloadTaskCopyWith<$Res> {
  factory _$$DownloadTaskImplCopyWith(
    _$DownloadTaskImpl value,
    $Res Function(_$DownloadTaskImpl) then,
  ) = __$$DownloadTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int packageId,
    String status,
    int progress,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$DownloadTaskImplCopyWithImpl<$Res>
    extends _$DownloadTaskCopyWithImpl<$Res, _$DownloadTaskImpl>
    implements _$$DownloadTaskImplCopyWith<$Res> {
  __$$DownloadTaskImplCopyWithImpl(
    _$DownloadTaskImpl _value,
    $Res Function(_$DownloadTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageId = null,
    Object? status = null,
    Object? progress = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$DownloadTaskImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        packageId: null == packageId
            ? _value.packageId
            : packageId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$DownloadTaskImpl implements _DownloadTask {
  const _$DownloadTaskImpl({
    required this.id,
    required this.packageId,
    required this.status,
    required this.progress,
    required this.createdAt,
  });

  factory _$DownloadTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadTaskImplFromJson(json);

  @override
  final int id;
  @override
  final int packageId;
  @override
  final String status;
  @override
  final int progress;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DownloadTask(id: $id, packageId: $packageId, status: $status, progress: $progress, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, packageId, status, progress, createdAt);

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadTaskImplCopyWith<_$DownloadTaskImpl> get copyWith =>
      __$$DownloadTaskImplCopyWithImpl<_$DownloadTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadTaskImplToJson(this);
  }
}

abstract class _DownloadTask implements DownloadTask {
  const factory _DownloadTask({
    required final int id,
    required final int packageId,
    required final String status,
    required final int progress,
    required final DateTime createdAt,
  }) = _$DownloadTaskImpl;

  factory _DownloadTask.fromJson(Map<String, dynamic> json) =
      _$DownloadTaskImpl.fromJson;

  @override
  int get id;
  @override
  int get packageId;
  @override
  String get status;
  @override
  int get progress;
  @override
  DateTime get createdAt;

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadTaskImplCopyWith<_$DownloadTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
