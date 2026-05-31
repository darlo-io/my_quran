// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $SurahsTable extends Surahs with TableInfo<$SurahsTable, SurahData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurahsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
    'number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameArabicMeta = const VerificationMeta(
    'nameArabic',
  );
  @override
  late final GeneratedColumn<String> nameArabic = GeneratedColumn<String>(
    'name_arabic',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameEnglishMeta = const VerificationMeta(
    'nameEnglish',
  );
  @override
  late final GeneratedColumn<String> nameEnglish = GeneratedColumn<String>(
    'name_english',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameTranslatedMeta = const VerificationMeta(
    'nameTranslated',
  );
  @override
  late final GeneratedColumn<String> nameTranslated = GeneratedColumn<String>(
    'name_translated',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _revelationTypeMeta = const VerificationMeta(
    'revelationType',
  );
  @override
  late final GeneratedColumn<String> revelationType = GeneratedColumn<String>(
    'revelation_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ayahCountMeta = const VerificationMeta(
    'ayahCount',
  );
  @override
  late final GeneratedColumn<int> ayahCount = GeneratedColumn<int>(
    'ayah_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    number,
    nameArabic,
    nameEnglish,
    nameTranslated,
    revelationType,
    ayahCount,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surahs';
  @override
  VerificationContext validateIntegrity(
    Insertable<SurahData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('name_arabic')) {
      context.handle(
        _nameArabicMeta,
        nameArabic.isAcceptableOrUnknown(data['name_arabic']!, _nameArabicMeta),
      );
    } else if (isInserting) {
      context.missing(_nameArabicMeta);
    }
    if (data.containsKey('name_english')) {
      context.handle(
        _nameEnglishMeta,
        nameEnglish.isAcceptableOrUnknown(
          data['name_english']!,
          _nameEnglishMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nameEnglishMeta);
    }
    if (data.containsKey('name_translated')) {
      context.handle(
        _nameTranslatedMeta,
        nameTranslated.isAcceptableOrUnknown(
          data['name_translated']!,
          _nameTranslatedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nameTranslatedMeta);
    }
    if (data.containsKey('revelation_type')) {
      context.handle(
        _revelationTypeMeta,
        revelationType.isAcceptableOrUnknown(
          data['revelation_type']!,
          _revelationTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_revelationTypeMeta);
    }
    if (data.containsKey('ayah_count')) {
      context.handle(
        _ayahCountMeta,
        ayahCount.isAcceptableOrUnknown(data['ayah_count']!, _ayahCountMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahCountMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_sortOrderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SurahData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurahData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}number'],
      )!,
      nameArabic: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_arabic'],
      )!,
      nameEnglish: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_english'],
      )!,
      nameTranslated: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_translated'],
      )!,
      revelationType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}revelation_type'],
      )!,
      ayahCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayah_count'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $SurahsTable createAlias(String alias) {
    return $SurahsTable(attachedDatabase, alias);
  }
}

class SurahData extends DataClass implements Insertable<SurahData> {
  final int id;
  final int number;
  final String nameArabic;
  final String nameEnglish;
  final String nameTranslated;
  final String revelationType;
  final int ayahCount;
  final int sortOrder;
  const SurahData({
    required this.id,
    required this.number,
    required this.nameArabic,
    required this.nameEnglish,
    required this.nameTranslated,
    required this.revelationType,
    required this.ayahCount,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['number'] = Variable<int>(number);
    map['name_arabic'] = Variable<String>(nameArabic);
    map['name_english'] = Variable<String>(nameEnglish);
    map['name_translated'] = Variable<String>(nameTranslated);
    map['revelation_type'] = Variable<String>(revelationType);
    map['ayah_count'] = Variable<int>(ayahCount);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  SurahsCompanion toCompanion(bool nullToAbsent) {
    return SurahsCompanion(
      id: Value(id),
      number: Value(number),
      nameArabic: Value(nameArabic),
      nameEnglish: Value(nameEnglish),
      nameTranslated: Value(nameTranslated),
      revelationType: Value(revelationType),
      ayahCount: Value(ayahCount),
      sortOrder: Value(sortOrder),
    );
  }

  factory SurahData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurahData(
      id: serializer.fromJson<int>(json['id']),
      number: serializer.fromJson<int>(json['number']),
      nameArabic: serializer.fromJson<String>(json['nameArabic']),
      nameEnglish: serializer.fromJson<String>(json['nameEnglish']),
      nameTranslated: serializer.fromJson<String>(json['nameTranslated']),
      revelationType: serializer.fromJson<String>(json['revelationType']),
      ayahCount: serializer.fromJson<int>(json['ayahCount']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'number': serializer.toJson<int>(number),
      'nameArabic': serializer.toJson<String>(nameArabic),
      'nameEnglish': serializer.toJson<String>(nameEnglish),
      'nameTranslated': serializer.toJson<String>(nameTranslated),
      'revelationType': serializer.toJson<String>(revelationType),
      'ayahCount': serializer.toJson<int>(ayahCount),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  SurahData copyWith({
    int? id,
    int? number,
    String? nameArabic,
    String? nameEnglish,
    String? nameTranslated,
    String? revelationType,
    int? ayahCount,
    int? sortOrder,
  }) => SurahData(
    id: id ?? this.id,
    number: number ?? this.number,
    nameArabic: nameArabic ?? this.nameArabic,
    nameEnglish: nameEnglish ?? this.nameEnglish,
    nameTranslated: nameTranslated ?? this.nameTranslated,
    revelationType: revelationType ?? this.revelationType,
    ayahCount: ayahCount ?? this.ayahCount,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  SurahData copyWithCompanion(SurahsCompanion data) {
    return SurahData(
      id: data.id.present ? data.id.value : this.id,
      number: data.number.present ? data.number.value : this.number,
      nameArabic: data.nameArabic.present
          ? data.nameArabic.value
          : this.nameArabic,
      nameEnglish: data.nameEnglish.present
          ? data.nameEnglish.value
          : this.nameEnglish,
      nameTranslated: data.nameTranslated.present
          ? data.nameTranslated.value
          : this.nameTranslated,
      revelationType: data.revelationType.present
          ? data.revelationType.value
          : this.revelationType,
      ayahCount: data.ayahCount.present ? data.ayahCount.value : this.ayahCount,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SurahData(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('nameArabic: $nameArabic, ')
          ..write('nameEnglish: $nameEnglish, ')
          ..write('nameTranslated: $nameTranslated, ')
          ..write('revelationType: $revelationType, ')
          ..write('ayahCount: $ayahCount, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    number,
    nameArabic,
    nameEnglish,
    nameTranslated,
    revelationType,
    ayahCount,
    sortOrder,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurahData &&
          other.id == this.id &&
          other.number == this.number &&
          other.nameArabic == this.nameArabic &&
          other.nameEnglish == this.nameEnglish &&
          other.nameTranslated == this.nameTranslated &&
          other.revelationType == this.revelationType &&
          other.ayahCount == this.ayahCount &&
          other.sortOrder == this.sortOrder);
}

class SurahsCompanion extends UpdateCompanion<SurahData> {
  final Value<int> id;
  final Value<int> number;
  final Value<String> nameArabic;
  final Value<String> nameEnglish;
  final Value<String> nameTranslated;
  final Value<String> revelationType;
  final Value<int> ayahCount;
  final Value<int> sortOrder;
  const SurahsCompanion({
    this.id = const Value.absent(),
    this.number = const Value.absent(),
    this.nameArabic = const Value.absent(),
    this.nameEnglish = const Value.absent(),
    this.nameTranslated = const Value.absent(),
    this.revelationType = const Value.absent(),
    this.ayahCount = const Value.absent(),
    this.sortOrder = const Value.absent(),
  });
  SurahsCompanion.insert({
    this.id = const Value.absent(),
    required int number,
    required String nameArabic,
    required String nameEnglish,
    required String nameTranslated,
    required String revelationType,
    required int ayahCount,
    required int sortOrder,
  }) : number = Value(number),
       nameArabic = Value(nameArabic),
       nameEnglish = Value(nameEnglish),
       nameTranslated = Value(nameTranslated),
       revelationType = Value(revelationType),
       ayahCount = Value(ayahCount),
       sortOrder = Value(sortOrder);
  static Insertable<SurahData> custom({
    Expression<int>? id,
    Expression<int>? number,
    Expression<String>? nameArabic,
    Expression<String>? nameEnglish,
    Expression<String>? nameTranslated,
    Expression<String>? revelationType,
    Expression<int>? ayahCount,
    Expression<int>? sortOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      if (nameArabic != null) 'name_arabic': nameArabic,
      if (nameEnglish != null) 'name_english': nameEnglish,
      if (nameTranslated != null) 'name_translated': nameTranslated,
      if (revelationType != null) 'revelation_type': revelationType,
      if (ayahCount != null) 'ayah_count': ayahCount,
      if (sortOrder != null) 'sort_order': sortOrder,
    });
  }

  SurahsCompanion copyWith({
    Value<int>? id,
    Value<int>? number,
    Value<String>? nameArabic,
    Value<String>? nameEnglish,
    Value<String>? nameTranslated,
    Value<String>? revelationType,
    Value<int>? ayahCount,
    Value<int>? sortOrder,
  }) {
    return SurahsCompanion(
      id: id ?? this.id,
      number: number ?? this.number,
      nameArabic: nameArabic ?? this.nameArabic,
      nameEnglish: nameEnglish ?? this.nameEnglish,
      nameTranslated: nameTranslated ?? this.nameTranslated,
      revelationType: revelationType ?? this.revelationType,
      ayahCount: ayahCount ?? this.ayahCount,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (nameArabic.present) {
      map['name_arabic'] = Variable<String>(nameArabic.value);
    }
    if (nameEnglish.present) {
      map['name_english'] = Variable<String>(nameEnglish.value);
    }
    if (nameTranslated.present) {
      map['name_translated'] = Variable<String>(nameTranslated.value);
    }
    if (revelationType.present) {
      map['revelation_type'] = Variable<String>(revelationType.value);
    }
    if (ayahCount.present) {
      map['ayah_count'] = Variable<int>(ayahCount.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurahsCompanion(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('nameArabic: $nameArabic, ')
          ..write('nameEnglish: $nameEnglish, ')
          ..write('nameTranslated: $nameTranslated, ')
          ..write('revelationType: $revelationType, ')
          ..write('ayahCount: $ayahCount, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }
}

class $AyahsTable extends Ayahs with TableInfo<$AyahsTable, AyahData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AyahsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _surahIdMeta = const VerificationMeta(
    'surahId',
  );
  @override
  late final GeneratedColumn<int> surahId = GeneratedColumn<int>(
    'surah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES surahs (id)',
    ),
  );
  static const VerificationMeta _ayahNumberMeta = const VerificationMeta(
    'ayahNumber',
  );
  @override
  late final GeneratedColumn<int> ayahNumber = GeneratedColumn<int>(
    'ayah_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _globalAyahNumberMeta = const VerificationMeta(
    'globalAyahNumber',
  );
  @override
  late final GeneratedColumn<int> globalAyahNumber = GeneratedColumn<int>(
    'global_ayah_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _arabicTextMeta = const VerificationMeta(
    'arabicText',
  );
  @override
  late final GeneratedColumn<String> arabicText = GeneratedColumn<String>(
    'arabic_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pageNumberMeta = const VerificationMeta(
    'pageNumber',
  );
  @override
  late final GeneratedColumn<int> pageNumber = GeneratedColumn<int>(
    'page_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _juzNumberMeta = const VerificationMeta(
    'juzNumber',
  );
  @override
  late final GeneratedColumn<int> juzNumber = GeneratedColumn<int>(
    'juz_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _hizbNumberMeta = const VerificationMeta(
    'hizbNumber',
  );
  @override
  late final GeneratedColumn<int> hizbNumber = GeneratedColumn<int>(
    'hizb_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    surahId,
    ayahNumber,
    globalAyahNumber,
    arabicText,
    pageNumber,
    juzNumber,
    hizbNumber,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ayahs';
  @override
  VerificationContext validateIntegrity(
    Insertable<AyahData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('surah_id')) {
      context.handle(
        _surahIdMeta,
        surahId.isAcceptableOrUnknown(data['surah_id']!, _surahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_surahIdMeta);
    }
    if (data.containsKey('ayah_number')) {
      context.handle(
        _ayahNumberMeta,
        ayahNumber.isAcceptableOrUnknown(data['ayah_number']!, _ayahNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahNumberMeta);
    }
    if (data.containsKey('global_ayah_number')) {
      context.handle(
        _globalAyahNumberMeta,
        globalAyahNumber.isAcceptableOrUnknown(
          data['global_ayah_number']!,
          _globalAyahNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_globalAyahNumberMeta);
    }
    if (data.containsKey('arabic_text')) {
      context.handle(
        _arabicTextMeta,
        arabicText.isAcceptableOrUnknown(data['arabic_text']!, _arabicTextMeta),
      );
    } else if (isInserting) {
      context.missing(_arabicTextMeta);
    }
    if (data.containsKey('page_number')) {
      context.handle(
        _pageNumberMeta,
        pageNumber.isAcceptableOrUnknown(data['page_number']!, _pageNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_pageNumberMeta);
    }
    if (data.containsKey('juz_number')) {
      context.handle(
        _juzNumberMeta,
        juzNumber.isAcceptableOrUnknown(data['juz_number']!, _juzNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_juzNumberMeta);
    }
    if (data.containsKey('hizb_number')) {
      context.handle(
        _hizbNumberMeta,
        hizbNumber.isAcceptableOrUnknown(data['hizb_number']!, _hizbNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_hizbNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AyahData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AyahData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      surahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}surah_id'],
      )!,
      ayahNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayah_number'],
      )!,
      globalAyahNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}global_ayah_number'],
      )!,
      arabicText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}arabic_text'],
      )!,
      pageNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}page_number'],
      )!,
      juzNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}juz_number'],
      )!,
      hizbNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hizb_number'],
      )!,
    );
  }

  @override
  $AyahsTable createAlias(String alias) {
    return $AyahsTable(attachedDatabase, alias);
  }
}

class AyahData extends DataClass implements Insertable<AyahData> {
  final int id;
  final int surahId;
  final int ayahNumber;
  final int globalAyahNumber;
  final String arabicText;
  final int pageNumber;
  final int juzNumber;
  final int hizbNumber;
  const AyahData({
    required this.id,
    required this.surahId,
    required this.ayahNumber,
    required this.globalAyahNumber,
    required this.arabicText,
    required this.pageNumber,
    required this.juzNumber,
    required this.hizbNumber,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['surah_id'] = Variable<int>(surahId);
    map['ayah_number'] = Variable<int>(ayahNumber);
    map['global_ayah_number'] = Variable<int>(globalAyahNumber);
    map['arabic_text'] = Variable<String>(arabicText);
    map['page_number'] = Variable<int>(pageNumber);
    map['juz_number'] = Variable<int>(juzNumber);
    map['hizb_number'] = Variable<int>(hizbNumber);
    return map;
  }

  AyahsCompanion toCompanion(bool nullToAbsent) {
    return AyahsCompanion(
      id: Value(id),
      surahId: Value(surahId),
      ayahNumber: Value(ayahNumber),
      globalAyahNumber: Value(globalAyahNumber),
      arabicText: Value(arabicText),
      pageNumber: Value(pageNumber),
      juzNumber: Value(juzNumber),
      hizbNumber: Value(hizbNumber),
    );
  }

  factory AyahData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AyahData(
      id: serializer.fromJson<int>(json['id']),
      surahId: serializer.fromJson<int>(json['surahId']),
      ayahNumber: serializer.fromJson<int>(json['ayahNumber']),
      globalAyahNumber: serializer.fromJson<int>(json['globalAyahNumber']),
      arabicText: serializer.fromJson<String>(json['arabicText']),
      pageNumber: serializer.fromJson<int>(json['pageNumber']),
      juzNumber: serializer.fromJson<int>(json['juzNumber']),
      hizbNumber: serializer.fromJson<int>(json['hizbNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'surahId': serializer.toJson<int>(surahId),
      'ayahNumber': serializer.toJson<int>(ayahNumber),
      'globalAyahNumber': serializer.toJson<int>(globalAyahNumber),
      'arabicText': serializer.toJson<String>(arabicText),
      'pageNumber': serializer.toJson<int>(pageNumber),
      'juzNumber': serializer.toJson<int>(juzNumber),
      'hizbNumber': serializer.toJson<int>(hizbNumber),
    };
  }

  AyahData copyWith({
    int? id,
    int? surahId,
    int? ayahNumber,
    int? globalAyahNumber,
    String? arabicText,
    int? pageNumber,
    int? juzNumber,
    int? hizbNumber,
  }) => AyahData(
    id: id ?? this.id,
    surahId: surahId ?? this.surahId,
    ayahNumber: ayahNumber ?? this.ayahNumber,
    globalAyahNumber: globalAyahNumber ?? this.globalAyahNumber,
    arabicText: arabicText ?? this.arabicText,
    pageNumber: pageNumber ?? this.pageNumber,
    juzNumber: juzNumber ?? this.juzNumber,
    hizbNumber: hizbNumber ?? this.hizbNumber,
  );
  AyahData copyWithCompanion(AyahsCompanion data) {
    return AyahData(
      id: data.id.present ? data.id.value : this.id,
      surahId: data.surahId.present ? data.surahId.value : this.surahId,
      ayahNumber: data.ayahNumber.present
          ? data.ayahNumber.value
          : this.ayahNumber,
      globalAyahNumber: data.globalAyahNumber.present
          ? data.globalAyahNumber.value
          : this.globalAyahNumber,
      arabicText: data.arabicText.present
          ? data.arabicText.value
          : this.arabicText,
      pageNumber: data.pageNumber.present
          ? data.pageNumber.value
          : this.pageNumber,
      juzNumber: data.juzNumber.present ? data.juzNumber.value : this.juzNumber,
      hizbNumber: data.hizbNumber.present
          ? data.hizbNumber.value
          : this.hizbNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AyahData(')
          ..write('id: $id, ')
          ..write('surahId: $surahId, ')
          ..write('ayahNumber: $ayahNumber, ')
          ..write('globalAyahNumber: $globalAyahNumber, ')
          ..write('arabicText: $arabicText, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('juzNumber: $juzNumber, ')
          ..write('hizbNumber: $hizbNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    surahId,
    ayahNumber,
    globalAyahNumber,
    arabicText,
    pageNumber,
    juzNumber,
    hizbNumber,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AyahData &&
          other.id == this.id &&
          other.surahId == this.surahId &&
          other.ayahNumber == this.ayahNumber &&
          other.globalAyahNumber == this.globalAyahNumber &&
          other.arabicText == this.arabicText &&
          other.pageNumber == this.pageNumber &&
          other.juzNumber == this.juzNumber &&
          other.hizbNumber == this.hizbNumber);
}

class AyahsCompanion extends UpdateCompanion<AyahData> {
  final Value<int> id;
  final Value<int> surahId;
  final Value<int> ayahNumber;
  final Value<int> globalAyahNumber;
  final Value<String> arabicText;
  final Value<int> pageNumber;
  final Value<int> juzNumber;
  final Value<int> hizbNumber;
  const AyahsCompanion({
    this.id = const Value.absent(),
    this.surahId = const Value.absent(),
    this.ayahNumber = const Value.absent(),
    this.globalAyahNumber = const Value.absent(),
    this.arabicText = const Value.absent(),
    this.pageNumber = const Value.absent(),
    this.juzNumber = const Value.absent(),
    this.hizbNumber = const Value.absent(),
  });
  AyahsCompanion.insert({
    this.id = const Value.absent(),
    required int surahId,
    required int ayahNumber,
    required int globalAyahNumber,
    required String arabicText,
    required int pageNumber,
    required int juzNumber,
    required int hizbNumber,
  }) : surahId = Value(surahId),
       ayahNumber = Value(ayahNumber),
       globalAyahNumber = Value(globalAyahNumber),
       arabicText = Value(arabicText),
       pageNumber = Value(pageNumber),
       juzNumber = Value(juzNumber),
       hizbNumber = Value(hizbNumber);
  static Insertable<AyahData> custom({
    Expression<int>? id,
    Expression<int>? surahId,
    Expression<int>? ayahNumber,
    Expression<int>? globalAyahNumber,
    Expression<String>? arabicText,
    Expression<int>? pageNumber,
    Expression<int>? juzNumber,
    Expression<int>? hizbNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (surahId != null) 'surah_id': surahId,
      if (ayahNumber != null) 'ayah_number': ayahNumber,
      if (globalAyahNumber != null) 'global_ayah_number': globalAyahNumber,
      if (arabicText != null) 'arabic_text': arabicText,
      if (pageNumber != null) 'page_number': pageNumber,
      if (juzNumber != null) 'juz_number': juzNumber,
      if (hizbNumber != null) 'hizb_number': hizbNumber,
    });
  }

  AyahsCompanion copyWith({
    Value<int>? id,
    Value<int>? surahId,
    Value<int>? ayahNumber,
    Value<int>? globalAyahNumber,
    Value<String>? arabicText,
    Value<int>? pageNumber,
    Value<int>? juzNumber,
    Value<int>? hizbNumber,
  }) {
    return AyahsCompanion(
      id: id ?? this.id,
      surahId: surahId ?? this.surahId,
      ayahNumber: ayahNumber ?? this.ayahNumber,
      globalAyahNumber: globalAyahNumber ?? this.globalAyahNumber,
      arabicText: arabicText ?? this.arabicText,
      pageNumber: pageNumber ?? this.pageNumber,
      juzNumber: juzNumber ?? this.juzNumber,
      hizbNumber: hizbNumber ?? this.hizbNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (surahId.present) {
      map['surah_id'] = Variable<int>(surahId.value);
    }
    if (ayahNumber.present) {
      map['ayah_number'] = Variable<int>(ayahNumber.value);
    }
    if (globalAyahNumber.present) {
      map['global_ayah_number'] = Variable<int>(globalAyahNumber.value);
    }
    if (arabicText.present) {
      map['arabic_text'] = Variable<String>(arabicText.value);
    }
    if (pageNumber.present) {
      map['page_number'] = Variable<int>(pageNumber.value);
    }
    if (juzNumber.present) {
      map['juz_number'] = Variable<int>(juzNumber.value);
    }
    if (hizbNumber.present) {
      map['hizb_number'] = Variable<int>(hizbNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AyahsCompanion(')
          ..write('id: $id, ')
          ..write('surahId: $surahId, ')
          ..write('ayahNumber: $ayahNumber, ')
          ..write('globalAyahNumber: $globalAyahNumber, ')
          ..write('arabicText: $arabicText, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('juzNumber: $juzNumber, ')
          ..write('hizbNumber: $hizbNumber')
          ..write(')'))
        .toString();
  }
}

class $TranslationsTable extends Translations
    with TableInfo<$TranslationsTable, TranslationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TranslationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _translationKeyMeta = const VerificationMeta(
    'translationKey',
  );
  @override
  late final GeneratedColumn<String> translationKey = GeneratedColumn<String>(
    'translation_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languageCodeMeta = const VerificationMeta(
    'languageCode',
  );
  @override
  late final GeneratedColumn<String> languageCode = GeneratedColumn<String>(
    'language_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _translatorNameMeta = const VerificationMeta(
    'translatorName',
  );
  @override
  late final GeneratedColumn<String> translatorName = GeneratedColumn<String>(
    'translator_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _enabledMeta = const VerificationMeta(
    'enabled',
  );
  @override
  late final GeneratedColumn<bool> enabled = GeneratedColumn<bool>(
    'enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    translationKey,
    languageCode,
    translatorName,
    version,
    enabled,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'translations';
  @override
  VerificationContext validateIntegrity(
    Insertable<TranslationData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('translation_key')) {
      context.handle(
        _translationKeyMeta,
        translationKey.isAcceptableOrUnknown(
          data['translation_key']!,
          _translationKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translationKeyMeta);
    }
    if (data.containsKey('language_code')) {
      context.handle(
        _languageCodeMeta,
        languageCode.isAcceptableOrUnknown(
          data['language_code']!,
          _languageCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_languageCodeMeta);
    }
    if (data.containsKey('translator_name')) {
      context.handle(
        _translatorNameMeta,
        translatorName.isAcceptableOrUnknown(
          data['translator_name']!,
          _translatorNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translatorNameMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('enabled')) {
      context.handle(
        _enabledMeta,
        enabled.isAcceptableOrUnknown(data['enabled']!, _enabledMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TranslationData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TranslationData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      translationKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translation_key'],
      )!,
      languageCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language_code'],
      )!,
      translatorName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translator_name'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version'],
      )!,
      enabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enabled'],
      )!,
    );
  }

  @override
  $TranslationsTable createAlias(String alias) {
    return $TranslationsTable(attachedDatabase, alias);
  }
}

class TranslationData extends DataClass implements Insertable<TranslationData> {
  final int id;
  final String translationKey;
  final String languageCode;
  final String translatorName;
  final String version;
  final bool enabled;
  const TranslationData({
    required this.id,
    required this.translationKey,
    required this.languageCode,
    required this.translatorName,
    required this.version,
    required this.enabled,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['translation_key'] = Variable<String>(translationKey);
    map['language_code'] = Variable<String>(languageCode);
    map['translator_name'] = Variable<String>(translatorName);
    map['version'] = Variable<String>(version);
    map['enabled'] = Variable<bool>(enabled);
    return map;
  }

  TranslationsCompanion toCompanion(bool nullToAbsent) {
    return TranslationsCompanion(
      id: Value(id),
      translationKey: Value(translationKey),
      languageCode: Value(languageCode),
      translatorName: Value(translatorName),
      version: Value(version),
      enabled: Value(enabled),
    );
  }

  factory TranslationData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TranslationData(
      id: serializer.fromJson<int>(json['id']),
      translationKey: serializer.fromJson<String>(json['translationKey']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
      translatorName: serializer.fromJson<String>(json['translatorName']),
      version: serializer.fromJson<String>(json['version']),
      enabled: serializer.fromJson<bool>(json['enabled']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'translationKey': serializer.toJson<String>(translationKey),
      'languageCode': serializer.toJson<String>(languageCode),
      'translatorName': serializer.toJson<String>(translatorName),
      'version': serializer.toJson<String>(version),
      'enabled': serializer.toJson<bool>(enabled),
    };
  }

  TranslationData copyWith({
    int? id,
    String? translationKey,
    String? languageCode,
    String? translatorName,
    String? version,
    bool? enabled,
  }) => TranslationData(
    id: id ?? this.id,
    translationKey: translationKey ?? this.translationKey,
    languageCode: languageCode ?? this.languageCode,
    translatorName: translatorName ?? this.translatorName,
    version: version ?? this.version,
    enabled: enabled ?? this.enabled,
  );
  TranslationData copyWithCompanion(TranslationsCompanion data) {
    return TranslationData(
      id: data.id.present ? data.id.value : this.id,
      translationKey: data.translationKey.present
          ? data.translationKey.value
          : this.translationKey,
      languageCode: data.languageCode.present
          ? data.languageCode.value
          : this.languageCode,
      translatorName: data.translatorName.present
          ? data.translatorName.value
          : this.translatorName,
      version: data.version.present ? data.version.value : this.version,
      enabled: data.enabled.present ? data.enabled.value : this.enabled,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TranslationData(')
          ..write('id: $id, ')
          ..write('translationKey: $translationKey, ')
          ..write('languageCode: $languageCode, ')
          ..write('translatorName: $translatorName, ')
          ..write('version: $version, ')
          ..write('enabled: $enabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    translationKey,
    languageCode,
    translatorName,
    version,
    enabled,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TranslationData &&
          other.id == this.id &&
          other.translationKey == this.translationKey &&
          other.languageCode == this.languageCode &&
          other.translatorName == this.translatorName &&
          other.version == this.version &&
          other.enabled == this.enabled);
}

class TranslationsCompanion extends UpdateCompanion<TranslationData> {
  final Value<int> id;
  final Value<String> translationKey;
  final Value<String> languageCode;
  final Value<String> translatorName;
  final Value<String> version;
  final Value<bool> enabled;
  const TranslationsCompanion({
    this.id = const Value.absent(),
    this.translationKey = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.translatorName = const Value.absent(),
    this.version = const Value.absent(),
    this.enabled = const Value.absent(),
  });
  TranslationsCompanion.insert({
    this.id = const Value.absent(),
    required String translationKey,
    required String languageCode,
    required String translatorName,
    required String version,
    this.enabled = const Value.absent(),
  }) : translationKey = Value(translationKey),
       languageCode = Value(languageCode),
       translatorName = Value(translatorName),
       version = Value(version);
  static Insertable<TranslationData> custom({
    Expression<int>? id,
    Expression<String>? translationKey,
    Expression<String>? languageCode,
    Expression<String>? translatorName,
    Expression<String>? version,
    Expression<bool>? enabled,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (translationKey != null) 'translation_key': translationKey,
      if (languageCode != null) 'language_code': languageCode,
      if (translatorName != null) 'translator_name': translatorName,
      if (version != null) 'version': version,
      if (enabled != null) 'enabled': enabled,
    });
  }

  TranslationsCompanion copyWith({
    Value<int>? id,
    Value<String>? translationKey,
    Value<String>? languageCode,
    Value<String>? translatorName,
    Value<String>? version,
    Value<bool>? enabled,
  }) {
    return TranslationsCompanion(
      id: id ?? this.id,
      translationKey: translationKey ?? this.translationKey,
      languageCode: languageCode ?? this.languageCode,
      translatorName: translatorName ?? this.translatorName,
      version: version ?? this.version,
      enabled: enabled ?? this.enabled,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (translationKey.present) {
      map['translation_key'] = Variable<String>(translationKey.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    if (translatorName.present) {
      map['translator_name'] = Variable<String>(translatorName.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    if (enabled.present) {
      map['enabled'] = Variable<bool>(enabled.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TranslationsCompanion(')
          ..write('id: $id, ')
          ..write('translationKey: $translationKey, ')
          ..write('languageCode: $languageCode, ')
          ..write('translatorName: $translatorName, ')
          ..write('version: $version, ')
          ..write('enabled: $enabled')
          ..write(')'))
        .toString();
  }
}

class $TranslationAyahsTable extends TranslationAyahs
    with TableInfo<$TranslationAyahsTable, TranslationAyahData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TranslationAyahsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _translationIdMeta = const VerificationMeta(
    'translationId',
  );
  @override
  late final GeneratedColumn<int> translationId = GeneratedColumn<int>(
    'translation_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES translations (id)',
    ),
  );
  static const VerificationMeta _ayahIdMeta = const VerificationMeta('ayahId');
  @override
  late final GeneratedColumn<int> ayahId = GeneratedColumn<int>(
    'ayah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ayahs (id)',
    ),
  );
  static const VerificationMeta _translationTextMeta = const VerificationMeta(
    'translationText',
  );
  @override
  late final GeneratedColumn<String> translationText = GeneratedColumn<String>(
    'translation_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    translationId,
    ayahId,
    translationText,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'translation_ayahs';
  @override
  VerificationContext validateIntegrity(
    Insertable<TranslationAyahData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('translation_id')) {
      context.handle(
        _translationIdMeta,
        translationId.isAcceptableOrUnknown(
          data['translation_id']!,
          _translationIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translationIdMeta);
    }
    if (data.containsKey('ayah_id')) {
      context.handle(
        _ayahIdMeta,
        ayahId.isAcceptableOrUnknown(data['ayah_id']!, _ayahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahIdMeta);
    }
    if (data.containsKey('translation_text')) {
      context.handle(
        _translationTextMeta,
        translationText.isAcceptableOrUnknown(
          data['translation_text']!,
          _translationTextMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translationTextMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TranslationAyahData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TranslationAyahData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      translationId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}translation_id'],
      )!,
      ayahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayah_id'],
      )!,
      translationText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translation_text'],
      )!,
    );
  }

  @override
  $TranslationAyahsTable createAlias(String alias) {
    return $TranslationAyahsTable(attachedDatabase, alias);
  }
}

class TranslationAyahData extends DataClass
    implements Insertable<TranslationAyahData> {
  final int id;
  final int translationId;
  final int ayahId;
  final String translationText;
  const TranslationAyahData({
    required this.id,
    required this.translationId,
    required this.ayahId,
    required this.translationText,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['translation_id'] = Variable<int>(translationId);
    map['ayah_id'] = Variable<int>(ayahId);
    map['translation_text'] = Variable<String>(translationText);
    return map;
  }

  TranslationAyahsCompanion toCompanion(bool nullToAbsent) {
    return TranslationAyahsCompanion(
      id: Value(id),
      translationId: Value(translationId),
      ayahId: Value(ayahId),
      translationText: Value(translationText),
    );
  }

  factory TranslationAyahData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TranslationAyahData(
      id: serializer.fromJson<int>(json['id']),
      translationId: serializer.fromJson<int>(json['translationId']),
      ayahId: serializer.fromJson<int>(json['ayahId']),
      translationText: serializer.fromJson<String>(json['translationText']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'translationId': serializer.toJson<int>(translationId),
      'ayahId': serializer.toJson<int>(ayahId),
      'translationText': serializer.toJson<String>(translationText),
    };
  }

  TranslationAyahData copyWith({
    int? id,
    int? translationId,
    int? ayahId,
    String? translationText,
  }) => TranslationAyahData(
    id: id ?? this.id,
    translationId: translationId ?? this.translationId,
    ayahId: ayahId ?? this.ayahId,
    translationText: translationText ?? this.translationText,
  );
  TranslationAyahData copyWithCompanion(TranslationAyahsCompanion data) {
    return TranslationAyahData(
      id: data.id.present ? data.id.value : this.id,
      translationId: data.translationId.present
          ? data.translationId.value
          : this.translationId,
      ayahId: data.ayahId.present ? data.ayahId.value : this.ayahId,
      translationText: data.translationText.present
          ? data.translationText.value
          : this.translationText,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TranslationAyahData(')
          ..write('id: $id, ')
          ..write('translationId: $translationId, ')
          ..write('ayahId: $ayahId, ')
          ..write('translationText: $translationText')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, translationId, ayahId, translationText);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TranslationAyahData &&
          other.id == this.id &&
          other.translationId == this.translationId &&
          other.ayahId == this.ayahId &&
          other.translationText == this.translationText);
}

class TranslationAyahsCompanion extends UpdateCompanion<TranslationAyahData> {
  final Value<int> id;
  final Value<int> translationId;
  final Value<int> ayahId;
  final Value<String> translationText;
  const TranslationAyahsCompanion({
    this.id = const Value.absent(),
    this.translationId = const Value.absent(),
    this.ayahId = const Value.absent(),
    this.translationText = const Value.absent(),
  });
  TranslationAyahsCompanion.insert({
    this.id = const Value.absent(),
    required int translationId,
    required int ayahId,
    required String translationText,
  }) : translationId = Value(translationId),
       ayahId = Value(ayahId),
       translationText = Value(translationText);
  static Insertable<TranslationAyahData> custom({
    Expression<int>? id,
    Expression<int>? translationId,
    Expression<int>? ayahId,
    Expression<String>? translationText,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (translationId != null) 'translation_id': translationId,
      if (ayahId != null) 'ayah_id': ayahId,
      if (translationText != null) 'translation_text': translationText,
    });
  }

  TranslationAyahsCompanion copyWith({
    Value<int>? id,
    Value<int>? translationId,
    Value<int>? ayahId,
    Value<String>? translationText,
  }) {
    return TranslationAyahsCompanion(
      id: id ?? this.id,
      translationId: translationId ?? this.translationId,
      ayahId: ayahId ?? this.ayahId,
      translationText: translationText ?? this.translationText,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (translationId.present) {
      map['translation_id'] = Variable<int>(translationId.value);
    }
    if (ayahId.present) {
      map['ayah_id'] = Variable<int>(ayahId.value);
    }
    if (translationText.present) {
      map['translation_text'] = Variable<String>(translationText.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TranslationAyahsCompanion(')
          ..write('id: $id, ')
          ..write('translationId: $translationId, ')
          ..write('ayahId: $ayahId, ')
          ..write('translationText: $translationText')
          ..write(')'))
        .toString();
  }
}

class $TafsirsTable extends Tafsirs with TableInfo<$TafsirsTable, TafsirData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TafsirsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _tafsirKeyMeta = const VerificationMeta(
    'tafsirKey',
  );
  @override
  late final GeneratedColumn<String> tafsirKey = GeneratedColumn<String>(
    'tafsir_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languageCodeMeta = const VerificationMeta(
    'languageCode',
  );
  @override
  late final GeneratedColumn<String> languageCode = GeneratedColumn<String>(
    'language_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
    'author',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    tafsirKey,
    languageCode,
    author,
    version,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tafsirs';
  @override
  VerificationContext validateIntegrity(
    Insertable<TafsirData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tafsir_key')) {
      context.handle(
        _tafsirKeyMeta,
        tafsirKey.isAcceptableOrUnknown(data['tafsir_key']!, _tafsirKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_tafsirKeyMeta);
    }
    if (data.containsKey('language_code')) {
      context.handle(
        _languageCodeMeta,
        languageCode.isAcceptableOrUnknown(
          data['language_code']!,
          _languageCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_languageCodeMeta);
    }
    if (data.containsKey('author')) {
      context.handle(
        _authorMeta,
        author.isAcceptableOrUnknown(data['author']!, _authorMeta),
      );
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TafsirData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TafsirData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      tafsirKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tafsir_key'],
      )!,
      languageCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language_code'],
      )!,
      author: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version'],
      )!,
    );
  }

  @override
  $TafsirsTable createAlias(String alias) {
    return $TafsirsTable(attachedDatabase, alias);
  }
}

class TafsirData extends DataClass implements Insertable<TafsirData> {
  final int id;
  final String tafsirKey;
  final String languageCode;
  final String author;
  final String version;
  const TafsirData({
    required this.id,
    required this.tafsirKey,
    required this.languageCode,
    required this.author,
    required this.version,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tafsir_key'] = Variable<String>(tafsirKey);
    map['language_code'] = Variable<String>(languageCode);
    map['author'] = Variable<String>(author);
    map['version'] = Variable<String>(version);
    return map;
  }

  TafsirsCompanion toCompanion(bool nullToAbsent) {
    return TafsirsCompanion(
      id: Value(id),
      tafsirKey: Value(tafsirKey),
      languageCode: Value(languageCode),
      author: Value(author),
      version: Value(version),
    );
  }

  factory TafsirData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TafsirData(
      id: serializer.fromJson<int>(json['id']),
      tafsirKey: serializer.fromJson<String>(json['tafsirKey']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
      author: serializer.fromJson<String>(json['author']),
      version: serializer.fromJson<String>(json['version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tafsirKey': serializer.toJson<String>(tafsirKey),
      'languageCode': serializer.toJson<String>(languageCode),
      'author': serializer.toJson<String>(author),
      'version': serializer.toJson<String>(version),
    };
  }

  TafsirData copyWith({
    int? id,
    String? tafsirKey,
    String? languageCode,
    String? author,
    String? version,
  }) => TafsirData(
    id: id ?? this.id,
    tafsirKey: tafsirKey ?? this.tafsirKey,
    languageCode: languageCode ?? this.languageCode,
    author: author ?? this.author,
    version: version ?? this.version,
  );
  TafsirData copyWithCompanion(TafsirsCompanion data) {
    return TafsirData(
      id: data.id.present ? data.id.value : this.id,
      tafsirKey: data.tafsirKey.present ? data.tafsirKey.value : this.tafsirKey,
      languageCode: data.languageCode.present
          ? data.languageCode.value
          : this.languageCode,
      author: data.author.present ? data.author.value : this.author,
      version: data.version.present ? data.version.value : this.version,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TafsirData(')
          ..write('id: $id, ')
          ..write('tafsirKey: $tafsirKey, ')
          ..write('languageCode: $languageCode, ')
          ..write('author: $author, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tafsirKey, languageCode, author, version);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TafsirData &&
          other.id == this.id &&
          other.tafsirKey == this.tafsirKey &&
          other.languageCode == this.languageCode &&
          other.author == this.author &&
          other.version == this.version);
}

class TafsirsCompanion extends UpdateCompanion<TafsirData> {
  final Value<int> id;
  final Value<String> tafsirKey;
  final Value<String> languageCode;
  final Value<String> author;
  final Value<String> version;
  const TafsirsCompanion({
    this.id = const Value.absent(),
    this.tafsirKey = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.author = const Value.absent(),
    this.version = const Value.absent(),
  });
  TafsirsCompanion.insert({
    this.id = const Value.absent(),
    required String tafsirKey,
    required String languageCode,
    required String author,
    required String version,
  }) : tafsirKey = Value(tafsirKey),
       languageCode = Value(languageCode),
       author = Value(author),
       version = Value(version);
  static Insertable<TafsirData> custom({
    Expression<int>? id,
    Expression<String>? tafsirKey,
    Expression<String>? languageCode,
    Expression<String>? author,
    Expression<String>? version,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tafsirKey != null) 'tafsir_key': tafsirKey,
      if (languageCode != null) 'language_code': languageCode,
      if (author != null) 'author': author,
      if (version != null) 'version': version,
    });
  }

  TafsirsCompanion copyWith({
    Value<int>? id,
    Value<String>? tafsirKey,
    Value<String>? languageCode,
    Value<String>? author,
    Value<String>? version,
  }) {
    return TafsirsCompanion(
      id: id ?? this.id,
      tafsirKey: tafsirKey ?? this.tafsirKey,
      languageCode: languageCode ?? this.languageCode,
      author: author ?? this.author,
      version: version ?? this.version,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tafsirKey.present) {
      map['tafsir_key'] = Variable<String>(tafsirKey.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TafsirsCompanion(')
          ..write('id: $id, ')
          ..write('tafsirKey: $tafsirKey, ')
          ..write('languageCode: $languageCode, ')
          ..write('author: $author, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }
}

class $TafsirAyahsTable extends TafsirAyahs
    with TableInfo<$TafsirAyahsTable, TafsirAyahData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TafsirAyahsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _tafsirIdMeta = const VerificationMeta(
    'tafsirId',
  );
  @override
  late final GeneratedColumn<int> tafsirId = GeneratedColumn<int>(
    'tafsir_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tafsirs (id)',
    ),
  );
  static const VerificationMeta _ayahIdMeta = const VerificationMeta('ayahId');
  @override
  late final GeneratedColumn<int> ayahId = GeneratedColumn<int>(
    'ayah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ayahs (id)',
    ),
  );
  static const VerificationMeta _tafsirTextMeta = const VerificationMeta(
    'tafsirText',
  );
  @override
  late final GeneratedColumn<String> tafsirText = GeneratedColumn<String>(
    'tafsir_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, tafsirId, ayahId, tafsirText];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tafsir_ayahs';
  @override
  VerificationContext validateIntegrity(
    Insertable<TafsirAyahData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tafsir_id')) {
      context.handle(
        _tafsirIdMeta,
        tafsirId.isAcceptableOrUnknown(data['tafsir_id']!, _tafsirIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tafsirIdMeta);
    }
    if (data.containsKey('ayah_id')) {
      context.handle(
        _ayahIdMeta,
        ayahId.isAcceptableOrUnknown(data['ayah_id']!, _ayahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahIdMeta);
    }
    if (data.containsKey('tafsir_text')) {
      context.handle(
        _tafsirTextMeta,
        tafsirText.isAcceptableOrUnknown(data['tafsir_text']!, _tafsirTextMeta),
      );
    } else if (isInserting) {
      context.missing(_tafsirTextMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TafsirAyahData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TafsirAyahData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      tafsirId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tafsir_id'],
      )!,
      ayahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayah_id'],
      )!,
      tafsirText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tafsir_text'],
      )!,
    );
  }

  @override
  $TafsirAyahsTable createAlias(String alias) {
    return $TafsirAyahsTable(attachedDatabase, alias);
  }
}

class TafsirAyahData extends DataClass implements Insertable<TafsirAyahData> {
  final int id;
  final int tafsirId;
  final int ayahId;
  final String tafsirText;
  const TafsirAyahData({
    required this.id,
    required this.tafsirId,
    required this.ayahId,
    required this.tafsirText,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tafsir_id'] = Variable<int>(tafsirId);
    map['ayah_id'] = Variable<int>(ayahId);
    map['tafsir_text'] = Variable<String>(tafsirText);
    return map;
  }

  TafsirAyahsCompanion toCompanion(bool nullToAbsent) {
    return TafsirAyahsCompanion(
      id: Value(id),
      tafsirId: Value(tafsirId),
      ayahId: Value(ayahId),
      tafsirText: Value(tafsirText),
    );
  }

  factory TafsirAyahData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TafsirAyahData(
      id: serializer.fromJson<int>(json['id']),
      tafsirId: serializer.fromJson<int>(json['tafsirId']),
      ayahId: serializer.fromJson<int>(json['ayahId']),
      tafsirText: serializer.fromJson<String>(json['tafsirText']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tafsirId': serializer.toJson<int>(tafsirId),
      'ayahId': serializer.toJson<int>(ayahId),
      'tafsirText': serializer.toJson<String>(tafsirText),
    };
  }

  TafsirAyahData copyWith({
    int? id,
    int? tafsirId,
    int? ayahId,
    String? tafsirText,
  }) => TafsirAyahData(
    id: id ?? this.id,
    tafsirId: tafsirId ?? this.tafsirId,
    ayahId: ayahId ?? this.ayahId,
    tafsirText: tafsirText ?? this.tafsirText,
  );
  TafsirAyahData copyWithCompanion(TafsirAyahsCompanion data) {
    return TafsirAyahData(
      id: data.id.present ? data.id.value : this.id,
      tafsirId: data.tafsirId.present ? data.tafsirId.value : this.tafsirId,
      ayahId: data.ayahId.present ? data.ayahId.value : this.ayahId,
      tafsirText: data.tafsirText.present
          ? data.tafsirText.value
          : this.tafsirText,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TafsirAyahData(')
          ..write('id: $id, ')
          ..write('tafsirId: $tafsirId, ')
          ..write('ayahId: $ayahId, ')
          ..write('tafsirText: $tafsirText')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tafsirId, ayahId, tafsirText);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TafsirAyahData &&
          other.id == this.id &&
          other.tafsirId == this.tafsirId &&
          other.ayahId == this.ayahId &&
          other.tafsirText == this.tafsirText);
}

class TafsirAyahsCompanion extends UpdateCompanion<TafsirAyahData> {
  final Value<int> id;
  final Value<int> tafsirId;
  final Value<int> ayahId;
  final Value<String> tafsirText;
  const TafsirAyahsCompanion({
    this.id = const Value.absent(),
    this.tafsirId = const Value.absent(),
    this.ayahId = const Value.absent(),
    this.tafsirText = const Value.absent(),
  });
  TafsirAyahsCompanion.insert({
    this.id = const Value.absent(),
    required int tafsirId,
    required int ayahId,
    required String tafsirText,
  }) : tafsirId = Value(tafsirId),
       ayahId = Value(ayahId),
       tafsirText = Value(tafsirText);
  static Insertable<TafsirAyahData> custom({
    Expression<int>? id,
    Expression<int>? tafsirId,
    Expression<int>? ayahId,
    Expression<String>? tafsirText,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tafsirId != null) 'tafsir_id': tafsirId,
      if (ayahId != null) 'ayah_id': ayahId,
      if (tafsirText != null) 'tafsir_text': tafsirText,
    });
  }

  TafsirAyahsCompanion copyWith({
    Value<int>? id,
    Value<int>? tafsirId,
    Value<int>? ayahId,
    Value<String>? tafsirText,
  }) {
    return TafsirAyahsCompanion(
      id: id ?? this.id,
      tafsirId: tafsirId ?? this.tafsirId,
      ayahId: ayahId ?? this.ayahId,
      tafsirText: tafsirText ?? this.tafsirText,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tafsirId.present) {
      map['tafsir_id'] = Variable<int>(tafsirId.value);
    }
    if (ayahId.present) {
      map['ayah_id'] = Variable<int>(ayahId.value);
    }
    if (tafsirText.present) {
      map['tafsir_text'] = Variable<String>(tafsirText.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TafsirAyahsCompanion(')
          ..write('id: $id, ')
          ..write('tafsirId: $tafsirId, ')
          ..write('ayahId: $ayahId, ')
          ..write('tafsirText: $tafsirText')
          ..write(')'))
        .toString();
  }
}

class $RecitersTable extends Reciters
    with TableInfo<$RecitersTable, ReciterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecitersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
    'slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, slug, name, imageUrl, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reciters';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReciterData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('slug')) {
      context.handle(
        _slugMeta,
        slug.isAcceptableOrUnknown(data['slug']!, _slugMeta),
      );
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReciterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReciterData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      slug: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}slug'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
    );
  }

  @override
  $RecitersTable createAlias(String alias) {
    return $RecitersTable(attachedDatabase, alias);
  }
}

class ReciterData extends DataClass implements Insertable<ReciterData> {
  final int id;
  final String slug;
  final String name;
  final String? imageUrl;
  final String? description;
  const ReciterData({
    required this.id,
    required this.slug,
    required this.name,
    this.imageUrl,
    this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['slug'] = Variable<String>(slug);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  RecitersCompanion toCompanion(bool nullToAbsent) {
    return RecitersCompanion(
      id: Value(id),
      slug: Value(slug),
      name: Value(name),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory ReciterData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReciterData(
      id: serializer.fromJson<int>(json['id']),
      slug: serializer.fromJson<String>(json['slug']),
      name: serializer.fromJson<String>(json['name']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'slug': serializer.toJson<String>(slug),
      'name': serializer.toJson<String>(name),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'description': serializer.toJson<String?>(description),
    };
  }

  ReciterData copyWith({
    int? id,
    String? slug,
    String? name,
    Value<String?> imageUrl = const Value.absent(),
    Value<String?> description = const Value.absent(),
  }) => ReciterData(
    id: id ?? this.id,
    slug: slug ?? this.slug,
    name: name ?? this.name,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    description: description.present ? description.value : this.description,
  );
  ReciterData copyWithCompanion(RecitersCompanion data) {
    return ReciterData(
      id: data.id.present ? data.id.value : this.id,
      slug: data.slug.present ? data.slug.value : this.slug,
      name: data.name.present ? data.name.value : this.name,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReciterData(')
          ..write('id: $id, ')
          ..write('slug: $slug, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, slug, name, imageUrl, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReciterData &&
          other.id == this.id &&
          other.slug == this.slug &&
          other.name == this.name &&
          other.imageUrl == this.imageUrl &&
          other.description == this.description);
}

class RecitersCompanion extends UpdateCompanion<ReciterData> {
  final Value<int> id;
  final Value<String> slug;
  final Value<String> name;
  final Value<String?> imageUrl;
  final Value<String?> description;
  const RecitersCompanion({
    this.id = const Value.absent(),
    this.slug = const Value.absent(),
    this.name = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.description = const Value.absent(),
  });
  RecitersCompanion.insert({
    this.id = const Value.absent(),
    required String slug,
    required String name,
    this.imageUrl = const Value.absent(),
    this.description = const Value.absent(),
  }) : slug = Value(slug),
       name = Value(name);
  static Insertable<ReciterData> custom({
    Expression<int>? id,
    Expression<String>? slug,
    Expression<String>? name,
    Expression<String>? imageUrl,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (slug != null) 'slug': slug,
      if (name != null) 'name': name,
      if (imageUrl != null) 'image_url': imageUrl,
      if (description != null) 'description': description,
    });
  }

  RecitersCompanion copyWith({
    Value<int>? id,
    Value<String>? slug,
    Value<String>? name,
    Value<String?>? imageUrl,
    Value<String?>? description,
  }) {
    return RecitersCompanion(
      id: id ?? this.id,
      slug: slug ?? this.slug,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecitersCompanion(')
          ..write('id: $id, ')
          ..write('slug: $slug, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $AudioPacksTable extends AudioPacks
    with TableInfo<$AudioPacksTable, AudioPackData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AudioPacksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _reciterIdMeta = const VerificationMeta(
    'reciterId',
  );
  @override
  late final GeneratedColumn<int> reciterId = GeneratedColumn<int>(
    'reciter_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES reciters (id)',
    ),
  );
  static const VerificationMeta _qualityMeta = const VerificationMeta(
    'quality',
  );
  @override
  late final GeneratedColumn<String> quality = GeneratedColumn<String>(
    'quality',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sizeBytesMeta = const VerificationMeta(
    'sizeBytes',
  );
  @override
  late final GeneratedColumn<int> sizeBytes = GeneratedColumn<int>(
    'size_bytes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    reciterId,
    quality,
    sizeBytes,
    version,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'audio_packs';
  @override
  VerificationContext validateIntegrity(
    Insertable<AudioPackData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('reciter_id')) {
      context.handle(
        _reciterIdMeta,
        reciterId.isAcceptableOrUnknown(data['reciter_id']!, _reciterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_reciterIdMeta);
    }
    if (data.containsKey('quality')) {
      context.handle(
        _qualityMeta,
        quality.isAcceptableOrUnknown(data['quality']!, _qualityMeta),
      );
    } else if (isInserting) {
      context.missing(_qualityMeta);
    }
    if (data.containsKey('size_bytes')) {
      context.handle(
        _sizeBytesMeta,
        sizeBytes.isAcceptableOrUnknown(data['size_bytes']!, _sizeBytesMeta),
      );
    } else if (isInserting) {
      context.missing(_sizeBytesMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AudioPackData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AudioPackData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      reciterId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reciter_id'],
      )!,
      quality: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}quality'],
      )!,
      sizeBytes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}size_bytes'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version'],
      )!,
    );
  }

  @override
  $AudioPacksTable createAlias(String alias) {
    return $AudioPacksTable(attachedDatabase, alias);
  }
}

class AudioPackData extends DataClass implements Insertable<AudioPackData> {
  final int id;
  final int reciterId;
  final String quality;
  final int sizeBytes;
  final String version;
  const AudioPackData({
    required this.id,
    required this.reciterId,
    required this.quality,
    required this.sizeBytes,
    required this.version,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['reciter_id'] = Variable<int>(reciterId);
    map['quality'] = Variable<String>(quality);
    map['size_bytes'] = Variable<int>(sizeBytes);
    map['version'] = Variable<String>(version);
    return map;
  }

  AudioPacksCompanion toCompanion(bool nullToAbsent) {
    return AudioPacksCompanion(
      id: Value(id),
      reciterId: Value(reciterId),
      quality: Value(quality),
      sizeBytes: Value(sizeBytes),
      version: Value(version),
    );
  }

  factory AudioPackData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AudioPackData(
      id: serializer.fromJson<int>(json['id']),
      reciterId: serializer.fromJson<int>(json['reciterId']),
      quality: serializer.fromJson<String>(json['quality']),
      sizeBytes: serializer.fromJson<int>(json['sizeBytes']),
      version: serializer.fromJson<String>(json['version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'reciterId': serializer.toJson<int>(reciterId),
      'quality': serializer.toJson<String>(quality),
      'sizeBytes': serializer.toJson<int>(sizeBytes),
      'version': serializer.toJson<String>(version),
    };
  }

  AudioPackData copyWith({
    int? id,
    int? reciterId,
    String? quality,
    int? sizeBytes,
    String? version,
  }) => AudioPackData(
    id: id ?? this.id,
    reciterId: reciterId ?? this.reciterId,
    quality: quality ?? this.quality,
    sizeBytes: sizeBytes ?? this.sizeBytes,
    version: version ?? this.version,
  );
  AudioPackData copyWithCompanion(AudioPacksCompanion data) {
    return AudioPackData(
      id: data.id.present ? data.id.value : this.id,
      reciterId: data.reciterId.present ? data.reciterId.value : this.reciterId,
      quality: data.quality.present ? data.quality.value : this.quality,
      sizeBytes: data.sizeBytes.present ? data.sizeBytes.value : this.sizeBytes,
      version: data.version.present ? data.version.value : this.version,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AudioPackData(')
          ..write('id: $id, ')
          ..write('reciterId: $reciterId, ')
          ..write('quality: $quality, ')
          ..write('sizeBytes: $sizeBytes, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, reciterId, quality, sizeBytes, version);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AudioPackData &&
          other.id == this.id &&
          other.reciterId == this.reciterId &&
          other.quality == this.quality &&
          other.sizeBytes == this.sizeBytes &&
          other.version == this.version);
}

class AudioPacksCompanion extends UpdateCompanion<AudioPackData> {
  final Value<int> id;
  final Value<int> reciterId;
  final Value<String> quality;
  final Value<int> sizeBytes;
  final Value<String> version;
  const AudioPacksCompanion({
    this.id = const Value.absent(),
    this.reciterId = const Value.absent(),
    this.quality = const Value.absent(),
    this.sizeBytes = const Value.absent(),
    this.version = const Value.absent(),
  });
  AudioPacksCompanion.insert({
    this.id = const Value.absent(),
    required int reciterId,
    required String quality,
    required int sizeBytes,
    required String version,
  }) : reciterId = Value(reciterId),
       quality = Value(quality),
       sizeBytes = Value(sizeBytes),
       version = Value(version);
  static Insertable<AudioPackData> custom({
    Expression<int>? id,
    Expression<int>? reciterId,
    Expression<String>? quality,
    Expression<int>? sizeBytes,
    Expression<String>? version,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (reciterId != null) 'reciter_id': reciterId,
      if (quality != null) 'quality': quality,
      if (sizeBytes != null) 'size_bytes': sizeBytes,
      if (version != null) 'version': version,
    });
  }

  AudioPacksCompanion copyWith({
    Value<int>? id,
    Value<int>? reciterId,
    Value<String>? quality,
    Value<int>? sizeBytes,
    Value<String>? version,
  }) {
    return AudioPacksCompanion(
      id: id ?? this.id,
      reciterId: reciterId ?? this.reciterId,
      quality: quality ?? this.quality,
      sizeBytes: sizeBytes ?? this.sizeBytes,
      version: version ?? this.version,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (reciterId.present) {
      map['reciter_id'] = Variable<int>(reciterId.value);
    }
    if (quality.present) {
      map['quality'] = Variable<String>(quality.value);
    }
    if (sizeBytes.present) {
      map['size_bytes'] = Variable<int>(sizeBytes.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AudioPacksCompanion(')
          ..write('id: $id, ')
          ..write('reciterId: $reciterId, ')
          ..write('quality: $quality, ')
          ..write('sizeBytes: $sizeBytes, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }
}

class $AudioFilesTable extends AudioFiles
    with TableInfo<$AudioFilesTable, AudioFileData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AudioFilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _audioPackIdMeta = const VerificationMeta(
    'audioPackId',
  );
  @override
  late final GeneratedColumn<int> audioPackId = GeneratedColumn<int>(
    'audio_pack_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES audio_packs (id)',
    ),
  );
  static const VerificationMeta _surahIdMeta = const VerificationMeta(
    'surahId',
  );
  @override
  late final GeneratedColumn<int> surahId = GeneratedColumn<int>(
    'surah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES surahs (id)',
    ),
  );
  static const VerificationMeta _remoteUrlMeta = const VerificationMeta(
    'remoteUrl',
  );
  @override
  late final GeneratedColumn<String> remoteUrl = GeneratedColumn<String>(
    'remote_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _localPathMeta = const VerificationMeta(
    'localPath',
  );
  @override
  late final GeneratedColumn<String> localPath = GeneratedColumn<String>(
    'local_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _durationSecondsMeta = const VerificationMeta(
    'durationSeconds',
  );
  @override
  late final GeneratedColumn<int> durationSeconds = GeneratedColumn<int>(
    'duration_seconds',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _checksumMeta = const VerificationMeta(
    'checksum',
  );
  @override
  late final GeneratedColumn<String> checksum = GeneratedColumn<String>(
    'checksum',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    audioPackId,
    surahId,
    remoteUrl,
    localPath,
    durationSeconds,
    checksum,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'audio_files';
  @override
  VerificationContext validateIntegrity(
    Insertable<AudioFileData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('audio_pack_id')) {
      context.handle(
        _audioPackIdMeta,
        audioPackId.isAcceptableOrUnknown(
          data['audio_pack_id']!,
          _audioPackIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_audioPackIdMeta);
    }
    if (data.containsKey('surah_id')) {
      context.handle(
        _surahIdMeta,
        surahId.isAcceptableOrUnknown(data['surah_id']!, _surahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_surahIdMeta);
    }
    if (data.containsKey('remote_url')) {
      context.handle(
        _remoteUrlMeta,
        remoteUrl.isAcceptableOrUnknown(data['remote_url']!, _remoteUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_remoteUrlMeta);
    }
    if (data.containsKey('local_path')) {
      context.handle(
        _localPathMeta,
        localPath.isAcceptableOrUnknown(data['local_path']!, _localPathMeta),
      );
    }
    if (data.containsKey('duration_seconds')) {
      context.handle(
        _durationSecondsMeta,
        durationSeconds.isAcceptableOrUnknown(
          data['duration_seconds']!,
          _durationSecondsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_durationSecondsMeta);
    }
    if (data.containsKey('checksum')) {
      context.handle(
        _checksumMeta,
        checksum.isAcceptableOrUnknown(data['checksum']!, _checksumMeta),
      );
    } else if (isInserting) {
      context.missing(_checksumMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AudioFileData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AudioFileData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      audioPackId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}audio_pack_id'],
      )!,
      surahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}surah_id'],
      )!,
      remoteUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}remote_url'],
      )!,
      localPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}local_path'],
      ),
      durationSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_seconds'],
      )!,
      checksum: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}checksum'],
      )!,
    );
  }

  @override
  $AudioFilesTable createAlias(String alias) {
    return $AudioFilesTable(attachedDatabase, alias);
  }
}

class AudioFileData extends DataClass implements Insertable<AudioFileData> {
  final int id;
  final int audioPackId;
  final int surahId;
  final String remoteUrl;
  final String? localPath;
  final int durationSeconds;
  final String checksum;
  const AudioFileData({
    required this.id,
    required this.audioPackId,
    required this.surahId,
    required this.remoteUrl,
    this.localPath,
    required this.durationSeconds,
    required this.checksum,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['audio_pack_id'] = Variable<int>(audioPackId);
    map['surah_id'] = Variable<int>(surahId);
    map['remote_url'] = Variable<String>(remoteUrl);
    if (!nullToAbsent || localPath != null) {
      map['local_path'] = Variable<String>(localPath);
    }
    map['duration_seconds'] = Variable<int>(durationSeconds);
    map['checksum'] = Variable<String>(checksum);
    return map;
  }

  AudioFilesCompanion toCompanion(bool nullToAbsent) {
    return AudioFilesCompanion(
      id: Value(id),
      audioPackId: Value(audioPackId),
      surahId: Value(surahId),
      remoteUrl: Value(remoteUrl),
      localPath: localPath == null && nullToAbsent
          ? const Value.absent()
          : Value(localPath),
      durationSeconds: Value(durationSeconds),
      checksum: Value(checksum),
    );
  }

  factory AudioFileData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AudioFileData(
      id: serializer.fromJson<int>(json['id']),
      audioPackId: serializer.fromJson<int>(json['audioPackId']),
      surahId: serializer.fromJson<int>(json['surahId']),
      remoteUrl: serializer.fromJson<String>(json['remoteUrl']),
      localPath: serializer.fromJson<String?>(json['localPath']),
      durationSeconds: serializer.fromJson<int>(json['durationSeconds']),
      checksum: serializer.fromJson<String>(json['checksum']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'audioPackId': serializer.toJson<int>(audioPackId),
      'surahId': serializer.toJson<int>(surahId),
      'remoteUrl': serializer.toJson<String>(remoteUrl),
      'localPath': serializer.toJson<String?>(localPath),
      'durationSeconds': serializer.toJson<int>(durationSeconds),
      'checksum': serializer.toJson<String>(checksum),
    };
  }

  AudioFileData copyWith({
    int? id,
    int? audioPackId,
    int? surahId,
    String? remoteUrl,
    Value<String?> localPath = const Value.absent(),
    int? durationSeconds,
    String? checksum,
  }) => AudioFileData(
    id: id ?? this.id,
    audioPackId: audioPackId ?? this.audioPackId,
    surahId: surahId ?? this.surahId,
    remoteUrl: remoteUrl ?? this.remoteUrl,
    localPath: localPath.present ? localPath.value : this.localPath,
    durationSeconds: durationSeconds ?? this.durationSeconds,
    checksum: checksum ?? this.checksum,
  );
  AudioFileData copyWithCompanion(AudioFilesCompanion data) {
    return AudioFileData(
      id: data.id.present ? data.id.value : this.id,
      audioPackId: data.audioPackId.present
          ? data.audioPackId.value
          : this.audioPackId,
      surahId: data.surahId.present ? data.surahId.value : this.surahId,
      remoteUrl: data.remoteUrl.present ? data.remoteUrl.value : this.remoteUrl,
      localPath: data.localPath.present ? data.localPath.value : this.localPath,
      durationSeconds: data.durationSeconds.present
          ? data.durationSeconds.value
          : this.durationSeconds,
      checksum: data.checksum.present ? data.checksum.value : this.checksum,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AudioFileData(')
          ..write('id: $id, ')
          ..write('audioPackId: $audioPackId, ')
          ..write('surahId: $surahId, ')
          ..write('remoteUrl: $remoteUrl, ')
          ..write('localPath: $localPath, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('checksum: $checksum')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    audioPackId,
    surahId,
    remoteUrl,
    localPath,
    durationSeconds,
    checksum,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AudioFileData &&
          other.id == this.id &&
          other.audioPackId == this.audioPackId &&
          other.surahId == this.surahId &&
          other.remoteUrl == this.remoteUrl &&
          other.localPath == this.localPath &&
          other.durationSeconds == this.durationSeconds &&
          other.checksum == this.checksum);
}

class AudioFilesCompanion extends UpdateCompanion<AudioFileData> {
  final Value<int> id;
  final Value<int> audioPackId;
  final Value<int> surahId;
  final Value<String> remoteUrl;
  final Value<String?> localPath;
  final Value<int> durationSeconds;
  final Value<String> checksum;
  const AudioFilesCompanion({
    this.id = const Value.absent(),
    this.audioPackId = const Value.absent(),
    this.surahId = const Value.absent(),
    this.remoteUrl = const Value.absent(),
    this.localPath = const Value.absent(),
    this.durationSeconds = const Value.absent(),
    this.checksum = const Value.absent(),
  });
  AudioFilesCompanion.insert({
    this.id = const Value.absent(),
    required int audioPackId,
    required int surahId,
    required String remoteUrl,
    this.localPath = const Value.absent(),
    required int durationSeconds,
    required String checksum,
  }) : audioPackId = Value(audioPackId),
       surahId = Value(surahId),
       remoteUrl = Value(remoteUrl),
       durationSeconds = Value(durationSeconds),
       checksum = Value(checksum);
  static Insertable<AudioFileData> custom({
    Expression<int>? id,
    Expression<int>? audioPackId,
    Expression<int>? surahId,
    Expression<String>? remoteUrl,
    Expression<String>? localPath,
    Expression<int>? durationSeconds,
    Expression<String>? checksum,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (audioPackId != null) 'audio_pack_id': audioPackId,
      if (surahId != null) 'surah_id': surahId,
      if (remoteUrl != null) 'remote_url': remoteUrl,
      if (localPath != null) 'local_path': localPath,
      if (durationSeconds != null) 'duration_seconds': durationSeconds,
      if (checksum != null) 'checksum': checksum,
    });
  }

  AudioFilesCompanion copyWith({
    Value<int>? id,
    Value<int>? audioPackId,
    Value<int>? surahId,
    Value<String>? remoteUrl,
    Value<String?>? localPath,
    Value<int>? durationSeconds,
    Value<String>? checksum,
  }) {
    return AudioFilesCompanion(
      id: id ?? this.id,
      audioPackId: audioPackId ?? this.audioPackId,
      surahId: surahId ?? this.surahId,
      remoteUrl: remoteUrl ?? this.remoteUrl,
      localPath: localPath ?? this.localPath,
      durationSeconds: durationSeconds ?? this.durationSeconds,
      checksum: checksum ?? this.checksum,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (audioPackId.present) {
      map['audio_pack_id'] = Variable<int>(audioPackId.value);
    }
    if (surahId.present) {
      map['surah_id'] = Variable<int>(surahId.value);
    }
    if (remoteUrl.present) {
      map['remote_url'] = Variable<String>(remoteUrl.value);
    }
    if (localPath.present) {
      map['local_path'] = Variable<String>(localPath.value);
    }
    if (durationSeconds.present) {
      map['duration_seconds'] = Variable<int>(durationSeconds.value);
    }
    if (checksum.present) {
      map['checksum'] = Variable<String>(checksum.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AudioFilesCompanion(')
          ..write('id: $id, ')
          ..write('audioPackId: $audioPackId, ')
          ..write('surahId: $surahId, ')
          ..write('remoteUrl: $remoteUrl, ')
          ..write('localPath: $localPath, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('checksum: $checksum')
          ..write(')'))
        .toString();
  }
}

class $ContentPacksTable extends ContentPacks
    with TableInfo<$ContentPacksTable, ContentPackData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContentPacksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languageCodeMeta = const VerificationMeta(
    'languageCode',
  );
  @override
  late final GeneratedColumn<String> languageCode = GeneratedColumn<String>(
    'language_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sizeBytesMeta = const VerificationMeta(
    'sizeBytes',
  );
  @override
  late final GeneratedColumn<int> sizeBytes = GeneratedColumn<int>(
    'size_bytes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _checksumMeta = const VerificationMeta(
    'checksum',
  );
  @override
  late final GeneratedColumn<String> checksum = GeneratedColumn<String>(
    'checksum',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _publishedAtMeta = const VerificationMeta(
    'publishedAt',
  );
  @override
  late final GeneratedColumn<DateTime> publishedAt = GeneratedColumn<DateTime>(
    'published_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    type,
    languageCode,
    version,
    sizeBytes,
    checksum,
    publishedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'content_packs';
  @override
  VerificationContext validateIntegrity(
    Insertable<ContentPackData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('language_code')) {
      context.handle(
        _languageCodeMeta,
        languageCode.isAcceptableOrUnknown(
          data['language_code']!,
          _languageCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_languageCodeMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('size_bytes')) {
      context.handle(
        _sizeBytesMeta,
        sizeBytes.isAcceptableOrUnknown(data['size_bytes']!, _sizeBytesMeta),
      );
    } else if (isInserting) {
      context.missing(_sizeBytesMeta);
    }
    if (data.containsKey('checksum')) {
      context.handle(
        _checksumMeta,
        checksum.isAcceptableOrUnknown(data['checksum']!, _checksumMeta),
      );
    } else if (isInserting) {
      context.missing(_checksumMeta);
    }
    if (data.containsKey('published_at')) {
      context.handle(
        _publishedAtMeta,
        publishedAt.isAcceptableOrUnknown(
          data['published_at']!,
          _publishedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_publishedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContentPackData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContentPackData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      languageCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language_code'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version'],
      )!,
      sizeBytes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}size_bytes'],
      )!,
      checksum: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}checksum'],
      )!,
      publishedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}published_at'],
      )!,
    );
  }

  @override
  $ContentPacksTable createAlias(String alias) {
    return $ContentPacksTable(attachedDatabase, alias);
  }
}

class ContentPackData extends DataClass implements Insertable<ContentPackData> {
  final int id;
  final String type;
  final String languageCode;
  final String version;
  final int sizeBytes;
  final String checksum;
  final DateTime publishedAt;
  const ContentPackData({
    required this.id,
    required this.type,
    required this.languageCode,
    required this.version,
    required this.sizeBytes,
    required this.checksum,
    required this.publishedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    map['language_code'] = Variable<String>(languageCode);
    map['version'] = Variable<String>(version);
    map['size_bytes'] = Variable<int>(sizeBytes);
    map['checksum'] = Variable<String>(checksum);
    map['published_at'] = Variable<DateTime>(publishedAt);
    return map;
  }

  ContentPacksCompanion toCompanion(bool nullToAbsent) {
    return ContentPacksCompanion(
      id: Value(id),
      type: Value(type),
      languageCode: Value(languageCode),
      version: Value(version),
      sizeBytes: Value(sizeBytes),
      checksum: Value(checksum),
      publishedAt: Value(publishedAt),
    );
  }

  factory ContentPackData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContentPackData(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
      version: serializer.fromJson<String>(json['version']),
      sizeBytes: serializer.fromJson<int>(json['sizeBytes']),
      checksum: serializer.fromJson<String>(json['checksum']),
      publishedAt: serializer.fromJson<DateTime>(json['publishedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
      'languageCode': serializer.toJson<String>(languageCode),
      'version': serializer.toJson<String>(version),
      'sizeBytes': serializer.toJson<int>(sizeBytes),
      'checksum': serializer.toJson<String>(checksum),
      'publishedAt': serializer.toJson<DateTime>(publishedAt),
    };
  }

  ContentPackData copyWith({
    int? id,
    String? type,
    String? languageCode,
    String? version,
    int? sizeBytes,
    String? checksum,
    DateTime? publishedAt,
  }) => ContentPackData(
    id: id ?? this.id,
    type: type ?? this.type,
    languageCode: languageCode ?? this.languageCode,
    version: version ?? this.version,
    sizeBytes: sizeBytes ?? this.sizeBytes,
    checksum: checksum ?? this.checksum,
    publishedAt: publishedAt ?? this.publishedAt,
  );
  ContentPackData copyWithCompanion(ContentPacksCompanion data) {
    return ContentPackData(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
      languageCode: data.languageCode.present
          ? data.languageCode.value
          : this.languageCode,
      version: data.version.present ? data.version.value : this.version,
      sizeBytes: data.sizeBytes.present ? data.sizeBytes.value : this.sizeBytes,
      checksum: data.checksum.present ? data.checksum.value : this.checksum,
      publishedAt: data.publishedAt.present
          ? data.publishedAt.value
          : this.publishedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContentPackData(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('languageCode: $languageCode, ')
          ..write('version: $version, ')
          ..write('sizeBytes: $sizeBytes, ')
          ..write('checksum: $checksum, ')
          ..write('publishedAt: $publishedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    type,
    languageCode,
    version,
    sizeBytes,
    checksum,
    publishedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentPackData &&
          other.id == this.id &&
          other.type == this.type &&
          other.languageCode == this.languageCode &&
          other.version == this.version &&
          other.sizeBytes == this.sizeBytes &&
          other.checksum == this.checksum &&
          other.publishedAt == this.publishedAt);
}

class ContentPacksCompanion extends UpdateCompanion<ContentPackData> {
  final Value<int> id;
  final Value<String> type;
  final Value<String> languageCode;
  final Value<String> version;
  final Value<int> sizeBytes;
  final Value<String> checksum;
  final Value<DateTime> publishedAt;
  const ContentPacksCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.version = const Value.absent(),
    this.sizeBytes = const Value.absent(),
    this.checksum = const Value.absent(),
    this.publishedAt = const Value.absent(),
  });
  ContentPacksCompanion.insert({
    this.id = const Value.absent(),
    required String type,
    required String languageCode,
    required String version,
    required int sizeBytes,
    required String checksum,
    required DateTime publishedAt,
  }) : type = Value(type),
       languageCode = Value(languageCode),
       version = Value(version),
       sizeBytes = Value(sizeBytes),
       checksum = Value(checksum),
       publishedAt = Value(publishedAt);
  static Insertable<ContentPackData> custom({
    Expression<int>? id,
    Expression<String>? type,
    Expression<String>? languageCode,
    Expression<String>? version,
    Expression<int>? sizeBytes,
    Expression<String>? checksum,
    Expression<DateTime>? publishedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (languageCode != null) 'language_code': languageCode,
      if (version != null) 'version': version,
      if (sizeBytes != null) 'size_bytes': sizeBytes,
      if (checksum != null) 'checksum': checksum,
      if (publishedAt != null) 'published_at': publishedAt,
    });
  }

  ContentPacksCompanion copyWith({
    Value<int>? id,
    Value<String>? type,
    Value<String>? languageCode,
    Value<String>? version,
    Value<int>? sizeBytes,
    Value<String>? checksum,
    Value<DateTime>? publishedAt,
  }) {
    return ContentPacksCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      languageCode: languageCode ?? this.languageCode,
      version: version ?? this.version,
      sizeBytes: sizeBytes ?? this.sizeBytes,
      checksum: checksum ?? this.checksum,
      publishedAt: publishedAt ?? this.publishedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    if (sizeBytes.present) {
      map['size_bytes'] = Variable<int>(sizeBytes.value);
    }
    if (checksum.present) {
      map['checksum'] = Variable<String>(checksum.value);
    }
    if (publishedAt.present) {
      map['published_at'] = Variable<DateTime>(publishedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentPacksCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('languageCode: $languageCode, ')
          ..write('version: $version, ')
          ..write('sizeBytes: $sizeBytes, ')
          ..write('checksum: $checksum, ')
          ..write('publishedAt: $publishedAt')
          ..write(')'))
        .toString();
  }
}

class $InstalledPackagesTable extends InstalledPackages
    with TableInfo<$InstalledPackagesTable, InstalledPackageData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InstalledPackagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _packageIdMeta = const VerificationMeta(
    'packageId',
  );
  @override
  late final GeneratedColumn<int> packageId = GeneratedColumn<int>(
    'package_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES content_packs (id)',
    ),
  );
  static const VerificationMeta _installedVersionMeta = const VerificationMeta(
    'installedVersion',
  );
  @override
  late final GeneratedColumn<String> installedVersion = GeneratedColumn<String>(
    'installed_version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _installedAtMeta = const VerificationMeta(
    'installedAt',
  );
  @override
  late final GeneratedColumn<DateTime> installedAt = GeneratedColumn<DateTime>(
    'installed_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    packageId,
    installedVersion,
    installedAt,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'installed_packages';
  @override
  VerificationContext validateIntegrity(
    Insertable<InstalledPackageData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('package_id')) {
      context.handle(
        _packageIdMeta,
        packageId.isAcceptableOrUnknown(data['package_id']!, _packageIdMeta),
      );
    } else if (isInserting) {
      context.missing(_packageIdMeta);
    }
    if (data.containsKey('installed_version')) {
      context.handle(
        _installedVersionMeta,
        installedVersion.isAcceptableOrUnknown(
          data['installed_version']!,
          _installedVersionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_installedVersionMeta);
    }
    if (data.containsKey('installed_at')) {
      context.handle(
        _installedAtMeta,
        installedAt.isAcceptableOrUnknown(
          data['installed_at']!,
          _installedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_installedAtMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InstalledPackageData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InstalledPackageData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      packageId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}package_id'],
      )!,
      installedVersion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}installed_version'],
      )!,
      installedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}installed_at'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $InstalledPackagesTable createAlias(String alias) {
    return $InstalledPackagesTable(attachedDatabase, alias);
  }
}

class InstalledPackageData extends DataClass
    implements Insertable<InstalledPackageData> {
  final int id;
  final int packageId;
  final String installedVersion;
  final DateTime installedAt;
  final String status;
  const InstalledPackageData({
    required this.id,
    required this.packageId,
    required this.installedVersion,
    required this.installedAt,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['package_id'] = Variable<int>(packageId);
    map['installed_version'] = Variable<String>(installedVersion);
    map['installed_at'] = Variable<DateTime>(installedAt);
    map['status'] = Variable<String>(status);
    return map;
  }

  InstalledPackagesCompanion toCompanion(bool nullToAbsent) {
    return InstalledPackagesCompanion(
      id: Value(id),
      packageId: Value(packageId),
      installedVersion: Value(installedVersion),
      installedAt: Value(installedAt),
      status: Value(status),
    );
  }

  factory InstalledPackageData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InstalledPackageData(
      id: serializer.fromJson<int>(json['id']),
      packageId: serializer.fromJson<int>(json['packageId']),
      installedVersion: serializer.fromJson<String>(json['installedVersion']),
      installedAt: serializer.fromJson<DateTime>(json['installedAt']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'packageId': serializer.toJson<int>(packageId),
      'installedVersion': serializer.toJson<String>(installedVersion),
      'installedAt': serializer.toJson<DateTime>(installedAt),
      'status': serializer.toJson<String>(status),
    };
  }

  InstalledPackageData copyWith({
    int? id,
    int? packageId,
    String? installedVersion,
    DateTime? installedAt,
    String? status,
  }) => InstalledPackageData(
    id: id ?? this.id,
    packageId: packageId ?? this.packageId,
    installedVersion: installedVersion ?? this.installedVersion,
    installedAt: installedAt ?? this.installedAt,
    status: status ?? this.status,
  );
  InstalledPackageData copyWithCompanion(InstalledPackagesCompanion data) {
    return InstalledPackageData(
      id: data.id.present ? data.id.value : this.id,
      packageId: data.packageId.present ? data.packageId.value : this.packageId,
      installedVersion: data.installedVersion.present
          ? data.installedVersion.value
          : this.installedVersion,
      installedAt: data.installedAt.present
          ? data.installedAt.value
          : this.installedAt,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('InstalledPackageData(')
          ..write('id: $id, ')
          ..write('packageId: $packageId, ')
          ..write('installedVersion: $installedVersion, ')
          ..write('installedAt: $installedAt, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, packageId, installedVersion, installedAt, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InstalledPackageData &&
          other.id == this.id &&
          other.packageId == this.packageId &&
          other.installedVersion == this.installedVersion &&
          other.installedAt == this.installedAt &&
          other.status == this.status);
}

class InstalledPackagesCompanion extends UpdateCompanion<InstalledPackageData> {
  final Value<int> id;
  final Value<int> packageId;
  final Value<String> installedVersion;
  final Value<DateTime> installedAt;
  final Value<String> status;
  const InstalledPackagesCompanion({
    this.id = const Value.absent(),
    this.packageId = const Value.absent(),
    this.installedVersion = const Value.absent(),
    this.installedAt = const Value.absent(),
    this.status = const Value.absent(),
  });
  InstalledPackagesCompanion.insert({
    this.id = const Value.absent(),
    required int packageId,
    required String installedVersion,
    required DateTime installedAt,
    required String status,
  }) : packageId = Value(packageId),
       installedVersion = Value(installedVersion),
       installedAt = Value(installedAt),
       status = Value(status);
  static Insertable<InstalledPackageData> custom({
    Expression<int>? id,
    Expression<int>? packageId,
    Expression<String>? installedVersion,
    Expression<DateTime>? installedAt,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (packageId != null) 'package_id': packageId,
      if (installedVersion != null) 'installed_version': installedVersion,
      if (installedAt != null) 'installed_at': installedAt,
      if (status != null) 'status': status,
    });
  }

  InstalledPackagesCompanion copyWith({
    Value<int>? id,
    Value<int>? packageId,
    Value<String>? installedVersion,
    Value<DateTime>? installedAt,
    Value<String>? status,
  }) {
    return InstalledPackagesCompanion(
      id: id ?? this.id,
      packageId: packageId ?? this.packageId,
      installedVersion: installedVersion ?? this.installedVersion,
      installedAt: installedAt ?? this.installedAt,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (packageId.present) {
      map['package_id'] = Variable<int>(packageId.value);
    }
    if (installedVersion.present) {
      map['installed_version'] = Variable<String>(installedVersion.value);
    }
    if (installedAt.present) {
      map['installed_at'] = Variable<DateTime>(installedAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InstalledPackagesCompanion(')
          ..write('id: $id, ')
          ..write('packageId: $packageId, ')
          ..write('installedVersion: $installedVersion, ')
          ..write('installedAt: $installedAt, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $ReadingProgressTableTable extends ReadingProgressTable
    with TableInfo<$ReadingProgressTableTable, ReadingProgressData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReadingProgressTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _surahIdMeta = const VerificationMeta(
    'surahId',
  );
  @override
  late final GeneratedColumn<int> surahId = GeneratedColumn<int>(
    'surah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES surahs (id)',
    ),
  );
  static const VerificationMeta _ayahIdMeta = const VerificationMeta('ayahId');
  @override
  late final GeneratedColumn<int> ayahId = GeneratedColumn<int>(
    'ayah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ayahs (id)',
    ),
  );
  static const VerificationMeta _completedMeta = const VerificationMeta(
    'completed',
  );
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
    'completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _lastOpenedAtMeta = const VerificationMeta(
    'lastOpenedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastOpenedAt = GeneratedColumn<DateTime>(
    'last_opened_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    surahId,
    ayahId,
    completed,
    lastOpenedAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reading_progress_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReadingProgressData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('surah_id')) {
      context.handle(
        _surahIdMeta,
        surahId.isAcceptableOrUnknown(data['surah_id']!, _surahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_surahIdMeta);
    }
    if (data.containsKey('ayah_id')) {
      context.handle(
        _ayahIdMeta,
        ayahId.isAcceptableOrUnknown(data['ayah_id']!, _ayahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahIdMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(
        _completedMeta,
        completed.isAcceptableOrUnknown(data['completed']!, _completedMeta),
      );
    }
    if (data.containsKey('last_opened_at')) {
      context.handle(
        _lastOpenedAtMeta,
        lastOpenedAt.isAcceptableOrUnknown(
          data['last_opened_at']!,
          _lastOpenedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastOpenedAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReadingProgressData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReadingProgressData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      surahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}surah_id'],
      )!,
      ayahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayah_id'],
      )!,
      completed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}completed'],
      )!,
      lastOpenedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_opened_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $ReadingProgressTableTable createAlias(String alias) {
    return $ReadingProgressTableTable(attachedDatabase, alias);
  }
}

class ReadingProgressData extends DataClass
    implements Insertable<ReadingProgressData> {
  final int id;
  final int surahId;
  final int ayahId;
  final bool completed;
  final DateTime lastOpenedAt;
  final DateTime updatedAt;
  const ReadingProgressData({
    required this.id,
    required this.surahId,
    required this.ayahId,
    required this.completed,
    required this.lastOpenedAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['surah_id'] = Variable<int>(surahId);
    map['ayah_id'] = Variable<int>(ayahId);
    map['completed'] = Variable<bool>(completed);
    map['last_opened_at'] = Variable<DateTime>(lastOpenedAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ReadingProgressTableCompanion toCompanion(bool nullToAbsent) {
    return ReadingProgressTableCompanion(
      id: Value(id),
      surahId: Value(surahId),
      ayahId: Value(ayahId),
      completed: Value(completed),
      lastOpenedAt: Value(lastOpenedAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory ReadingProgressData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReadingProgressData(
      id: serializer.fromJson<int>(json['id']),
      surahId: serializer.fromJson<int>(json['surahId']),
      ayahId: serializer.fromJson<int>(json['ayahId']),
      completed: serializer.fromJson<bool>(json['completed']),
      lastOpenedAt: serializer.fromJson<DateTime>(json['lastOpenedAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'surahId': serializer.toJson<int>(surahId),
      'ayahId': serializer.toJson<int>(ayahId),
      'completed': serializer.toJson<bool>(completed),
      'lastOpenedAt': serializer.toJson<DateTime>(lastOpenedAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  ReadingProgressData copyWith({
    int? id,
    int? surahId,
    int? ayahId,
    bool? completed,
    DateTime? lastOpenedAt,
    DateTime? updatedAt,
  }) => ReadingProgressData(
    id: id ?? this.id,
    surahId: surahId ?? this.surahId,
    ayahId: ayahId ?? this.ayahId,
    completed: completed ?? this.completed,
    lastOpenedAt: lastOpenedAt ?? this.lastOpenedAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  ReadingProgressData copyWithCompanion(ReadingProgressTableCompanion data) {
    return ReadingProgressData(
      id: data.id.present ? data.id.value : this.id,
      surahId: data.surahId.present ? data.surahId.value : this.surahId,
      ayahId: data.ayahId.present ? data.ayahId.value : this.ayahId,
      completed: data.completed.present ? data.completed.value : this.completed,
      lastOpenedAt: data.lastOpenedAt.present
          ? data.lastOpenedAt.value
          : this.lastOpenedAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReadingProgressData(')
          ..write('id: $id, ')
          ..write('surahId: $surahId, ')
          ..write('ayahId: $ayahId, ')
          ..write('completed: $completed, ')
          ..write('lastOpenedAt: $lastOpenedAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, surahId, ayahId, completed, lastOpenedAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReadingProgressData &&
          other.id == this.id &&
          other.surahId == this.surahId &&
          other.ayahId == this.ayahId &&
          other.completed == this.completed &&
          other.lastOpenedAt == this.lastOpenedAt &&
          other.updatedAt == this.updatedAt);
}

class ReadingProgressTableCompanion
    extends UpdateCompanion<ReadingProgressData> {
  final Value<int> id;
  final Value<int> surahId;
  final Value<int> ayahId;
  final Value<bool> completed;
  final Value<DateTime> lastOpenedAt;
  final Value<DateTime> updatedAt;
  const ReadingProgressTableCompanion({
    this.id = const Value.absent(),
    this.surahId = const Value.absent(),
    this.ayahId = const Value.absent(),
    this.completed = const Value.absent(),
    this.lastOpenedAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ReadingProgressTableCompanion.insert({
    this.id = const Value.absent(),
    required int surahId,
    required int ayahId,
    this.completed = const Value.absent(),
    required DateTime lastOpenedAt,
    required DateTime updatedAt,
  }) : surahId = Value(surahId),
       ayahId = Value(ayahId),
       lastOpenedAt = Value(lastOpenedAt),
       updatedAt = Value(updatedAt);
  static Insertable<ReadingProgressData> custom({
    Expression<int>? id,
    Expression<int>? surahId,
    Expression<int>? ayahId,
    Expression<bool>? completed,
    Expression<DateTime>? lastOpenedAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (surahId != null) 'surah_id': surahId,
      if (ayahId != null) 'ayah_id': ayahId,
      if (completed != null) 'completed': completed,
      if (lastOpenedAt != null) 'last_opened_at': lastOpenedAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ReadingProgressTableCompanion copyWith({
    Value<int>? id,
    Value<int>? surahId,
    Value<int>? ayahId,
    Value<bool>? completed,
    Value<DateTime>? lastOpenedAt,
    Value<DateTime>? updatedAt,
  }) {
    return ReadingProgressTableCompanion(
      id: id ?? this.id,
      surahId: surahId ?? this.surahId,
      ayahId: ayahId ?? this.ayahId,
      completed: completed ?? this.completed,
      lastOpenedAt: lastOpenedAt ?? this.lastOpenedAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (surahId.present) {
      map['surah_id'] = Variable<int>(surahId.value);
    }
    if (ayahId.present) {
      map['ayah_id'] = Variable<int>(ayahId.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    if (lastOpenedAt.present) {
      map['last_opened_at'] = Variable<DateTime>(lastOpenedAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadingProgressTableCompanion(')
          ..write('id: $id, ')
          ..write('surahId: $surahId, ')
          ..write('ayahId: $ayahId, ')
          ..write('completed: $completed, ')
          ..write('lastOpenedAt: $lastOpenedAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ReadingSessionsTable extends ReadingSessions
    with TableInfo<$ReadingSessionsTable, ReadingSessionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReadingSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _startedAtMeta = const VerificationMeta(
    'startedAt',
  );
  @override
  late final GeneratedColumn<DateTime> startedAt = GeneratedColumn<DateTime>(
    'started_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endedAtMeta = const VerificationMeta(
    'endedAt',
  );
  @override
  late final GeneratedColumn<DateTime> endedAt = GeneratedColumn<DateTime>(
    'ended_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _surahIdMeta = const VerificationMeta(
    'surahId',
  );
  @override
  late final GeneratedColumn<int> surahId = GeneratedColumn<int>(
    'surah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES surahs (id)',
    ),
  );
  static const VerificationMeta _ayahsReadMeta = const VerificationMeta(
    'ayahsRead',
  );
  @override
  late final GeneratedColumn<int> ayahsRead = GeneratedColumn<int>(
    'ayahs_read',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _durationSecondsMeta = const VerificationMeta(
    'durationSeconds',
  );
  @override
  late final GeneratedColumn<int> durationSeconds = GeneratedColumn<int>(
    'duration_seconds',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    startedAt,
    endedAt,
    surahId,
    ayahsRead,
    durationSeconds,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reading_sessions';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReadingSessionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('started_at')) {
      context.handle(
        _startedAtMeta,
        startedAt.isAcceptableOrUnknown(data['started_at']!, _startedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_startedAtMeta);
    }
    if (data.containsKey('ended_at')) {
      context.handle(
        _endedAtMeta,
        endedAt.isAcceptableOrUnknown(data['ended_at']!, _endedAtMeta),
      );
    }
    if (data.containsKey('surah_id')) {
      context.handle(
        _surahIdMeta,
        surahId.isAcceptableOrUnknown(data['surah_id']!, _surahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_surahIdMeta);
    }
    if (data.containsKey('ayahs_read')) {
      context.handle(
        _ayahsReadMeta,
        ayahsRead.isAcceptableOrUnknown(data['ayahs_read']!, _ayahsReadMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahsReadMeta);
    }
    if (data.containsKey('duration_seconds')) {
      context.handle(
        _durationSecondsMeta,
        durationSeconds.isAcceptableOrUnknown(
          data['duration_seconds']!,
          _durationSecondsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_durationSecondsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReadingSessionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReadingSessionData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      startedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}started_at'],
      )!,
      endedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ended_at'],
      ),
      surahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}surah_id'],
      )!,
      ayahsRead: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayahs_read'],
      )!,
      durationSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_seconds'],
      )!,
    );
  }

  @override
  $ReadingSessionsTable createAlias(String alias) {
    return $ReadingSessionsTable(attachedDatabase, alias);
  }
}

class ReadingSessionData extends DataClass
    implements Insertable<ReadingSessionData> {
  final int id;
  final DateTime startedAt;
  final DateTime? endedAt;
  final int surahId;
  final int ayahsRead;
  final int durationSeconds;
  const ReadingSessionData({
    required this.id,
    required this.startedAt,
    this.endedAt,
    required this.surahId,
    required this.ayahsRead,
    required this.durationSeconds,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['started_at'] = Variable<DateTime>(startedAt);
    if (!nullToAbsent || endedAt != null) {
      map['ended_at'] = Variable<DateTime>(endedAt);
    }
    map['surah_id'] = Variable<int>(surahId);
    map['ayahs_read'] = Variable<int>(ayahsRead);
    map['duration_seconds'] = Variable<int>(durationSeconds);
    return map;
  }

  ReadingSessionsCompanion toCompanion(bool nullToAbsent) {
    return ReadingSessionsCompanion(
      id: Value(id),
      startedAt: Value(startedAt),
      endedAt: endedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(endedAt),
      surahId: Value(surahId),
      ayahsRead: Value(ayahsRead),
      durationSeconds: Value(durationSeconds),
    );
  }

  factory ReadingSessionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReadingSessionData(
      id: serializer.fromJson<int>(json['id']),
      startedAt: serializer.fromJson<DateTime>(json['startedAt']),
      endedAt: serializer.fromJson<DateTime?>(json['endedAt']),
      surahId: serializer.fromJson<int>(json['surahId']),
      ayahsRead: serializer.fromJson<int>(json['ayahsRead']),
      durationSeconds: serializer.fromJson<int>(json['durationSeconds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'startedAt': serializer.toJson<DateTime>(startedAt),
      'endedAt': serializer.toJson<DateTime?>(endedAt),
      'surahId': serializer.toJson<int>(surahId),
      'ayahsRead': serializer.toJson<int>(ayahsRead),
      'durationSeconds': serializer.toJson<int>(durationSeconds),
    };
  }

  ReadingSessionData copyWith({
    int? id,
    DateTime? startedAt,
    Value<DateTime?> endedAt = const Value.absent(),
    int? surahId,
    int? ayahsRead,
    int? durationSeconds,
  }) => ReadingSessionData(
    id: id ?? this.id,
    startedAt: startedAt ?? this.startedAt,
    endedAt: endedAt.present ? endedAt.value : this.endedAt,
    surahId: surahId ?? this.surahId,
    ayahsRead: ayahsRead ?? this.ayahsRead,
    durationSeconds: durationSeconds ?? this.durationSeconds,
  );
  ReadingSessionData copyWithCompanion(ReadingSessionsCompanion data) {
    return ReadingSessionData(
      id: data.id.present ? data.id.value : this.id,
      startedAt: data.startedAt.present ? data.startedAt.value : this.startedAt,
      endedAt: data.endedAt.present ? data.endedAt.value : this.endedAt,
      surahId: data.surahId.present ? data.surahId.value : this.surahId,
      ayahsRead: data.ayahsRead.present ? data.ayahsRead.value : this.ayahsRead,
      durationSeconds: data.durationSeconds.present
          ? data.durationSeconds.value
          : this.durationSeconds,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReadingSessionData(')
          ..write('id: $id, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('surahId: $surahId, ')
          ..write('ayahsRead: $ayahsRead, ')
          ..write('durationSeconds: $durationSeconds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, startedAt, endedAt, surahId, ayahsRead, durationSeconds);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReadingSessionData &&
          other.id == this.id &&
          other.startedAt == this.startedAt &&
          other.endedAt == this.endedAt &&
          other.surahId == this.surahId &&
          other.ayahsRead == this.ayahsRead &&
          other.durationSeconds == this.durationSeconds);
}

class ReadingSessionsCompanion extends UpdateCompanion<ReadingSessionData> {
  final Value<int> id;
  final Value<DateTime> startedAt;
  final Value<DateTime?> endedAt;
  final Value<int> surahId;
  final Value<int> ayahsRead;
  final Value<int> durationSeconds;
  const ReadingSessionsCompanion({
    this.id = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.endedAt = const Value.absent(),
    this.surahId = const Value.absent(),
    this.ayahsRead = const Value.absent(),
    this.durationSeconds = const Value.absent(),
  });
  ReadingSessionsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startedAt,
    this.endedAt = const Value.absent(),
    required int surahId,
    required int ayahsRead,
    required int durationSeconds,
  }) : startedAt = Value(startedAt),
       surahId = Value(surahId),
       ayahsRead = Value(ayahsRead),
       durationSeconds = Value(durationSeconds);
  static Insertable<ReadingSessionData> custom({
    Expression<int>? id,
    Expression<DateTime>? startedAt,
    Expression<DateTime>? endedAt,
    Expression<int>? surahId,
    Expression<int>? ayahsRead,
    Expression<int>? durationSeconds,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startedAt != null) 'started_at': startedAt,
      if (endedAt != null) 'ended_at': endedAt,
      if (surahId != null) 'surah_id': surahId,
      if (ayahsRead != null) 'ayahs_read': ayahsRead,
      if (durationSeconds != null) 'duration_seconds': durationSeconds,
    });
  }

  ReadingSessionsCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? startedAt,
    Value<DateTime?>? endedAt,
    Value<int>? surahId,
    Value<int>? ayahsRead,
    Value<int>? durationSeconds,
  }) {
    return ReadingSessionsCompanion(
      id: id ?? this.id,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt ?? this.endedAt,
      surahId: surahId ?? this.surahId,
      ayahsRead: ayahsRead ?? this.ayahsRead,
      durationSeconds: durationSeconds ?? this.durationSeconds,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (startedAt.present) {
      map['started_at'] = Variable<DateTime>(startedAt.value);
    }
    if (endedAt.present) {
      map['ended_at'] = Variable<DateTime>(endedAt.value);
    }
    if (surahId.present) {
      map['surah_id'] = Variable<int>(surahId.value);
    }
    if (ayahsRead.present) {
      map['ayahs_read'] = Variable<int>(ayahsRead.value);
    }
    if (durationSeconds.present) {
      map['duration_seconds'] = Variable<int>(durationSeconds.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadingSessionsCompanion(')
          ..write('id: $id, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('surahId: $surahId, ')
          ..write('ayahsRead: $ayahsRead, ')
          ..write('durationSeconds: $durationSeconds')
          ..write(')'))
        .toString();
  }
}

class $LastReadPositionTable extends LastReadPosition
    with TableInfo<$LastReadPositionTable, LastReadPositionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LastReadPositionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _surahIdMeta = const VerificationMeta(
    'surahId',
  );
  @override
  late final GeneratedColumn<int> surahId = GeneratedColumn<int>(
    'surah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES surahs (id)',
    ),
  );
  static const VerificationMeta _ayahIdMeta = const VerificationMeta('ayahId');
  @override
  late final GeneratedColumn<int> ayahId = GeneratedColumn<int>(
    'ayah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ayahs (id)',
    ),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, surahId, ayahId, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'last_read_position';
  @override
  VerificationContext validateIntegrity(
    Insertable<LastReadPositionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('surah_id')) {
      context.handle(
        _surahIdMeta,
        surahId.isAcceptableOrUnknown(data['surah_id']!, _surahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_surahIdMeta);
    }
    if (data.containsKey('ayah_id')) {
      context.handle(
        _ayahIdMeta,
        ayahId.isAcceptableOrUnknown(data['ayah_id']!, _ayahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahIdMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LastReadPositionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LastReadPositionData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      surahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}surah_id'],
      )!,
      ayahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayah_id'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $LastReadPositionTable createAlias(String alias) {
    return $LastReadPositionTable(attachedDatabase, alias);
  }
}

class LastReadPositionData extends DataClass
    implements Insertable<LastReadPositionData> {
  final int id;
  final int surahId;
  final int ayahId;
  final DateTime updatedAt;
  const LastReadPositionData({
    required this.id,
    required this.surahId,
    required this.ayahId,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['surah_id'] = Variable<int>(surahId);
    map['ayah_id'] = Variable<int>(ayahId);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  LastReadPositionCompanion toCompanion(bool nullToAbsent) {
    return LastReadPositionCompanion(
      id: Value(id),
      surahId: Value(surahId),
      ayahId: Value(ayahId),
      updatedAt: Value(updatedAt),
    );
  }

  factory LastReadPositionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LastReadPositionData(
      id: serializer.fromJson<int>(json['id']),
      surahId: serializer.fromJson<int>(json['surahId']),
      ayahId: serializer.fromJson<int>(json['ayahId']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'surahId': serializer.toJson<int>(surahId),
      'ayahId': serializer.toJson<int>(ayahId),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  LastReadPositionData copyWith({
    int? id,
    int? surahId,
    int? ayahId,
    DateTime? updatedAt,
  }) => LastReadPositionData(
    id: id ?? this.id,
    surahId: surahId ?? this.surahId,
    ayahId: ayahId ?? this.ayahId,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  LastReadPositionData copyWithCompanion(LastReadPositionCompanion data) {
    return LastReadPositionData(
      id: data.id.present ? data.id.value : this.id,
      surahId: data.surahId.present ? data.surahId.value : this.surahId,
      ayahId: data.ayahId.present ? data.ayahId.value : this.ayahId,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LastReadPositionData(')
          ..write('id: $id, ')
          ..write('surahId: $surahId, ')
          ..write('ayahId: $ayahId, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, surahId, ayahId, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LastReadPositionData &&
          other.id == this.id &&
          other.surahId == this.surahId &&
          other.ayahId == this.ayahId &&
          other.updatedAt == this.updatedAt);
}

class LastReadPositionCompanion extends UpdateCompanion<LastReadPositionData> {
  final Value<int> id;
  final Value<int> surahId;
  final Value<int> ayahId;
  final Value<DateTime> updatedAt;
  const LastReadPositionCompanion({
    this.id = const Value.absent(),
    this.surahId = const Value.absent(),
    this.ayahId = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  LastReadPositionCompanion.insert({
    this.id = const Value.absent(),
    required int surahId,
    required int ayahId,
    required DateTime updatedAt,
  }) : surahId = Value(surahId),
       ayahId = Value(ayahId),
       updatedAt = Value(updatedAt);
  static Insertable<LastReadPositionData> custom({
    Expression<int>? id,
    Expression<int>? surahId,
    Expression<int>? ayahId,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (surahId != null) 'surah_id': surahId,
      if (ayahId != null) 'ayah_id': ayahId,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  LastReadPositionCompanion copyWith({
    Value<int>? id,
    Value<int>? surahId,
    Value<int>? ayahId,
    Value<DateTime>? updatedAt,
  }) {
    return LastReadPositionCompanion(
      id: id ?? this.id,
      surahId: surahId ?? this.surahId,
      ayahId: ayahId ?? this.ayahId,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (surahId.present) {
      map['surah_id'] = Variable<int>(surahId.value);
    }
    if (ayahId.present) {
      map['ayah_id'] = Variable<int>(ayahId.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LastReadPositionCompanion(')
          ..write('id: $id, ')
          ..write('surahId: $surahId, ')
          ..write('ayahId: $ayahId, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $BookmarksTable extends Bookmarks
    with TableInfo<$BookmarksTable, BookmarkData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _ayahIdMeta = const VerificationMeta('ayahId');
  @override
  late final GeneratedColumn<int> ayahId = GeneratedColumn<int>(
    'ayah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ayahs (id)',
    ),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    ayahId,
    note,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarks';
  @override
  VerificationContext validateIntegrity(
    Insertable<BookmarkData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('ayah_id')) {
      context.handle(
        _ayahIdMeta,
        ayahId.isAcceptableOrUnknown(data['ayah_id']!, _ayahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahIdMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BookmarkData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookmarkData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      ayahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayah_id'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $BookmarksTable createAlias(String alias) {
    return $BookmarksTable(attachedDatabase, alias);
  }
}

class BookmarkData extends DataClass implements Insertable<BookmarkData> {
  final int id;
  final int ayahId;
  final String? note;
  final DateTime createdAt;
  final DateTime updatedAt;
  const BookmarkData({
    required this.id,
    required this.ayahId,
    this.note,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['ayah_id'] = Variable<int>(ayahId);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  BookmarksCompanion toCompanion(bool nullToAbsent) {
    return BookmarksCompanion(
      id: Value(id),
      ayahId: Value(ayahId),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory BookmarkData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookmarkData(
      id: serializer.fromJson<int>(json['id']),
      ayahId: serializer.fromJson<int>(json['ayahId']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ayahId': serializer.toJson<int>(ayahId),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  BookmarkData copyWith({
    int? id,
    int? ayahId,
    Value<String?> note = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => BookmarkData(
    id: id ?? this.id,
    ayahId: ayahId ?? this.ayahId,
    note: note.present ? note.value : this.note,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  BookmarkData copyWithCompanion(BookmarksCompanion data) {
    return BookmarkData(
      id: data.id.present ? data.id.value : this.id,
      ayahId: data.ayahId.present ? data.ayahId.value : this.ayahId,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BookmarkData(')
          ..write('id: $id, ')
          ..write('ayahId: $ayahId, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ayahId, note, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookmarkData &&
          other.id == this.id &&
          other.ayahId == this.ayahId &&
          other.note == this.note &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class BookmarksCompanion extends UpdateCompanion<BookmarkData> {
  final Value<int> id;
  final Value<int> ayahId;
  final Value<String?> note;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const BookmarksCompanion({
    this.id = const Value.absent(),
    this.ayahId = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  BookmarksCompanion.insert({
    this.id = const Value.absent(),
    required int ayahId,
    this.note = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : ayahId = Value(ayahId),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<BookmarkData> custom({
    Expression<int>? id,
    Expression<int>? ayahId,
    Expression<String>? note,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ayahId != null) 'ayah_id': ayahId,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  BookmarksCompanion copyWith({
    Value<int>? id,
    Value<int>? ayahId,
    Value<String?>? note,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
  }) {
    return BookmarksCompanion(
      id: id ?? this.id,
      ayahId: ayahId ?? this.ayahId,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ayahId.present) {
      map['ayah_id'] = Variable<int>(ayahId.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarksCompanion(')
          ..write('id: $id, ')
          ..write('ayahId: $ayahId, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $FavoriteRecitersTable extends FavoriteReciters
    with TableInfo<$FavoriteRecitersTable, FavoriteReciterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteRecitersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _reciterIdMeta = const VerificationMeta(
    'reciterId',
  );
  @override
  late final GeneratedColumn<int> reciterId = GeneratedColumn<int>(
    'reciter_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES reciters (id)',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, reciterId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_reciters';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoriteReciterData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('reciter_id')) {
      context.handle(
        _reciterIdMeta,
        reciterId.isAcceptableOrUnknown(data['reciter_id']!, _reciterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_reciterIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteReciterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteReciterData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      reciterId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reciter_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FavoriteRecitersTable createAlias(String alias) {
    return $FavoriteRecitersTable(attachedDatabase, alias);
  }
}

class FavoriteReciterData extends DataClass
    implements Insertable<FavoriteReciterData> {
  final int id;
  final int reciterId;
  final DateTime createdAt;
  const FavoriteReciterData({
    required this.id,
    required this.reciterId,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['reciter_id'] = Variable<int>(reciterId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FavoriteRecitersCompanion toCompanion(bool nullToAbsent) {
    return FavoriteRecitersCompanion(
      id: Value(id),
      reciterId: Value(reciterId),
      createdAt: Value(createdAt),
    );
  }

  factory FavoriteReciterData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteReciterData(
      id: serializer.fromJson<int>(json['id']),
      reciterId: serializer.fromJson<int>(json['reciterId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'reciterId': serializer.toJson<int>(reciterId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FavoriteReciterData copyWith({
    int? id,
    int? reciterId,
    DateTime? createdAt,
  }) => FavoriteReciterData(
    id: id ?? this.id,
    reciterId: reciterId ?? this.reciterId,
    createdAt: createdAt ?? this.createdAt,
  );
  FavoriteReciterData copyWithCompanion(FavoriteRecitersCompanion data) {
    return FavoriteReciterData(
      id: data.id.present ? data.id.value : this.id,
      reciterId: data.reciterId.present ? data.reciterId.value : this.reciterId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteReciterData(')
          ..write('id: $id, ')
          ..write('reciterId: $reciterId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, reciterId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteReciterData &&
          other.id == this.id &&
          other.reciterId == this.reciterId &&
          other.createdAt == this.createdAt);
}

class FavoriteRecitersCompanion extends UpdateCompanion<FavoriteReciterData> {
  final Value<int> id;
  final Value<int> reciterId;
  final Value<DateTime> createdAt;
  const FavoriteRecitersCompanion({
    this.id = const Value.absent(),
    this.reciterId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FavoriteRecitersCompanion.insert({
    this.id = const Value.absent(),
    required int reciterId,
    required DateTime createdAt,
  }) : reciterId = Value(reciterId),
       createdAt = Value(createdAt);
  static Insertable<FavoriteReciterData> custom({
    Expression<int>? id,
    Expression<int>? reciterId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (reciterId != null) 'reciter_id': reciterId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FavoriteRecitersCompanion copyWith({
    Value<int>? id,
    Value<int>? reciterId,
    Value<DateTime>? createdAt,
  }) {
    return FavoriteRecitersCompanion(
      id: id ?? this.id,
      reciterId: reciterId ?? this.reciterId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (reciterId.present) {
      map['reciter_id'] = Variable<int>(reciterId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteRecitersCompanion(')
          ..write('id: $id, ')
          ..write('reciterId: $reciterId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ReadingGoalsTable extends ReadingGoals
    with TableInfo<$ReadingGoalsTable, ReadingGoalData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReadingGoalsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _goalTypeMeta = const VerificationMeta(
    'goalType',
  );
  @override
  late final GeneratedColumn<String> goalType = GeneratedColumn<String>(
    'goal_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetValueMeta = const VerificationMeta(
    'targetValue',
  );
  @override
  late final GeneratedColumn<int> targetValue = GeneratedColumn<int>(
    'target_value',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool> active = GeneratedColumn<bool>(
    'active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    goalType,
    targetValue,
    active,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reading_goals';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReadingGoalData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('goal_type')) {
      context.handle(
        _goalTypeMeta,
        goalType.isAcceptableOrUnknown(data['goal_type']!, _goalTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_goalTypeMeta);
    }
    if (data.containsKey('target_value')) {
      context.handle(
        _targetValueMeta,
        targetValue.isAcceptableOrUnknown(
          data['target_value']!,
          _targetValueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_targetValueMeta);
    }
    if (data.containsKey('active')) {
      context.handle(
        _activeMeta,
        active.isAcceptableOrUnknown(data['active']!, _activeMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReadingGoalData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReadingGoalData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      goalType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}goal_type'],
      )!,
      targetValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}target_value'],
      )!,
      active: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $ReadingGoalsTable createAlias(String alias) {
    return $ReadingGoalsTable(attachedDatabase, alias);
  }
}

class ReadingGoalData extends DataClass implements Insertable<ReadingGoalData> {
  final int id;
  final String goalType;
  final int targetValue;
  final bool active;
  final DateTime createdAt;
  const ReadingGoalData({
    required this.id,
    required this.goalType,
    required this.targetValue,
    required this.active,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['goal_type'] = Variable<String>(goalType);
    map['target_value'] = Variable<int>(targetValue);
    map['active'] = Variable<bool>(active);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ReadingGoalsCompanion toCompanion(bool nullToAbsent) {
    return ReadingGoalsCompanion(
      id: Value(id),
      goalType: Value(goalType),
      targetValue: Value(targetValue),
      active: Value(active),
      createdAt: Value(createdAt),
    );
  }

  factory ReadingGoalData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReadingGoalData(
      id: serializer.fromJson<int>(json['id']),
      goalType: serializer.fromJson<String>(json['goalType']),
      targetValue: serializer.fromJson<int>(json['targetValue']),
      active: serializer.fromJson<bool>(json['active']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'goalType': serializer.toJson<String>(goalType),
      'targetValue': serializer.toJson<int>(targetValue),
      'active': serializer.toJson<bool>(active),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ReadingGoalData copyWith({
    int? id,
    String? goalType,
    int? targetValue,
    bool? active,
    DateTime? createdAt,
  }) => ReadingGoalData(
    id: id ?? this.id,
    goalType: goalType ?? this.goalType,
    targetValue: targetValue ?? this.targetValue,
    active: active ?? this.active,
    createdAt: createdAt ?? this.createdAt,
  );
  ReadingGoalData copyWithCompanion(ReadingGoalsCompanion data) {
    return ReadingGoalData(
      id: data.id.present ? data.id.value : this.id,
      goalType: data.goalType.present ? data.goalType.value : this.goalType,
      targetValue: data.targetValue.present
          ? data.targetValue.value
          : this.targetValue,
      active: data.active.present ? data.active.value : this.active,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReadingGoalData(')
          ..write('id: $id, ')
          ..write('goalType: $goalType, ')
          ..write('targetValue: $targetValue, ')
          ..write('active: $active, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, goalType, targetValue, active, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReadingGoalData &&
          other.id == this.id &&
          other.goalType == this.goalType &&
          other.targetValue == this.targetValue &&
          other.active == this.active &&
          other.createdAt == this.createdAt);
}

class ReadingGoalsCompanion extends UpdateCompanion<ReadingGoalData> {
  final Value<int> id;
  final Value<String> goalType;
  final Value<int> targetValue;
  final Value<bool> active;
  final Value<DateTime> createdAt;
  const ReadingGoalsCompanion({
    this.id = const Value.absent(),
    this.goalType = const Value.absent(),
    this.targetValue = const Value.absent(),
    this.active = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ReadingGoalsCompanion.insert({
    this.id = const Value.absent(),
    required String goalType,
    required int targetValue,
    this.active = const Value.absent(),
    required DateTime createdAt,
  }) : goalType = Value(goalType),
       targetValue = Value(targetValue),
       createdAt = Value(createdAt);
  static Insertable<ReadingGoalData> custom({
    Expression<int>? id,
    Expression<String>? goalType,
    Expression<int>? targetValue,
    Expression<bool>? active,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (goalType != null) 'goal_type': goalType,
      if (targetValue != null) 'target_value': targetValue,
      if (active != null) 'active': active,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ReadingGoalsCompanion copyWith({
    Value<int>? id,
    Value<String>? goalType,
    Value<int>? targetValue,
    Value<bool>? active,
    Value<DateTime>? createdAt,
  }) {
    return ReadingGoalsCompanion(
      id: id ?? this.id,
      goalType: goalType ?? this.goalType,
      targetValue: targetValue ?? this.targetValue,
      active: active ?? this.active,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (goalType.present) {
      map['goal_type'] = Variable<String>(goalType.value);
    }
    if (targetValue.present) {
      map['target_value'] = Variable<int>(targetValue.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadingGoalsCompanion(')
          ..write('id: $id, ')
          ..write('goalType: $goalType, ')
          ..write('targetValue: $targetValue, ')
          ..write('active: $active, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $GoalProgressTable extends GoalProgress
    with TableInfo<$GoalProgressTable, GoalProgressData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalProgressTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _goalIdMeta = const VerificationMeta('goalId');
  @override
  late final GeneratedColumn<int> goalId = GeneratedColumn<int>(
    'goal_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES reading_goals (id)',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currentValueMeta = const VerificationMeta(
    'currentValue',
  );
  @override
  late final GeneratedColumn<int> currentValue = GeneratedColumn<int>(
    'current_value',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _completedMeta = const VerificationMeta(
    'completed',
  );
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
    'completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    goalId,
    date,
    currentValue,
    completed,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goal_progress';
  @override
  VerificationContext validateIntegrity(
    Insertable<GoalProgressData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('goal_id')) {
      context.handle(
        _goalIdMeta,
        goalId.isAcceptableOrUnknown(data['goal_id']!, _goalIdMeta),
      );
    } else if (isInserting) {
      context.missing(_goalIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('current_value')) {
      context.handle(
        _currentValueMeta,
        currentValue.isAcceptableOrUnknown(
          data['current_value']!,
          _currentValueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_currentValueMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(
        _completedMeta,
        completed.isAcceptableOrUnknown(data['completed']!, _completedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GoalProgressData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GoalProgressData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      goalId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}goal_id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      )!,
      currentValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}current_value'],
      )!,
      completed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}completed'],
      )!,
    );
  }

  @override
  $GoalProgressTable createAlias(String alias) {
    return $GoalProgressTable(attachedDatabase, alias);
  }
}

class GoalProgressData extends DataClass
    implements Insertable<GoalProgressData> {
  final int id;
  final int goalId;
  final String date;
  final int currentValue;
  final bool completed;
  const GoalProgressData({
    required this.id,
    required this.goalId,
    required this.date,
    required this.currentValue,
    required this.completed,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['goal_id'] = Variable<int>(goalId);
    map['date'] = Variable<String>(date);
    map['current_value'] = Variable<int>(currentValue);
    map['completed'] = Variable<bool>(completed);
    return map;
  }

  GoalProgressCompanion toCompanion(bool nullToAbsent) {
    return GoalProgressCompanion(
      id: Value(id),
      goalId: Value(goalId),
      date: Value(date),
      currentValue: Value(currentValue),
      completed: Value(completed),
    );
  }

  factory GoalProgressData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GoalProgressData(
      id: serializer.fromJson<int>(json['id']),
      goalId: serializer.fromJson<int>(json['goalId']),
      date: serializer.fromJson<String>(json['date']),
      currentValue: serializer.fromJson<int>(json['currentValue']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'goalId': serializer.toJson<int>(goalId),
      'date': serializer.toJson<String>(date),
      'currentValue': serializer.toJson<int>(currentValue),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  GoalProgressData copyWith({
    int? id,
    int? goalId,
    String? date,
    int? currentValue,
    bool? completed,
  }) => GoalProgressData(
    id: id ?? this.id,
    goalId: goalId ?? this.goalId,
    date: date ?? this.date,
    currentValue: currentValue ?? this.currentValue,
    completed: completed ?? this.completed,
  );
  GoalProgressData copyWithCompanion(GoalProgressCompanion data) {
    return GoalProgressData(
      id: data.id.present ? data.id.value : this.id,
      goalId: data.goalId.present ? data.goalId.value : this.goalId,
      date: data.date.present ? data.date.value : this.date,
      currentValue: data.currentValue.present
          ? data.currentValue.value
          : this.currentValue,
      completed: data.completed.present ? data.completed.value : this.completed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GoalProgressData(')
          ..write('id: $id, ')
          ..write('goalId: $goalId, ')
          ..write('date: $date, ')
          ..write('currentValue: $currentValue, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, goalId, date, currentValue, completed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GoalProgressData &&
          other.id == this.id &&
          other.goalId == this.goalId &&
          other.date == this.date &&
          other.currentValue == this.currentValue &&
          other.completed == this.completed);
}

class GoalProgressCompanion extends UpdateCompanion<GoalProgressData> {
  final Value<int> id;
  final Value<int> goalId;
  final Value<String> date;
  final Value<int> currentValue;
  final Value<bool> completed;
  const GoalProgressCompanion({
    this.id = const Value.absent(),
    this.goalId = const Value.absent(),
    this.date = const Value.absent(),
    this.currentValue = const Value.absent(),
    this.completed = const Value.absent(),
  });
  GoalProgressCompanion.insert({
    this.id = const Value.absent(),
    required int goalId,
    required String date,
    required int currentValue,
    this.completed = const Value.absent(),
  }) : goalId = Value(goalId),
       date = Value(date),
       currentValue = Value(currentValue);
  static Insertable<GoalProgressData> custom({
    Expression<int>? id,
    Expression<int>? goalId,
    Expression<String>? date,
    Expression<int>? currentValue,
    Expression<bool>? completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (goalId != null) 'goal_id': goalId,
      if (date != null) 'date': date,
      if (currentValue != null) 'current_value': currentValue,
      if (completed != null) 'completed': completed,
    });
  }

  GoalProgressCompanion copyWith({
    Value<int>? id,
    Value<int>? goalId,
    Value<String>? date,
    Value<int>? currentValue,
    Value<bool>? completed,
  }) {
    return GoalProgressCompanion(
      id: id ?? this.id,
      goalId: goalId ?? this.goalId,
      date: date ?? this.date,
      currentValue: currentValue ?? this.currentValue,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (goalId.present) {
      map['goal_id'] = Variable<int>(goalId.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (currentValue.present) {
      map['current_value'] = Variable<int>(currentValue.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalProgressCompanion(')
          ..write('id: $id, ')
          ..write('goalId: $goalId, ')
          ..write('date: $date, ')
          ..write('currentValue: $currentValue, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

class $HifzPlansTable extends HifzPlans
    with TableInfo<$HifzPlansTable, HifzPlanData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HifzPlansTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<String> level = GeneratedColumn<String>(
    'level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool> active = GeneratedColumn<bool>(
    'active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, level, active, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hifz_plans';
  @override
  VerificationContext validateIntegrity(
    Insertable<HifzPlanData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
        _levelMeta,
        level.isAcceptableOrUnknown(data['level']!, _levelMeta),
      );
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('active')) {
      context.handle(
        _activeMeta,
        active.isAcceptableOrUnknown(data['active']!, _activeMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HifzPlanData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HifzPlanData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      level: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}level'],
      )!,
      active: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $HifzPlansTable createAlias(String alias) {
    return $HifzPlansTable(attachedDatabase, alias);
  }
}

class HifzPlanData extends DataClass implements Insertable<HifzPlanData> {
  final int id;
  final String name;
  final String level;
  final bool active;
  final DateTime createdAt;
  const HifzPlanData({
    required this.id,
    required this.name,
    required this.level,
    required this.active,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['level'] = Variable<String>(level);
    map['active'] = Variable<bool>(active);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  HifzPlansCompanion toCompanion(bool nullToAbsent) {
    return HifzPlansCompanion(
      id: Value(id),
      name: Value(name),
      level: Value(level),
      active: Value(active),
      createdAt: Value(createdAt),
    );
  }

  factory HifzPlanData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HifzPlanData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      level: serializer.fromJson<String>(json['level']),
      active: serializer.fromJson<bool>(json['active']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'level': serializer.toJson<String>(level),
      'active': serializer.toJson<bool>(active),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  HifzPlanData copyWith({
    int? id,
    String? name,
    String? level,
    bool? active,
    DateTime? createdAt,
  }) => HifzPlanData(
    id: id ?? this.id,
    name: name ?? this.name,
    level: level ?? this.level,
    active: active ?? this.active,
    createdAt: createdAt ?? this.createdAt,
  );
  HifzPlanData copyWithCompanion(HifzPlansCompanion data) {
    return HifzPlanData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      level: data.level.present ? data.level.value : this.level,
      active: data.active.present ? data.active.value : this.active,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HifzPlanData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('level: $level, ')
          ..write('active: $active, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, level, active, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HifzPlanData &&
          other.id == this.id &&
          other.name == this.name &&
          other.level == this.level &&
          other.active == this.active &&
          other.createdAt == this.createdAt);
}

class HifzPlansCompanion extends UpdateCompanion<HifzPlanData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> level;
  final Value<bool> active;
  final Value<DateTime> createdAt;
  const HifzPlansCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.level = const Value.absent(),
    this.active = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  HifzPlansCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String level,
    this.active = const Value.absent(),
    required DateTime createdAt,
  }) : name = Value(name),
       level = Value(level),
       createdAt = Value(createdAt);
  static Insertable<HifzPlanData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? level,
    Expression<bool>? active,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (level != null) 'level': level,
      if (active != null) 'active': active,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  HifzPlansCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? level,
    Value<bool>? active,
    Value<DateTime>? createdAt,
  }) {
    return HifzPlansCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      active: active ?? this.active,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (level.present) {
      map['level'] = Variable<String>(level.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HifzPlansCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('level: $level, ')
          ..write('active: $active, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $HifzItemsTable extends HifzItems
    with TableInfo<$HifzItemsTable, HifzItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HifzItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _planIdMeta = const VerificationMeta('planId');
  @override
  late final GeneratedColumn<int> planId = GeneratedColumn<int>(
    'plan_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES hifz_plans (id)',
    ),
  );
  static const VerificationMeta _ayahIdMeta = const VerificationMeta('ayahId');
  @override
  late final GeneratedColumn<int> ayahId = GeneratedColumn<int>(
    'ayah_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ayahs (id)',
    ),
  );
  static const VerificationMeta _orderNumberMeta = const VerificationMeta(
    'orderNumber',
  );
  @override
  late final GeneratedColumn<int> orderNumber = GeneratedColumn<int>(
    'order_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    planId,
    ayahId,
    orderNumber,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hifz_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<HifzItemData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('plan_id')) {
      context.handle(
        _planIdMeta,
        planId.isAcceptableOrUnknown(data['plan_id']!, _planIdMeta),
      );
    } else if (isInserting) {
      context.missing(_planIdMeta);
    }
    if (data.containsKey('ayah_id')) {
      context.handle(
        _ayahIdMeta,
        ayahId.isAcceptableOrUnknown(data['ayah_id']!, _ayahIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ayahIdMeta);
    }
    if (data.containsKey('order_number')) {
      context.handle(
        _orderNumberMeta,
        orderNumber.isAcceptableOrUnknown(
          data['order_number']!,
          _orderNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_orderNumberMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HifzItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HifzItemData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      planId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}plan_id'],
      )!,
      ayahId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ayah_id'],
      )!,
      orderNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}order_number'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $HifzItemsTable createAlias(String alias) {
    return $HifzItemsTable(attachedDatabase, alias);
  }
}

class HifzItemData extends DataClass implements Insertable<HifzItemData> {
  final int id;
  final int planId;
  final int ayahId;
  final int orderNumber;
  final String status;
  const HifzItemData({
    required this.id,
    required this.planId,
    required this.ayahId,
    required this.orderNumber,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['plan_id'] = Variable<int>(planId);
    map['ayah_id'] = Variable<int>(ayahId);
    map['order_number'] = Variable<int>(orderNumber);
    map['status'] = Variable<String>(status);
    return map;
  }

  HifzItemsCompanion toCompanion(bool nullToAbsent) {
    return HifzItemsCompanion(
      id: Value(id),
      planId: Value(planId),
      ayahId: Value(ayahId),
      orderNumber: Value(orderNumber),
      status: Value(status),
    );
  }

  factory HifzItemData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HifzItemData(
      id: serializer.fromJson<int>(json['id']),
      planId: serializer.fromJson<int>(json['planId']),
      ayahId: serializer.fromJson<int>(json['ayahId']),
      orderNumber: serializer.fromJson<int>(json['orderNumber']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'planId': serializer.toJson<int>(planId),
      'ayahId': serializer.toJson<int>(ayahId),
      'orderNumber': serializer.toJson<int>(orderNumber),
      'status': serializer.toJson<String>(status),
    };
  }

  HifzItemData copyWith({
    int? id,
    int? planId,
    int? ayahId,
    int? orderNumber,
    String? status,
  }) => HifzItemData(
    id: id ?? this.id,
    planId: planId ?? this.planId,
    ayahId: ayahId ?? this.ayahId,
    orderNumber: orderNumber ?? this.orderNumber,
    status: status ?? this.status,
  );
  HifzItemData copyWithCompanion(HifzItemsCompanion data) {
    return HifzItemData(
      id: data.id.present ? data.id.value : this.id,
      planId: data.planId.present ? data.planId.value : this.planId,
      ayahId: data.ayahId.present ? data.ayahId.value : this.ayahId,
      orderNumber: data.orderNumber.present
          ? data.orderNumber.value
          : this.orderNumber,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HifzItemData(')
          ..write('id: $id, ')
          ..write('planId: $planId, ')
          ..write('ayahId: $ayahId, ')
          ..write('orderNumber: $orderNumber, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, planId, ayahId, orderNumber, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HifzItemData &&
          other.id == this.id &&
          other.planId == this.planId &&
          other.ayahId == this.ayahId &&
          other.orderNumber == this.orderNumber &&
          other.status == this.status);
}

class HifzItemsCompanion extends UpdateCompanion<HifzItemData> {
  final Value<int> id;
  final Value<int> planId;
  final Value<int> ayahId;
  final Value<int> orderNumber;
  final Value<String> status;
  const HifzItemsCompanion({
    this.id = const Value.absent(),
    this.planId = const Value.absent(),
    this.ayahId = const Value.absent(),
    this.orderNumber = const Value.absent(),
    this.status = const Value.absent(),
  });
  HifzItemsCompanion.insert({
    this.id = const Value.absent(),
    required int planId,
    required int ayahId,
    required int orderNumber,
    required String status,
  }) : planId = Value(planId),
       ayahId = Value(ayahId),
       orderNumber = Value(orderNumber),
       status = Value(status);
  static Insertable<HifzItemData> custom({
    Expression<int>? id,
    Expression<int>? planId,
    Expression<int>? ayahId,
    Expression<int>? orderNumber,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (planId != null) 'plan_id': planId,
      if (ayahId != null) 'ayah_id': ayahId,
      if (orderNumber != null) 'order_number': orderNumber,
      if (status != null) 'status': status,
    });
  }

  HifzItemsCompanion copyWith({
    Value<int>? id,
    Value<int>? planId,
    Value<int>? ayahId,
    Value<int>? orderNumber,
    Value<String>? status,
  }) {
    return HifzItemsCompanion(
      id: id ?? this.id,
      planId: planId ?? this.planId,
      ayahId: ayahId ?? this.ayahId,
      orderNumber: orderNumber ?? this.orderNumber,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (planId.present) {
      map['plan_id'] = Variable<int>(planId.value);
    }
    if (ayahId.present) {
      map['ayah_id'] = Variable<int>(ayahId.value);
    }
    if (orderNumber.present) {
      map['order_number'] = Variable<int>(orderNumber.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HifzItemsCompanion(')
          ..write('id: $id, ')
          ..write('planId: $planId, ')
          ..write('ayahId: $ayahId, ')
          ..write('orderNumber: $orderNumber, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $ReviewSessionsTable extends ReviewSessions
    with TableInfo<$ReviewSessionsTable, ReviewSessionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReviewSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _startedAtMeta = const VerificationMeta(
    'startedAt',
  );
  @override
  late final GeneratedColumn<DateTime> startedAt = GeneratedColumn<DateTime>(
    'started_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endedAtMeta = const VerificationMeta(
    'endedAt',
  );
  @override
  late final GeneratedColumn<DateTime> endedAt = GeneratedColumn<DateTime>(
    'ended_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _itemsCountMeta = const VerificationMeta(
    'itemsCount',
  );
  @override
  late final GeneratedColumn<int> itemsCount = GeneratedColumn<int>(
    'items_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, startedAt, endedAt, itemsCount];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'review_sessions';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReviewSessionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('started_at')) {
      context.handle(
        _startedAtMeta,
        startedAt.isAcceptableOrUnknown(data['started_at']!, _startedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_startedAtMeta);
    }
    if (data.containsKey('ended_at')) {
      context.handle(
        _endedAtMeta,
        endedAt.isAcceptableOrUnknown(data['ended_at']!, _endedAtMeta),
      );
    }
    if (data.containsKey('items_count')) {
      context.handle(
        _itemsCountMeta,
        itemsCount.isAcceptableOrUnknown(data['items_count']!, _itemsCountMeta),
      );
    } else if (isInserting) {
      context.missing(_itemsCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReviewSessionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReviewSessionData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      startedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}started_at'],
      )!,
      endedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ended_at'],
      ),
      itemsCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}items_count'],
      )!,
    );
  }

  @override
  $ReviewSessionsTable createAlias(String alias) {
    return $ReviewSessionsTable(attachedDatabase, alias);
  }
}

class ReviewSessionData extends DataClass
    implements Insertable<ReviewSessionData> {
  final int id;
  final DateTime startedAt;
  final DateTime? endedAt;
  final int itemsCount;
  const ReviewSessionData({
    required this.id,
    required this.startedAt,
    this.endedAt,
    required this.itemsCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['started_at'] = Variable<DateTime>(startedAt);
    if (!nullToAbsent || endedAt != null) {
      map['ended_at'] = Variable<DateTime>(endedAt);
    }
    map['items_count'] = Variable<int>(itemsCount);
    return map;
  }

  ReviewSessionsCompanion toCompanion(bool nullToAbsent) {
    return ReviewSessionsCompanion(
      id: Value(id),
      startedAt: Value(startedAt),
      endedAt: endedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(endedAt),
      itemsCount: Value(itemsCount),
    );
  }

  factory ReviewSessionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReviewSessionData(
      id: serializer.fromJson<int>(json['id']),
      startedAt: serializer.fromJson<DateTime>(json['startedAt']),
      endedAt: serializer.fromJson<DateTime?>(json['endedAt']),
      itemsCount: serializer.fromJson<int>(json['itemsCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'startedAt': serializer.toJson<DateTime>(startedAt),
      'endedAt': serializer.toJson<DateTime?>(endedAt),
      'itemsCount': serializer.toJson<int>(itemsCount),
    };
  }

  ReviewSessionData copyWith({
    int? id,
    DateTime? startedAt,
    Value<DateTime?> endedAt = const Value.absent(),
    int? itemsCount,
  }) => ReviewSessionData(
    id: id ?? this.id,
    startedAt: startedAt ?? this.startedAt,
    endedAt: endedAt.present ? endedAt.value : this.endedAt,
    itemsCount: itemsCount ?? this.itemsCount,
  );
  ReviewSessionData copyWithCompanion(ReviewSessionsCompanion data) {
    return ReviewSessionData(
      id: data.id.present ? data.id.value : this.id,
      startedAt: data.startedAt.present ? data.startedAt.value : this.startedAt,
      endedAt: data.endedAt.present ? data.endedAt.value : this.endedAt,
      itemsCount: data.itemsCount.present
          ? data.itemsCount.value
          : this.itemsCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReviewSessionData(')
          ..write('id: $id, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('itemsCount: $itemsCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startedAt, endedAt, itemsCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReviewSessionData &&
          other.id == this.id &&
          other.startedAt == this.startedAt &&
          other.endedAt == this.endedAt &&
          other.itemsCount == this.itemsCount);
}

class ReviewSessionsCompanion extends UpdateCompanion<ReviewSessionData> {
  final Value<int> id;
  final Value<DateTime> startedAt;
  final Value<DateTime?> endedAt;
  final Value<int> itemsCount;
  const ReviewSessionsCompanion({
    this.id = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.endedAt = const Value.absent(),
    this.itemsCount = const Value.absent(),
  });
  ReviewSessionsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startedAt,
    this.endedAt = const Value.absent(),
    required int itemsCount,
  }) : startedAt = Value(startedAt),
       itemsCount = Value(itemsCount);
  static Insertable<ReviewSessionData> custom({
    Expression<int>? id,
    Expression<DateTime>? startedAt,
    Expression<DateTime>? endedAt,
    Expression<int>? itemsCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startedAt != null) 'started_at': startedAt,
      if (endedAt != null) 'ended_at': endedAt,
      if (itemsCount != null) 'items_count': itemsCount,
    });
  }

  ReviewSessionsCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? startedAt,
    Value<DateTime?>? endedAt,
    Value<int>? itemsCount,
  }) {
    return ReviewSessionsCompanion(
      id: id ?? this.id,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt ?? this.endedAt,
      itemsCount: itemsCount ?? this.itemsCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (startedAt.present) {
      map['started_at'] = Variable<DateTime>(startedAt.value);
    }
    if (endedAt.present) {
      map['ended_at'] = Variable<DateTime>(endedAt.value);
    }
    if (itemsCount.present) {
      map['items_count'] = Variable<int>(itemsCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReviewSessionsCompanion(')
          ..write('id: $id, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('itemsCount: $itemsCount')
          ..write(')'))
        .toString();
  }
}

class $ReviewResultsTable extends ReviewResults
    with TableInfo<$ReviewResultsTable, ReviewResultData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReviewResultsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _sessionIdMeta = const VerificationMeta(
    'sessionId',
  );
  @override
  late final GeneratedColumn<int> sessionId = GeneratedColumn<int>(
    'session_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES review_sessions (id)',
    ),
  );
  static const VerificationMeta _hifzItemIdMeta = const VerificationMeta(
    'hifzItemId',
  );
  @override
  late final GeneratedColumn<int> hifzItemId = GeneratedColumn<int>(
    'hifz_item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES hifz_items (id)',
    ),
  );
  static const VerificationMeta _gradeMeta = const VerificationMeta('grade');
  @override
  late final GeneratedColumn<String> grade = GeneratedColumn<String>(
    'grade',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reviewedAtMeta = const VerificationMeta(
    'reviewedAt',
  );
  @override
  late final GeneratedColumn<DateTime> reviewedAt = GeneratedColumn<DateTime>(
    'reviewed_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nextReviewAtMeta = const VerificationMeta(
    'nextReviewAt',
  );
  @override
  late final GeneratedColumn<DateTime> nextReviewAt = GeneratedColumn<DateTime>(
    'next_review_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    sessionId,
    hifzItemId,
    grade,
    reviewedAt,
    nextReviewAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'review_results';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReviewResultData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('session_id')) {
      context.handle(
        _sessionIdMeta,
        sessionId.isAcceptableOrUnknown(data['session_id']!, _sessionIdMeta),
      );
    } else if (isInserting) {
      context.missing(_sessionIdMeta);
    }
    if (data.containsKey('hifz_item_id')) {
      context.handle(
        _hifzItemIdMeta,
        hifzItemId.isAcceptableOrUnknown(
          data['hifz_item_id']!,
          _hifzItemIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_hifzItemIdMeta);
    }
    if (data.containsKey('grade')) {
      context.handle(
        _gradeMeta,
        grade.isAcceptableOrUnknown(data['grade']!, _gradeMeta),
      );
    } else if (isInserting) {
      context.missing(_gradeMeta);
    }
    if (data.containsKey('reviewed_at')) {
      context.handle(
        _reviewedAtMeta,
        reviewedAt.isAcceptableOrUnknown(data['reviewed_at']!, _reviewedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_reviewedAtMeta);
    }
    if (data.containsKey('next_review_at')) {
      context.handle(
        _nextReviewAtMeta,
        nextReviewAt.isAcceptableOrUnknown(
          data['next_review_at']!,
          _nextReviewAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReviewResultData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReviewResultData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      sessionId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}session_id'],
      )!,
      hifzItemId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hifz_item_id'],
      )!,
      grade: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}grade'],
      )!,
      reviewedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}reviewed_at'],
      )!,
      nextReviewAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}next_review_at'],
      ),
    );
  }

  @override
  $ReviewResultsTable createAlias(String alias) {
    return $ReviewResultsTable(attachedDatabase, alias);
  }
}

class ReviewResultData extends DataClass
    implements Insertable<ReviewResultData> {
  final int id;
  final int sessionId;
  final int hifzItemId;
  final String grade;
  final DateTime reviewedAt;
  final DateTime? nextReviewAt;
  const ReviewResultData({
    required this.id,
    required this.sessionId,
    required this.hifzItemId,
    required this.grade,
    required this.reviewedAt,
    this.nextReviewAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['session_id'] = Variable<int>(sessionId);
    map['hifz_item_id'] = Variable<int>(hifzItemId);
    map['grade'] = Variable<String>(grade);
    map['reviewed_at'] = Variable<DateTime>(reviewedAt);
    if (!nullToAbsent || nextReviewAt != null) {
      map['next_review_at'] = Variable<DateTime>(nextReviewAt);
    }
    return map;
  }

  ReviewResultsCompanion toCompanion(bool nullToAbsent) {
    return ReviewResultsCompanion(
      id: Value(id),
      sessionId: Value(sessionId),
      hifzItemId: Value(hifzItemId),
      grade: Value(grade),
      reviewedAt: Value(reviewedAt),
      nextReviewAt: nextReviewAt == null && nullToAbsent
          ? const Value.absent()
          : Value(nextReviewAt),
    );
  }

  factory ReviewResultData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReviewResultData(
      id: serializer.fromJson<int>(json['id']),
      sessionId: serializer.fromJson<int>(json['sessionId']),
      hifzItemId: serializer.fromJson<int>(json['hifzItemId']),
      grade: serializer.fromJson<String>(json['grade']),
      reviewedAt: serializer.fromJson<DateTime>(json['reviewedAt']),
      nextReviewAt: serializer.fromJson<DateTime?>(json['nextReviewAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sessionId': serializer.toJson<int>(sessionId),
      'hifzItemId': serializer.toJson<int>(hifzItemId),
      'grade': serializer.toJson<String>(grade),
      'reviewedAt': serializer.toJson<DateTime>(reviewedAt),
      'nextReviewAt': serializer.toJson<DateTime?>(nextReviewAt),
    };
  }

  ReviewResultData copyWith({
    int? id,
    int? sessionId,
    int? hifzItemId,
    String? grade,
    DateTime? reviewedAt,
    Value<DateTime?> nextReviewAt = const Value.absent(),
  }) => ReviewResultData(
    id: id ?? this.id,
    sessionId: sessionId ?? this.sessionId,
    hifzItemId: hifzItemId ?? this.hifzItemId,
    grade: grade ?? this.grade,
    reviewedAt: reviewedAt ?? this.reviewedAt,
    nextReviewAt: nextReviewAt.present ? nextReviewAt.value : this.nextReviewAt,
  );
  ReviewResultData copyWithCompanion(ReviewResultsCompanion data) {
    return ReviewResultData(
      id: data.id.present ? data.id.value : this.id,
      sessionId: data.sessionId.present ? data.sessionId.value : this.sessionId,
      hifzItemId: data.hifzItemId.present
          ? data.hifzItemId.value
          : this.hifzItemId,
      grade: data.grade.present ? data.grade.value : this.grade,
      reviewedAt: data.reviewedAt.present
          ? data.reviewedAt.value
          : this.reviewedAt,
      nextReviewAt: data.nextReviewAt.present
          ? data.nextReviewAt.value
          : this.nextReviewAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReviewResultData(')
          ..write('id: $id, ')
          ..write('sessionId: $sessionId, ')
          ..write('hifzItemId: $hifzItemId, ')
          ..write('grade: $grade, ')
          ..write('reviewedAt: $reviewedAt, ')
          ..write('nextReviewAt: $nextReviewAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, sessionId, hifzItemId, grade, reviewedAt, nextReviewAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReviewResultData &&
          other.id == this.id &&
          other.sessionId == this.sessionId &&
          other.hifzItemId == this.hifzItemId &&
          other.grade == this.grade &&
          other.reviewedAt == this.reviewedAt &&
          other.nextReviewAt == this.nextReviewAt);
}

class ReviewResultsCompanion extends UpdateCompanion<ReviewResultData> {
  final Value<int> id;
  final Value<int> sessionId;
  final Value<int> hifzItemId;
  final Value<String> grade;
  final Value<DateTime> reviewedAt;
  final Value<DateTime?> nextReviewAt;
  const ReviewResultsCompanion({
    this.id = const Value.absent(),
    this.sessionId = const Value.absent(),
    this.hifzItemId = const Value.absent(),
    this.grade = const Value.absent(),
    this.reviewedAt = const Value.absent(),
    this.nextReviewAt = const Value.absent(),
  });
  ReviewResultsCompanion.insert({
    this.id = const Value.absent(),
    required int sessionId,
    required int hifzItemId,
    required String grade,
    required DateTime reviewedAt,
    this.nextReviewAt = const Value.absent(),
  }) : sessionId = Value(sessionId),
       hifzItemId = Value(hifzItemId),
       grade = Value(grade),
       reviewedAt = Value(reviewedAt);
  static Insertable<ReviewResultData> custom({
    Expression<int>? id,
    Expression<int>? sessionId,
    Expression<int>? hifzItemId,
    Expression<String>? grade,
    Expression<DateTime>? reviewedAt,
    Expression<DateTime>? nextReviewAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sessionId != null) 'session_id': sessionId,
      if (hifzItemId != null) 'hifz_item_id': hifzItemId,
      if (grade != null) 'grade': grade,
      if (reviewedAt != null) 'reviewed_at': reviewedAt,
      if (nextReviewAt != null) 'next_review_at': nextReviewAt,
    });
  }

  ReviewResultsCompanion copyWith({
    Value<int>? id,
    Value<int>? sessionId,
    Value<int>? hifzItemId,
    Value<String>? grade,
    Value<DateTime>? reviewedAt,
    Value<DateTime?>? nextReviewAt,
  }) {
    return ReviewResultsCompanion(
      id: id ?? this.id,
      sessionId: sessionId ?? this.sessionId,
      hifzItemId: hifzItemId ?? this.hifzItemId,
      grade: grade ?? this.grade,
      reviewedAt: reviewedAt ?? this.reviewedAt,
      nextReviewAt: nextReviewAt ?? this.nextReviewAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sessionId.present) {
      map['session_id'] = Variable<int>(sessionId.value);
    }
    if (hifzItemId.present) {
      map['hifz_item_id'] = Variable<int>(hifzItemId.value);
    }
    if (grade.present) {
      map['grade'] = Variable<String>(grade.value);
    }
    if (reviewedAt.present) {
      map['reviewed_at'] = Variable<DateTime>(reviewedAt.value);
    }
    if (nextReviewAt.present) {
      map['next_review_at'] = Variable<DateTime>(nextReviewAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReviewResultsCompanion(')
          ..write('id: $id, ')
          ..write('sessionId: $sessionId, ')
          ..write('hifzItemId: $hifzItemId, ')
          ..write('grade: $grade, ')
          ..write('reviewedAt: $reviewedAt, ')
          ..write('nextReviewAt: $nextReviewAt')
          ..write(')'))
        .toString();
  }
}

class $DownloadTasksTable extends DownloadTasks
    with TableInfo<$DownloadTasksTable, DownloadTaskData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DownloadTasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _packageIdMeta = const VerificationMeta(
    'packageId',
  );
  @override
  late final GeneratedColumn<int> packageId = GeneratedColumn<int>(
    'package_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES content_packs (id)',
    ),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _progressMeta = const VerificationMeta(
    'progress',
  );
  @override
  late final GeneratedColumn<int> progress = GeneratedColumn<int>(
    'progress',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    packageId,
    status,
    progress,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'download_tasks';
  @override
  VerificationContext validateIntegrity(
    Insertable<DownloadTaskData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('package_id')) {
      context.handle(
        _packageIdMeta,
        packageId.isAcceptableOrUnknown(data['package_id']!, _packageIdMeta),
      );
    } else if (isInserting) {
      context.missing(_packageIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('progress')) {
      context.handle(
        _progressMeta,
        progress.isAcceptableOrUnknown(data['progress']!, _progressMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DownloadTaskData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DownloadTaskData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      packageId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}package_id'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      progress: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}progress'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $DownloadTasksTable createAlias(String alias) {
    return $DownloadTasksTable(attachedDatabase, alias);
  }
}

class DownloadTaskData extends DataClass
    implements Insertable<DownloadTaskData> {
  final int id;
  final int packageId;
  final String status;
  final int progress;
  final DateTime createdAt;
  const DownloadTaskData({
    required this.id,
    required this.packageId,
    required this.status,
    required this.progress,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['package_id'] = Variable<int>(packageId);
    map['status'] = Variable<String>(status);
    map['progress'] = Variable<int>(progress);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  DownloadTasksCompanion toCompanion(bool nullToAbsent) {
    return DownloadTasksCompanion(
      id: Value(id),
      packageId: Value(packageId),
      status: Value(status),
      progress: Value(progress),
      createdAt: Value(createdAt),
    );
  }

  factory DownloadTaskData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DownloadTaskData(
      id: serializer.fromJson<int>(json['id']),
      packageId: serializer.fromJson<int>(json['packageId']),
      status: serializer.fromJson<String>(json['status']),
      progress: serializer.fromJson<int>(json['progress']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'packageId': serializer.toJson<int>(packageId),
      'status': serializer.toJson<String>(status),
      'progress': serializer.toJson<int>(progress),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  DownloadTaskData copyWith({
    int? id,
    int? packageId,
    String? status,
    int? progress,
    DateTime? createdAt,
  }) => DownloadTaskData(
    id: id ?? this.id,
    packageId: packageId ?? this.packageId,
    status: status ?? this.status,
    progress: progress ?? this.progress,
    createdAt: createdAt ?? this.createdAt,
  );
  DownloadTaskData copyWithCompanion(DownloadTasksCompanion data) {
    return DownloadTaskData(
      id: data.id.present ? data.id.value : this.id,
      packageId: data.packageId.present ? data.packageId.value : this.packageId,
      status: data.status.present ? data.status.value : this.status,
      progress: data.progress.present ? data.progress.value : this.progress,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DownloadTaskData(')
          ..write('id: $id, ')
          ..write('packageId: $packageId, ')
          ..write('status: $status, ')
          ..write('progress: $progress, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, packageId, status, progress, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DownloadTaskData &&
          other.id == this.id &&
          other.packageId == this.packageId &&
          other.status == this.status &&
          other.progress == this.progress &&
          other.createdAt == this.createdAt);
}

class DownloadTasksCompanion extends UpdateCompanion<DownloadTaskData> {
  final Value<int> id;
  final Value<int> packageId;
  final Value<String> status;
  final Value<int> progress;
  final Value<DateTime> createdAt;
  const DownloadTasksCompanion({
    this.id = const Value.absent(),
    this.packageId = const Value.absent(),
    this.status = const Value.absent(),
    this.progress = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  DownloadTasksCompanion.insert({
    this.id = const Value.absent(),
    required int packageId,
    required String status,
    this.progress = const Value.absent(),
    required DateTime createdAt,
  }) : packageId = Value(packageId),
       status = Value(status),
       createdAt = Value(createdAt);
  static Insertable<DownloadTaskData> custom({
    Expression<int>? id,
    Expression<int>? packageId,
    Expression<String>? status,
    Expression<int>? progress,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (packageId != null) 'package_id': packageId,
      if (status != null) 'status': status,
      if (progress != null) 'progress': progress,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  DownloadTasksCompanion copyWith({
    Value<int>? id,
    Value<int>? packageId,
    Value<String>? status,
    Value<int>? progress,
    Value<DateTime>? createdAt,
  }) {
    return DownloadTasksCompanion(
      id: id ?? this.id,
      packageId: packageId ?? this.packageId,
      status: status ?? this.status,
      progress: progress ?? this.progress,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (packageId.present) {
      map['package_id'] = Variable<int>(packageId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (progress.present) {
      map['progress'] = Variable<int>(progress.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DownloadTasksCompanion(')
          ..write('id: $id, ')
          ..write('packageId: $packageId, ')
          ..write('status: $status, ')
          ..write('progress: $progress, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings
    with TableInfo<$SettingsTable, SettingsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _languageCodeMeta = const VerificationMeta(
    'languageCode',
  );
  @override
  late final GeneratedColumn<String> languageCode = GeneratedColumn<String>(
    'language_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('ru'),
  );
  static const VerificationMeta _themeModeMeta = const VerificationMeta(
    'themeMode',
  );
  @override
  late final GeneratedColumn<String> themeMode = GeneratedColumn<String>(
    'theme_mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('system'),
  );
  static const VerificationMeta _translationKeyMeta = const VerificationMeta(
    'translationKey',
  );
  @override
  late final GeneratedColumn<String> translationKey = GeneratedColumn<String>(
    'translation_key',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _showTranslationMeta = const VerificationMeta(
    'showTranslation',
  );
  @override
  late final GeneratedColumn<bool> showTranslation = GeneratedColumn<bool>(
    'show_translation',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_translation" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _showTransliterationMeta =
      const VerificationMeta('showTransliteration');
  @override
  late final GeneratedColumn<bool> showTransliteration = GeneratedColumn<bool>(
    'show_transliteration',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_transliteration" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _selectedReciterMeta = const VerificationMeta(
    'selectedReciter',
  );
  @override
  late final GeneratedColumn<String> selectedReciter = GeneratedColumn<String>(
    'selected_reciter',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _audioQualityMeta = const VerificationMeta(
    'audioQuality',
  );
  @override
  late final GeneratedColumn<String> audioQuality = GeneratedColumn<String>(
    'audio_quality',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('128'),
  );
  static const VerificationMeta _notificationsEnabledMeta =
      const VerificationMeta('notificationsEnabled');
  @override
  late final GeneratedColumn<bool> notificationsEnabled = GeneratedColumn<bool>(
    'notifications_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("notifications_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    languageCode,
    themeMode,
    translationKey,
    showTranslation,
    showTransliteration,
    selectedReciter,
    audioQuality,
    notificationsEnabled,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingsData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('language_code')) {
      context.handle(
        _languageCodeMeta,
        languageCode.isAcceptableOrUnknown(
          data['language_code']!,
          _languageCodeMeta,
        ),
      );
    }
    if (data.containsKey('theme_mode')) {
      context.handle(
        _themeModeMeta,
        themeMode.isAcceptableOrUnknown(data['theme_mode']!, _themeModeMeta),
      );
    }
    if (data.containsKey('translation_key')) {
      context.handle(
        _translationKeyMeta,
        translationKey.isAcceptableOrUnknown(
          data['translation_key']!,
          _translationKeyMeta,
        ),
      );
    }
    if (data.containsKey('show_translation')) {
      context.handle(
        _showTranslationMeta,
        showTranslation.isAcceptableOrUnknown(
          data['show_translation']!,
          _showTranslationMeta,
        ),
      );
    }
    if (data.containsKey('show_transliteration')) {
      context.handle(
        _showTransliterationMeta,
        showTransliteration.isAcceptableOrUnknown(
          data['show_transliteration']!,
          _showTransliterationMeta,
        ),
      );
    }
    if (data.containsKey('selected_reciter')) {
      context.handle(
        _selectedReciterMeta,
        selectedReciter.isAcceptableOrUnknown(
          data['selected_reciter']!,
          _selectedReciterMeta,
        ),
      );
    }
    if (data.containsKey('audio_quality')) {
      context.handle(
        _audioQualityMeta,
        audioQuality.isAcceptableOrUnknown(
          data['audio_quality']!,
          _audioQualityMeta,
        ),
      );
    }
    if (data.containsKey('notifications_enabled')) {
      context.handle(
        _notificationsEnabledMeta,
        notificationsEnabled.isAcceptableOrUnknown(
          data['notifications_enabled']!,
          _notificationsEnabledMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SettingsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      languageCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language_code'],
      )!,
      themeMode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}theme_mode'],
      )!,
      translationKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translation_key'],
      ),
      showTranslation: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_translation'],
      )!,
      showTransliteration: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_transliteration'],
      )!,
      selectedReciter: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}selected_reciter'],
      ),
      audioQuality: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}audio_quality'],
      )!,
      notificationsEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}notifications_enabled'],
      )!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class SettingsData extends DataClass implements Insertable<SettingsData> {
  final int id;
  final String languageCode;
  final String themeMode;
  final String? translationKey;
  final bool showTranslation;
  final bool showTransliteration;
  final String? selectedReciter;
  final String audioQuality;
  final bool notificationsEnabled;
  const SettingsData({
    required this.id,
    required this.languageCode,
    required this.themeMode,
    this.translationKey,
    required this.showTranslation,
    required this.showTransliteration,
    this.selectedReciter,
    required this.audioQuality,
    required this.notificationsEnabled,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['language_code'] = Variable<String>(languageCode);
    map['theme_mode'] = Variable<String>(themeMode);
    if (!nullToAbsent || translationKey != null) {
      map['translation_key'] = Variable<String>(translationKey);
    }
    map['show_translation'] = Variable<bool>(showTranslation);
    map['show_transliteration'] = Variable<bool>(showTransliteration);
    if (!nullToAbsent || selectedReciter != null) {
      map['selected_reciter'] = Variable<String>(selectedReciter);
    }
    map['audio_quality'] = Variable<String>(audioQuality);
    map['notifications_enabled'] = Variable<bool>(notificationsEnabled);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      id: Value(id),
      languageCode: Value(languageCode),
      themeMode: Value(themeMode),
      translationKey: translationKey == null && nullToAbsent
          ? const Value.absent()
          : Value(translationKey),
      showTranslation: Value(showTranslation),
      showTransliteration: Value(showTransliteration),
      selectedReciter: selectedReciter == null && nullToAbsent
          ? const Value.absent()
          : Value(selectedReciter),
      audioQuality: Value(audioQuality),
      notificationsEnabled: Value(notificationsEnabled),
    );
  }

  factory SettingsData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingsData(
      id: serializer.fromJson<int>(json['id']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
      themeMode: serializer.fromJson<String>(json['themeMode']),
      translationKey: serializer.fromJson<String?>(json['translationKey']),
      showTranslation: serializer.fromJson<bool>(json['showTranslation']),
      showTransliteration: serializer.fromJson<bool>(
        json['showTransliteration'],
      ),
      selectedReciter: serializer.fromJson<String?>(json['selectedReciter']),
      audioQuality: serializer.fromJson<String>(json['audioQuality']),
      notificationsEnabled: serializer.fromJson<bool>(
        json['notificationsEnabled'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'languageCode': serializer.toJson<String>(languageCode),
      'themeMode': serializer.toJson<String>(themeMode),
      'translationKey': serializer.toJson<String?>(translationKey),
      'showTranslation': serializer.toJson<bool>(showTranslation),
      'showTransliteration': serializer.toJson<bool>(showTransliteration),
      'selectedReciter': serializer.toJson<String?>(selectedReciter),
      'audioQuality': serializer.toJson<String>(audioQuality),
      'notificationsEnabled': serializer.toJson<bool>(notificationsEnabled),
    };
  }

  SettingsData copyWith({
    int? id,
    String? languageCode,
    String? themeMode,
    Value<String?> translationKey = const Value.absent(),
    bool? showTranslation,
    bool? showTransliteration,
    Value<String?> selectedReciter = const Value.absent(),
    String? audioQuality,
    bool? notificationsEnabled,
  }) => SettingsData(
    id: id ?? this.id,
    languageCode: languageCode ?? this.languageCode,
    themeMode: themeMode ?? this.themeMode,
    translationKey: translationKey.present
        ? translationKey.value
        : this.translationKey,
    showTranslation: showTranslation ?? this.showTranslation,
    showTransliteration: showTransliteration ?? this.showTransliteration,
    selectedReciter: selectedReciter.present
        ? selectedReciter.value
        : this.selectedReciter,
    audioQuality: audioQuality ?? this.audioQuality,
    notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
  );
  SettingsData copyWithCompanion(SettingsCompanion data) {
    return SettingsData(
      id: data.id.present ? data.id.value : this.id,
      languageCode: data.languageCode.present
          ? data.languageCode.value
          : this.languageCode,
      themeMode: data.themeMode.present ? data.themeMode.value : this.themeMode,
      translationKey: data.translationKey.present
          ? data.translationKey.value
          : this.translationKey,
      showTranslation: data.showTranslation.present
          ? data.showTranslation.value
          : this.showTranslation,
      showTransliteration: data.showTransliteration.present
          ? data.showTransliteration.value
          : this.showTransliteration,
      selectedReciter: data.selectedReciter.present
          ? data.selectedReciter.value
          : this.selectedReciter,
      audioQuality: data.audioQuality.present
          ? data.audioQuality.value
          : this.audioQuality,
      notificationsEnabled: data.notificationsEnabled.present
          ? data.notificationsEnabled.value
          : this.notificationsEnabled,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingsData(')
          ..write('id: $id, ')
          ..write('languageCode: $languageCode, ')
          ..write('themeMode: $themeMode, ')
          ..write('translationKey: $translationKey, ')
          ..write('showTranslation: $showTranslation, ')
          ..write('showTransliteration: $showTransliteration, ')
          ..write('selectedReciter: $selectedReciter, ')
          ..write('audioQuality: $audioQuality, ')
          ..write('notificationsEnabled: $notificationsEnabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    languageCode,
    themeMode,
    translationKey,
    showTranslation,
    showTransliteration,
    selectedReciter,
    audioQuality,
    notificationsEnabled,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingsData &&
          other.id == this.id &&
          other.languageCode == this.languageCode &&
          other.themeMode == this.themeMode &&
          other.translationKey == this.translationKey &&
          other.showTranslation == this.showTranslation &&
          other.showTransliteration == this.showTransliteration &&
          other.selectedReciter == this.selectedReciter &&
          other.audioQuality == this.audioQuality &&
          other.notificationsEnabled == this.notificationsEnabled);
}

class SettingsCompanion extends UpdateCompanion<SettingsData> {
  final Value<int> id;
  final Value<String> languageCode;
  final Value<String> themeMode;
  final Value<String?> translationKey;
  final Value<bool> showTranslation;
  final Value<bool> showTransliteration;
  final Value<String?> selectedReciter;
  final Value<String> audioQuality;
  final Value<bool> notificationsEnabled;
  const SettingsCompanion({
    this.id = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.themeMode = const Value.absent(),
    this.translationKey = const Value.absent(),
    this.showTranslation = const Value.absent(),
    this.showTransliteration = const Value.absent(),
    this.selectedReciter = const Value.absent(),
    this.audioQuality = const Value.absent(),
    this.notificationsEnabled = const Value.absent(),
  });
  SettingsCompanion.insert({
    this.id = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.themeMode = const Value.absent(),
    this.translationKey = const Value.absent(),
    this.showTranslation = const Value.absent(),
    this.showTransliteration = const Value.absent(),
    this.selectedReciter = const Value.absent(),
    this.audioQuality = const Value.absent(),
    this.notificationsEnabled = const Value.absent(),
  });
  static Insertable<SettingsData> custom({
    Expression<int>? id,
    Expression<String>? languageCode,
    Expression<String>? themeMode,
    Expression<String>? translationKey,
    Expression<bool>? showTranslation,
    Expression<bool>? showTransliteration,
    Expression<String>? selectedReciter,
    Expression<String>? audioQuality,
    Expression<bool>? notificationsEnabled,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (languageCode != null) 'language_code': languageCode,
      if (themeMode != null) 'theme_mode': themeMode,
      if (translationKey != null) 'translation_key': translationKey,
      if (showTranslation != null) 'show_translation': showTranslation,
      if (showTransliteration != null)
        'show_transliteration': showTransliteration,
      if (selectedReciter != null) 'selected_reciter': selectedReciter,
      if (audioQuality != null) 'audio_quality': audioQuality,
      if (notificationsEnabled != null)
        'notifications_enabled': notificationsEnabled,
    });
  }

  SettingsCompanion copyWith({
    Value<int>? id,
    Value<String>? languageCode,
    Value<String>? themeMode,
    Value<String?>? translationKey,
    Value<bool>? showTranslation,
    Value<bool>? showTransliteration,
    Value<String?>? selectedReciter,
    Value<String>? audioQuality,
    Value<bool>? notificationsEnabled,
  }) {
    return SettingsCompanion(
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      themeMode: themeMode ?? this.themeMode,
      translationKey: translationKey ?? this.translationKey,
      showTranslation: showTranslation ?? this.showTranslation,
      showTransliteration: showTransliteration ?? this.showTransliteration,
      selectedReciter: selectedReciter ?? this.selectedReciter,
      audioQuality: audioQuality ?? this.audioQuality,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    if (themeMode.present) {
      map['theme_mode'] = Variable<String>(themeMode.value);
    }
    if (translationKey.present) {
      map['translation_key'] = Variable<String>(translationKey.value);
    }
    if (showTranslation.present) {
      map['show_translation'] = Variable<bool>(showTranslation.value);
    }
    if (showTransliteration.present) {
      map['show_transliteration'] = Variable<bool>(showTransliteration.value);
    }
    if (selectedReciter.present) {
      map['selected_reciter'] = Variable<String>(selectedReciter.value);
    }
    if (audioQuality.present) {
      map['audio_quality'] = Variable<String>(audioQuality.value);
    }
    if (notificationsEnabled.present) {
      map['notifications_enabled'] = Variable<bool>(notificationsEnabled.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('id: $id, ')
          ..write('languageCode: $languageCode, ')
          ..write('themeMode: $themeMode, ')
          ..write('translationKey: $translationKey, ')
          ..write('showTranslation: $showTranslation, ')
          ..write('showTransliteration: $showTransliteration, ')
          ..write('selectedReciter: $selectedReciter, ')
          ..write('audioQuality: $audioQuality, ')
          ..write('notificationsEnabled: $notificationsEnabled')
          ..write(')'))
        .toString();
  }
}

class $UserProfileTable extends UserProfile
    with TableInfo<$UserProfileTable, UserProfileData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProfileTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _avatarUrlMeta = const VerificationMeta(
    'avatarUrl',
  );
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
    'avatar_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    email,
    displayName,
    avatarUrl,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_profile';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserProfileData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    }
    if (data.containsKey('avatar_url')) {
      context.handle(
        _avatarUrlMeta,
        avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProfileData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProfileData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      ),
      avatarUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar_url'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $UserProfileTable createAlias(String alias) {
    return $UserProfileTable(attachedDatabase, alias);
  }
}

class UserProfileData extends DataClass implements Insertable<UserProfileData> {
  final int id;
  final String email;
  final String? displayName;
  final String? avatarUrl;
  final DateTime createdAt;
  const UserProfileData({
    required this.id,
    required this.email,
    this.displayName,
    this.avatarUrl,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email'] = Variable<String>(email);
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  UserProfileCompanion toCompanion(bool nullToAbsent) {
    return UserProfileCompanion(
      id: Value(id),
      email: Value(email),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      createdAt: Value(createdAt),
    );
  }

  factory UserProfileData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProfileData(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'displayName': serializer.toJson<String?>(displayName),
      'avatarUrl': serializer.toJson<String?>(avatarUrl),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  UserProfileData copyWith({
    int? id,
    String? email,
    Value<String?> displayName = const Value.absent(),
    Value<String?> avatarUrl = const Value.absent(),
    DateTime? createdAt,
  }) => UserProfileData(
    id: id ?? this.id,
    email: email ?? this.email,
    displayName: displayName.present ? displayName.value : this.displayName,
    avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
    createdAt: createdAt ?? this.createdAt,
  );
  UserProfileData copyWithCompanion(UserProfileCompanion data) {
    return UserProfileData(
      id: data.id.present ? data.id.value : this.id,
      email: data.email.present ? data.email.value : this.email,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProfileData(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, email, displayName, avatarUrl, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProfileData &&
          other.id == this.id &&
          other.email == this.email &&
          other.displayName == this.displayName &&
          other.avatarUrl == this.avatarUrl &&
          other.createdAt == this.createdAt);
}

class UserProfileCompanion extends UpdateCompanion<UserProfileData> {
  final Value<int> id;
  final Value<String> email;
  final Value<String?> displayName;
  final Value<String?> avatarUrl;
  final Value<DateTime> createdAt;
  const UserProfileCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.displayName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  UserProfileCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    this.displayName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    required DateTime createdAt,
  }) : email = Value(email),
       createdAt = Value(createdAt);
  static Insertable<UserProfileData> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? displayName,
    Expression<String>? avatarUrl,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (displayName != null) 'display_name': displayName,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  UserProfileCompanion copyWith({
    Value<int>? id,
    Value<String>? email,
    Value<String?>? displayName,
    Value<String?>? avatarUrl,
    Value<DateTime>? createdAt,
  }) {
    return UserProfileCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProfileCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SyncQueueTable extends SyncQueue
    with TableInfo<$SyncQueueTable, SyncQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _entityTypeMeta = const VerificationMeta(
    'entityType',
  );
  @override
  late final GeneratedColumn<String> entityType = GeneratedColumn<String>(
    'entity_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entityIdMeta = const VerificationMeta(
    'entityId',
  );
  @override
  late final GeneratedColumn<String> entityId = GeneratedColumn<String>(
    'entity_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _operationMeta = const VerificationMeta(
    'operation',
  );
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
    'operation',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    entityType,
    entityId,
    operation,
    payload,
    createdAt,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_queue';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncQueueData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('entity_type')) {
      context.handle(
        _entityTypeMeta,
        entityType.isAcceptableOrUnknown(data['entity_type']!, _entityTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_entityTypeMeta);
    }
    if (data.containsKey('entity_id')) {
      context.handle(
        _entityIdMeta,
        entityId.isAcceptableOrUnknown(data['entity_id']!, _entityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_entityIdMeta);
    }
    if (data.containsKey('operation')) {
      context.handle(
        _operationMeta,
        operation.isAcceptableOrUnknown(data['operation']!, _operationMeta),
      );
    } else if (isInserting) {
      context.missing(_operationMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncQueueData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      entityType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entity_type'],
      )!,
      entityId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entity_id'],
      )!,
      operation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}operation'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $SyncQueueTable createAlias(String alias) {
    return $SyncQueueTable(attachedDatabase, alias);
  }
}

class SyncQueueData extends DataClass implements Insertable<SyncQueueData> {
  final int id;
  final String entityType;
  final String entityId;
  final String operation;
  final String payload;
  final DateTime createdAt;
  final String status;
  const SyncQueueData({
    required this.id,
    required this.entityType,
    required this.entityId,
    required this.operation,
    required this.payload,
    required this.createdAt,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['entity_type'] = Variable<String>(entityType);
    map['entity_id'] = Variable<String>(entityId);
    map['operation'] = Variable<String>(operation);
    map['payload'] = Variable<String>(payload);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['status'] = Variable<String>(status);
    return map;
  }

  SyncQueueCompanion toCompanion(bool nullToAbsent) {
    return SyncQueueCompanion(
      id: Value(id),
      entityType: Value(entityType),
      entityId: Value(entityId),
      operation: Value(operation),
      payload: Value(payload),
      createdAt: Value(createdAt),
      status: Value(status),
    );
  }

  factory SyncQueueData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncQueueData(
      id: serializer.fromJson<int>(json['id']),
      entityType: serializer.fromJson<String>(json['entityType']),
      entityId: serializer.fromJson<String>(json['entityId']),
      operation: serializer.fromJson<String>(json['operation']),
      payload: serializer.fromJson<String>(json['payload']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'entityType': serializer.toJson<String>(entityType),
      'entityId': serializer.toJson<String>(entityId),
      'operation': serializer.toJson<String>(operation),
      'payload': serializer.toJson<String>(payload),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'status': serializer.toJson<String>(status),
    };
  }

  SyncQueueData copyWith({
    int? id,
    String? entityType,
    String? entityId,
    String? operation,
    String? payload,
    DateTime? createdAt,
    String? status,
  }) => SyncQueueData(
    id: id ?? this.id,
    entityType: entityType ?? this.entityType,
    entityId: entityId ?? this.entityId,
    operation: operation ?? this.operation,
    payload: payload ?? this.payload,
    createdAt: createdAt ?? this.createdAt,
    status: status ?? this.status,
  );
  SyncQueueData copyWithCompanion(SyncQueueCompanion data) {
    return SyncQueueData(
      id: data.id.present ? data.id.value : this.id,
      entityType: data.entityType.present
          ? data.entityType.value
          : this.entityType,
      entityId: data.entityId.present ? data.entityId.value : this.entityId,
      operation: data.operation.present ? data.operation.value : this.operation,
      payload: data.payload.present ? data.payload.value : this.payload,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueData(')
          ..write('id: $id, ')
          ..write('entityType: $entityType, ')
          ..write('entityId: $entityId, ')
          ..write('operation: $operation, ')
          ..write('payload: $payload, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    entityType,
    entityId,
    operation,
    payload,
    createdAt,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncQueueData &&
          other.id == this.id &&
          other.entityType == this.entityType &&
          other.entityId == this.entityId &&
          other.operation == this.operation &&
          other.payload == this.payload &&
          other.createdAt == this.createdAt &&
          other.status == this.status);
}

class SyncQueueCompanion extends UpdateCompanion<SyncQueueData> {
  final Value<int> id;
  final Value<String> entityType;
  final Value<String> entityId;
  final Value<String> operation;
  final Value<String> payload;
  final Value<DateTime> createdAt;
  final Value<String> status;
  const SyncQueueCompanion({
    this.id = const Value.absent(),
    this.entityType = const Value.absent(),
    this.entityId = const Value.absent(),
    this.operation = const Value.absent(),
    this.payload = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.status = const Value.absent(),
  });
  SyncQueueCompanion.insert({
    this.id = const Value.absent(),
    required String entityType,
    required String entityId,
    required String operation,
    required String payload,
    required DateTime createdAt,
    required String status,
  }) : entityType = Value(entityType),
       entityId = Value(entityId),
       operation = Value(operation),
       payload = Value(payload),
       createdAt = Value(createdAt),
       status = Value(status);
  static Insertable<SyncQueueData> custom({
    Expression<int>? id,
    Expression<String>? entityType,
    Expression<String>? entityId,
    Expression<String>? operation,
    Expression<String>? payload,
    Expression<DateTime>? createdAt,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entityType != null) 'entity_type': entityType,
      if (entityId != null) 'entity_id': entityId,
      if (operation != null) 'operation': operation,
      if (payload != null) 'payload': payload,
      if (createdAt != null) 'created_at': createdAt,
      if (status != null) 'status': status,
    });
  }

  SyncQueueCompanion copyWith({
    Value<int>? id,
    Value<String>? entityType,
    Value<String>? entityId,
    Value<String>? operation,
    Value<String>? payload,
    Value<DateTime>? createdAt,
    Value<String>? status,
  }) {
    return SyncQueueCompanion(
      id: id ?? this.id,
      entityType: entityType ?? this.entityType,
      entityId: entityId ?? this.entityId,
      operation: operation ?? this.operation,
      payload: payload ?? this.payload,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (entityType.present) {
      map['entity_type'] = Variable<String>(entityType.value);
    }
    if (entityId.present) {
      map['entity_id'] = Variable<String>(entityId.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueCompanion(')
          ..write('id: $id, ')
          ..write('entityType: $entityType, ')
          ..write('entityId: $entityId, ')
          ..write('operation: $operation, ')
          ..write('payload: $payload, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SurahsTable surahs = $SurahsTable(this);
  late final $AyahsTable ayahs = $AyahsTable(this);
  late final $TranslationsTable translations = $TranslationsTable(this);
  late final $TranslationAyahsTable translationAyahs = $TranslationAyahsTable(
    this,
  );
  late final $TafsirsTable tafsirs = $TafsirsTable(this);
  late final $TafsirAyahsTable tafsirAyahs = $TafsirAyahsTable(this);
  late final $RecitersTable reciters = $RecitersTable(this);
  late final $AudioPacksTable audioPacks = $AudioPacksTable(this);
  late final $AudioFilesTable audioFiles = $AudioFilesTable(this);
  late final $ContentPacksTable contentPacks = $ContentPacksTable(this);
  late final $InstalledPackagesTable installedPackages =
      $InstalledPackagesTable(this);
  late final $ReadingProgressTableTable readingProgressTable =
      $ReadingProgressTableTable(this);
  late final $ReadingSessionsTable readingSessions = $ReadingSessionsTable(
    this,
  );
  late final $LastReadPositionTable lastReadPosition = $LastReadPositionTable(
    this,
  );
  late final $BookmarksTable bookmarks = $BookmarksTable(this);
  late final $FavoriteRecitersTable favoriteReciters = $FavoriteRecitersTable(
    this,
  );
  late final $ReadingGoalsTable readingGoals = $ReadingGoalsTable(this);
  late final $GoalProgressTable goalProgress = $GoalProgressTable(this);
  late final $HifzPlansTable hifzPlans = $HifzPlansTable(this);
  late final $HifzItemsTable hifzItems = $HifzItemsTable(this);
  late final $ReviewSessionsTable reviewSessions = $ReviewSessionsTable(this);
  late final $ReviewResultsTable reviewResults = $ReviewResultsTable(this);
  late final $DownloadTasksTable downloadTasks = $DownloadTasksTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  late final $UserProfileTable userProfile = $UserProfileTable(this);
  late final $SyncQueueTable syncQueue = $SyncQueueTable(this);
  late final SurahDao surahDao = SurahDao(this as AppDatabase);
  late final AyahDao ayahDao = AyahDao(this as AppDatabase);
  late final TranslationDao translationDao = TranslationDao(
    this as AppDatabase,
  );
  late final ReciterDao reciterDao = ReciterDao(this as AppDatabase);
  late final AudioPackDao audioPackDao = AudioPackDao(this as AppDatabase);
  late final AudioFileDao audioFileDao = AudioFileDao(this as AppDatabase);
  late final ReadingProgressDao readingProgressDao = ReadingProgressDao(
    this as AppDatabase,
  );
  late final BookmarkDao bookmarkDao = BookmarkDao(this as AppDatabase);
  late final HifzDao hifzDao = HifzDao(this as AppDatabase);
  late final GoalDao goalDao = GoalDao(this as AppDatabase);
  late final SettingsDao settingsDao = SettingsDao(this as AppDatabase);
  late final ContentPackDao contentPackDao = ContentPackDao(
    this as AppDatabase,
  );
  late final DownloadDao downloadDao = DownloadDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    surahs,
    ayahs,
    translations,
    translationAyahs,
    tafsirs,
    tafsirAyahs,
    reciters,
    audioPacks,
    audioFiles,
    contentPacks,
    installedPackages,
    readingProgressTable,
    readingSessions,
    lastReadPosition,
    bookmarks,
    favoriteReciters,
    readingGoals,
    goalProgress,
    hifzPlans,
    hifzItems,
    reviewSessions,
    reviewResults,
    downloadTasks,
    settings,
    userProfile,
    syncQueue,
  ];
}

typedef $$SurahsTableCreateCompanionBuilder =
    SurahsCompanion Function({
      Value<int> id,
      required int number,
      required String nameArabic,
      required String nameEnglish,
      required String nameTranslated,
      required String revelationType,
      required int ayahCount,
      required int sortOrder,
    });
typedef $$SurahsTableUpdateCompanionBuilder =
    SurahsCompanion Function({
      Value<int> id,
      Value<int> number,
      Value<String> nameArabic,
      Value<String> nameEnglish,
      Value<String> nameTranslated,
      Value<String> revelationType,
      Value<int> ayahCount,
      Value<int> sortOrder,
    });

final class $$SurahsTableReferences
    extends BaseReferences<_$AppDatabase, $SurahsTable, SurahData> {
  $$SurahsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AyahsTable, List<AyahData>> _ayahsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.ayahs,
    aliasName: $_aliasNameGenerator(db.surahs.id, db.ayahs.surahId),
  );

  $$AyahsTableProcessedTableManager get ayahsRefs {
    final manager = $$AyahsTableTableManager(
      $_db,
      $_db.ayahs,
    ).filter((f) => f.surahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_ayahsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$AudioFilesTable, List<AudioFileData>>
  _audioFilesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.audioFiles,
    aliasName: $_aliasNameGenerator(db.surahs.id, db.audioFiles.surahId),
  );

  $$AudioFilesTableProcessedTableManager get audioFilesRefs {
    final manager = $$AudioFilesTableTableManager(
      $_db,
      $_db.audioFiles,
    ).filter((f) => f.surahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_audioFilesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $ReadingProgressTableTable,
    List<ReadingProgressData>
  >
  _readingProgressTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.readingProgressTable,
        aliasName: $_aliasNameGenerator(
          db.surahs.id,
          db.readingProgressTable.surahId,
        ),
      );

  $$ReadingProgressTableTableProcessedTableManager
  get readingProgressTableRefs {
    final manager = $$ReadingProgressTableTableTableManager(
      $_db,
      $_db.readingProgressTable,
    ).filter((f) => f.surahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _readingProgressTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ReadingSessionsTable, List<ReadingSessionData>>
  _readingSessionsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.readingSessions,
    aliasName: $_aliasNameGenerator(db.surahs.id, db.readingSessions.surahId),
  );

  $$ReadingSessionsTableProcessedTableManager get readingSessionsRefs {
    final manager = $$ReadingSessionsTableTableManager(
      $_db,
      $_db.readingSessions,
    ).filter((f) => f.surahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _readingSessionsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LastReadPositionTable, List<LastReadPositionData>>
  _lastReadPositionRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.lastReadPosition,
    aliasName: $_aliasNameGenerator(db.surahs.id, db.lastReadPosition.surahId),
  );

  $$LastReadPositionTableProcessedTableManager get lastReadPositionRefs {
    final manager = $$LastReadPositionTableTableManager(
      $_db,
      $_db.lastReadPosition,
    ).filter((f) => f.surahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _lastReadPositionRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SurahsTableFilterComposer
    extends Composer<_$AppDatabase, $SurahsTable> {
  $$SurahsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameArabic => $composableBuilder(
    column: $table.nameArabic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameEnglish => $composableBuilder(
    column: $table.nameEnglish,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameTranslated => $composableBuilder(
    column: $table.nameTranslated,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get revelationType => $composableBuilder(
    column: $table.revelationType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ayahCount => $composableBuilder(
    column: $table.ayahCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> ayahsRefs(
    Expression<bool> Function($$AyahsTableFilterComposer f) f,
  ) {
    final $$AyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableFilterComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> audioFilesRefs(
    Expression<bool> Function($$AudioFilesTableFilterComposer f) f,
  ) {
    final $$AudioFilesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.audioFiles,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioFilesTableFilterComposer(
            $db: $db,
            $table: $db.audioFiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> readingProgressTableRefs(
    Expression<bool> Function($$ReadingProgressTableTableFilterComposer f) f,
  ) {
    final $$ReadingProgressTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.readingProgressTable,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReadingProgressTableTableFilterComposer(
            $db: $db,
            $table: $db.readingProgressTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> readingSessionsRefs(
    Expression<bool> Function($$ReadingSessionsTableFilterComposer f) f,
  ) {
    final $$ReadingSessionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.readingSessions,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReadingSessionsTableFilterComposer(
            $db: $db,
            $table: $db.readingSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> lastReadPositionRefs(
    Expression<bool> Function($$LastReadPositionTableFilterComposer f) f,
  ) {
    final $$LastReadPositionTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.lastReadPosition,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LastReadPositionTableFilterComposer(
            $db: $db,
            $table: $db.lastReadPosition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SurahsTableOrderingComposer
    extends Composer<_$AppDatabase, $SurahsTable> {
  $$SurahsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameArabic => $composableBuilder(
    column: $table.nameArabic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameEnglish => $composableBuilder(
    column: $table.nameEnglish,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameTranslated => $composableBuilder(
    column: $table.nameTranslated,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get revelationType => $composableBuilder(
    column: $table.revelationType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ayahCount => $composableBuilder(
    column: $table.ayahCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SurahsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SurahsTable> {
  $$SurahsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get nameArabic => $composableBuilder(
    column: $table.nameArabic,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nameEnglish => $composableBuilder(
    column: $table.nameEnglish,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nameTranslated => $composableBuilder(
    column: $table.nameTranslated,
    builder: (column) => column,
  );

  GeneratedColumn<String> get revelationType => $composableBuilder(
    column: $table.revelationType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get ayahCount =>
      $composableBuilder(column: $table.ayahCount, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  Expression<T> ayahsRefs<T extends Object>(
    Expression<T> Function($$AyahsTableAnnotationComposer a) f,
  ) {
    final $$AyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> audioFilesRefs<T extends Object>(
    Expression<T> Function($$AudioFilesTableAnnotationComposer a) f,
  ) {
    final $$AudioFilesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.audioFiles,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioFilesTableAnnotationComposer(
            $db: $db,
            $table: $db.audioFiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> readingProgressTableRefs<T extends Object>(
    Expression<T> Function($$ReadingProgressTableTableAnnotationComposer a) f,
  ) {
    final $$ReadingProgressTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.readingProgressTable,
          getReferencedColumn: (t) => t.surahId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ReadingProgressTableTableAnnotationComposer(
                $db: $db,
                $table: $db.readingProgressTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> readingSessionsRefs<T extends Object>(
    Expression<T> Function($$ReadingSessionsTableAnnotationComposer a) f,
  ) {
    final $$ReadingSessionsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.readingSessions,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReadingSessionsTableAnnotationComposer(
            $db: $db,
            $table: $db.readingSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> lastReadPositionRefs<T extends Object>(
    Expression<T> Function($$LastReadPositionTableAnnotationComposer a) f,
  ) {
    final $$LastReadPositionTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.lastReadPosition,
      getReferencedColumn: (t) => t.surahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LastReadPositionTableAnnotationComposer(
            $db: $db,
            $table: $db.lastReadPosition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SurahsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SurahsTable,
          SurahData,
          $$SurahsTableFilterComposer,
          $$SurahsTableOrderingComposer,
          $$SurahsTableAnnotationComposer,
          $$SurahsTableCreateCompanionBuilder,
          $$SurahsTableUpdateCompanionBuilder,
          (SurahData, $$SurahsTableReferences),
          SurahData,
          PrefetchHooks Function({
            bool ayahsRefs,
            bool audioFilesRefs,
            bool readingProgressTableRefs,
            bool readingSessionsRefs,
            bool lastReadPositionRefs,
          })
        > {
  $$SurahsTableTableManager(_$AppDatabase db, $SurahsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SurahsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SurahsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SurahsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> number = const Value.absent(),
                Value<String> nameArabic = const Value.absent(),
                Value<String> nameEnglish = const Value.absent(),
                Value<String> nameTranslated = const Value.absent(),
                Value<String> revelationType = const Value.absent(),
                Value<int> ayahCount = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
              }) => SurahsCompanion(
                id: id,
                number: number,
                nameArabic: nameArabic,
                nameEnglish: nameEnglish,
                nameTranslated: nameTranslated,
                revelationType: revelationType,
                ayahCount: ayahCount,
                sortOrder: sortOrder,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int number,
                required String nameArabic,
                required String nameEnglish,
                required String nameTranslated,
                required String revelationType,
                required int ayahCount,
                required int sortOrder,
              }) => SurahsCompanion.insert(
                id: id,
                number: number,
                nameArabic: nameArabic,
                nameEnglish: nameEnglish,
                nameTranslated: nameTranslated,
                revelationType: revelationType,
                ayahCount: ayahCount,
                sortOrder: sortOrder,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$SurahsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                ayahsRefs = false,
                audioFilesRefs = false,
                readingProgressTableRefs = false,
                readingSessionsRefs = false,
                lastReadPositionRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (ayahsRefs) db.ayahs,
                    if (audioFilesRefs) db.audioFiles,
                    if (readingProgressTableRefs) db.readingProgressTable,
                    if (readingSessionsRefs) db.readingSessions,
                    if (lastReadPositionRefs) db.lastReadPosition,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (ayahsRefs)
                        await $_getPrefetchedData<
                          SurahData,
                          $SurahsTable,
                          AyahData
                        >(
                          currentTable: table,
                          referencedTable: $$SurahsTableReferences
                              ._ayahsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SurahsTableReferences(db, table, p0).ayahsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.surahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (audioFilesRefs)
                        await $_getPrefetchedData<
                          SurahData,
                          $SurahsTable,
                          AudioFileData
                        >(
                          currentTable: table,
                          referencedTable: $$SurahsTableReferences
                              ._audioFilesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SurahsTableReferences(
                                db,
                                table,
                                p0,
                              ).audioFilesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.surahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (readingProgressTableRefs)
                        await $_getPrefetchedData<
                          SurahData,
                          $SurahsTable,
                          ReadingProgressData
                        >(
                          currentTable: table,
                          referencedTable: $$SurahsTableReferences
                              ._readingProgressTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SurahsTableReferences(
                                db,
                                table,
                                p0,
                              ).readingProgressTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.surahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (readingSessionsRefs)
                        await $_getPrefetchedData<
                          SurahData,
                          $SurahsTable,
                          ReadingSessionData
                        >(
                          currentTable: table,
                          referencedTable: $$SurahsTableReferences
                              ._readingSessionsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SurahsTableReferences(
                                db,
                                table,
                                p0,
                              ).readingSessionsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.surahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (lastReadPositionRefs)
                        await $_getPrefetchedData<
                          SurahData,
                          $SurahsTable,
                          LastReadPositionData
                        >(
                          currentTable: table,
                          referencedTable: $$SurahsTableReferences
                              ._lastReadPositionRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SurahsTableReferences(
                                db,
                                table,
                                p0,
                              ).lastReadPositionRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.surahId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$SurahsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SurahsTable,
      SurahData,
      $$SurahsTableFilterComposer,
      $$SurahsTableOrderingComposer,
      $$SurahsTableAnnotationComposer,
      $$SurahsTableCreateCompanionBuilder,
      $$SurahsTableUpdateCompanionBuilder,
      (SurahData, $$SurahsTableReferences),
      SurahData,
      PrefetchHooks Function({
        bool ayahsRefs,
        bool audioFilesRefs,
        bool readingProgressTableRefs,
        bool readingSessionsRefs,
        bool lastReadPositionRefs,
      })
    >;
typedef $$AyahsTableCreateCompanionBuilder =
    AyahsCompanion Function({
      Value<int> id,
      required int surahId,
      required int ayahNumber,
      required int globalAyahNumber,
      required String arabicText,
      required int pageNumber,
      required int juzNumber,
      required int hizbNumber,
    });
typedef $$AyahsTableUpdateCompanionBuilder =
    AyahsCompanion Function({
      Value<int> id,
      Value<int> surahId,
      Value<int> ayahNumber,
      Value<int> globalAyahNumber,
      Value<String> arabicText,
      Value<int> pageNumber,
      Value<int> juzNumber,
      Value<int> hizbNumber,
    });

final class $$AyahsTableReferences
    extends BaseReferences<_$AppDatabase, $AyahsTable, AyahData> {
  $$AyahsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SurahsTable _surahIdTable(_$AppDatabase db) => db.surahs.createAlias(
    $_aliasNameGenerator(db.ayahs.surahId, db.surahs.id),
  );

  $$SurahsTableProcessedTableManager get surahId {
    final $_column = $_itemColumn<int>('surah_id')!;

    final manager = $$SurahsTableTableManager(
      $_db,
      $_db.surahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_surahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$TranslationAyahsTable, List<TranslationAyahData>>
  _translationAyahsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.translationAyahs,
    aliasName: $_aliasNameGenerator(db.ayahs.id, db.translationAyahs.ayahId),
  );

  $$TranslationAyahsTableProcessedTableManager get translationAyahsRefs {
    final manager = $$TranslationAyahsTableTableManager(
      $_db,
      $_db.translationAyahs,
    ).filter((f) => f.ayahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _translationAyahsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TafsirAyahsTable, List<TafsirAyahData>>
  _tafsirAyahsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.tafsirAyahs,
    aliasName: $_aliasNameGenerator(db.ayahs.id, db.tafsirAyahs.ayahId),
  );

  $$TafsirAyahsTableProcessedTableManager get tafsirAyahsRefs {
    final manager = $$TafsirAyahsTableTableManager(
      $_db,
      $_db.tafsirAyahs,
    ).filter((f) => f.ayahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_tafsirAyahsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $ReadingProgressTableTable,
    List<ReadingProgressData>
  >
  _readingProgressTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.readingProgressTable,
        aliasName: $_aliasNameGenerator(
          db.ayahs.id,
          db.readingProgressTable.ayahId,
        ),
      );

  $$ReadingProgressTableTableProcessedTableManager
  get readingProgressTableRefs {
    final manager = $$ReadingProgressTableTableTableManager(
      $_db,
      $_db.readingProgressTable,
    ).filter((f) => f.ayahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _readingProgressTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LastReadPositionTable, List<LastReadPositionData>>
  _lastReadPositionRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.lastReadPosition,
    aliasName: $_aliasNameGenerator(db.ayahs.id, db.lastReadPosition.ayahId),
  );

  $$LastReadPositionTableProcessedTableManager get lastReadPositionRefs {
    final manager = $$LastReadPositionTableTableManager(
      $_db,
      $_db.lastReadPosition,
    ).filter((f) => f.ayahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _lastReadPositionRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$BookmarksTable, List<BookmarkData>>
  _bookmarksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.bookmarks,
    aliasName: $_aliasNameGenerator(db.ayahs.id, db.bookmarks.ayahId),
  );

  $$BookmarksTableProcessedTableManager get bookmarksRefs {
    final manager = $$BookmarksTableTableManager(
      $_db,
      $_db.bookmarks,
    ).filter((f) => f.ayahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_bookmarksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$HifzItemsTable, List<HifzItemData>>
  _hifzItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.hifzItems,
    aliasName: $_aliasNameGenerator(db.ayahs.id, db.hifzItems.ayahId),
  );

  $$HifzItemsTableProcessedTableManager get hifzItemsRefs {
    final manager = $$HifzItemsTableTableManager(
      $_db,
      $_db.hifzItems,
    ).filter((f) => f.ayahId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_hifzItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AyahsTableFilterComposer extends Composer<_$AppDatabase, $AyahsTable> {
  $$AyahsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ayahNumber => $composableBuilder(
    column: $table.ayahNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get globalAyahNumber => $composableBuilder(
    column: $table.globalAyahNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get arabicText => $composableBuilder(
    column: $table.arabicText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get juzNumber => $composableBuilder(
    column: $table.juzNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hizbNumber => $composableBuilder(
    column: $table.hizbNumber,
    builder: (column) => ColumnFilters(column),
  );

  $$SurahsTableFilterComposer get surahId {
    final $$SurahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableFilterComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> translationAyahsRefs(
    Expression<bool> Function($$TranslationAyahsTableFilterComposer f) f,
  ) {
    final $$TranslationAyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.translationAyahs,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TranslationAyahsTableFilterComposer(
            $db: $db,
            $table: $db.translationAyahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> tafsirAyahsRefs(
    Expression<bool> Function($$TafsirAyahsTableFilterComposer f) f,
  ) {
    final $$TafsirAyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tafsirAyahs,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TafsirAyahsTableFilterComposer(
            $db: $db,
            $table: $db.tafsirAyahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> readingProgressTableRefs(
    Expression<bool> Function($$ReadingProgressTableTableFilterComposer f) f,
  ) {
    final $$ReadingProgressTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.readingProgressTable,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReadingProgressTableTableFilterComposer(
            $db: $db,
            $table: $db.readingProgressTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> lastReadPositionRefs(
    Expression<bool> Function($$LastReadPositionTableFilterComposer f) f,
  ) {
    final $$LastReadPositionTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.lastReadPosition,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LastReadPositionTableFilterComposer(
            $db: $db,
            $table: $db.lastReadPosition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> bookmarksRefs(
    Expression<bool> Function($$BookmarksTableFilterComposer f) f,
  ) {
    final $$BookmarksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.bookmarks,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BookmarksTableFilterComposer(
            $db: $db,
            $table: $db.bookmarks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> hifzItemsRefs(
    Expression<bool> Function($$HifzItemsTableFilterComposer f) f,
  ) {
    final $$HifzItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.hifzItems,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzItemsTableFilterComposer(
            $db: $db,
            $table: $db.hifzItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AyahsTableOrderingComposer
    extends Composer<_$AppDatabase, $AyahsTable> {
  $$AyahsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ayahNumber => $composableBuilder(
    column: $table.ayahNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get globalAyahNumber => $composableBuilder(
    column: $table.globalAyahNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get arabicText => $composableBuilder(
    column: $table.arabicText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get juzNumber => $composableBuilder(
    column: $table.juzNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hizbNumber => $composableBuilder(
    column: $table.hizbNumber,
    builder: (column) => ColumnOrderings(column),
  );

  $$SurahsTableOrderingComposer get surahId {
    final $$SurahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableOrderingComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AyahsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AyahsTable> {
  $$AyahsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get ayahNumber => $composableBuilder(
    column: $table.ayahNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get globalAyahNumber => $composableBuilder(
    column: $table.globalAyahNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get arabicText => $composableBuilder(
    column: $table.arabicText,
    builder: (column) => column,
  );

  GeneratedColumn<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get juzNumber =>
      $composableBuilder(column: $table.juzNumber, builder: (column) => column);

  GeneratedColumn<int> get hizbNumber => $composableBuilder(
    column: $table.hizbNumber,
    builder: (column) => column,
  );

  $$SurahsTableAnnotationComposer get surahId {
    final $$SurahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableAnnotationComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> translationAyahsRefs<T extends Object>(
    Expression<T> Function($$TranslationAyahsTableAnnotationComposer a) f,
  ) {
    final $$TranslationAyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.translationAyahs,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TranslationAyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.translationAyahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> tafsirAyahsRefs<T extends Object>(
    Expression<T> Function($$TafsirAyahsTableAnnotationComposer a) f,
  ) {
    final $$TafsirAyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tafsirAyahs,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TafsirAyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.tafsirAyahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> readingProgressTableRefs<T extends Object>(
    Expression<T> Function($$ReadingProgressTableTableAnnotationComposer a) f,
  ) {
    final $$ReadingProgressTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.readingProgressTable,
          getReferencedColumn: (t) => t.ayahId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ReadingProgressTableTableAnnotationComposer(
                $db: $db,
                $table: $db.readingProgressTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> lastReadPositionRefs<T extends Object>(
    Expression<T> Function($$LastReadPositionTableAnnotationComposer a) f,
  ) {
    final $$LastReadPositionTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.lastReadPosition,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LastReadPositionTableAnnotationComposer(
            $db: $db,
            $table: $db.lastReadPosition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> bookmarksRefs<T extends Object>(
    Expression<T> Function($$BookmarksTableAnnotationComposer a) f,
  ) {
    final $$BookmarksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.bookmarks,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BookmarksTableAnnotationComposer(
            $db: $db,
            $table: $db.bookmarks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> hifzItemsRefs<T extends Object>(
    Expression<T> Function($$HifzItemsTableAnnotationComposer a) f,
  ) {
    final $$HifzItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.hifzItems,
      getReferencedColumn: (t) => t.ayahId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.hifzItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AyahsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AyahsTable,
          AyahData,
          $$AyahsTableFilterComposer,
          $$AyahsTableOrderingComposer,
          $$AyahsTableAnnotationComposer,
          $$AyahsTableCreateCompanionBuilder,
          $$AyahsTableUpdateCompanionBuilder,
          (AyahData, $$AyahsTableReferences),
          AyahData,
          PrefetchHooks Function({
            bool surahId,
            bool translationAyahsRefs,
            bool tafsirAyahsRefs,
            bool readingProgressTableRefs,
            bool lastReadPositionRefs,
            bool bookmarksRefs,
            bool hifzItemsRefs,
          })
        > {
  $$AyahsTableTableManager(_$AppDatabase db, $AyahsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AyahsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AyahsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AyahsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> surahId = const Value.absent(),
                Value<int> ayahNumber = const Value.absent(),
                Value<int> globalAyahNumber = const Value.absent(),
                Value<String> arabicText = const Value.absent(),
                Value<int> pageNumber = const Value.absent(),
                Value<int> juzNumber = const Value.absent(),
                Value<int> hizbNumber = const Value.absent(),
              }) => AyahsCompanion(
                id: id,
                surahId: surahId,
                ayahNumber: ayahNumber,
                globalAyahNumber: globalAyahNumber,
                arabicText: arabicText,
                pageNumber: pageNumber,
                juzNumber: juzNumber,
                hizbNumber: hizbNumber,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int surahId,
                required int ayahNumber,
                required int globalAyahNumber,
                required String arabicText,
                required int pageNumber,
                required int juzNumber,
                required int hizbNumber,
              }) => AyahsCompanion.insert(
                id: id,
                surahId: surahId,
                ayahNumber: ayahNumber,
                globalAyahNumber: globalAyahNumber,
                arabicText: arabicText,
                pageNumber: pageNumber,
                juzNumber: juzNumber,
                hizbNumber: hizbNumber,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$AyahsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                surahId = false,
                translationAyahsRefs = false,
                tafsirAyahsRefs = false,
                readingProgressTableRefs = false,
                lastReadPositionRefs = false,
                bookmarksRefs = false,
                hifzItemsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (translationAyahsRefs) db.translationAyahs,
                    if (tafsirAyahsRefs) db.tafsirAyahs,
                    if (readingProgressTableRefs) db.readingProgressTable,
                    if (lastReadPositionRefs) db.lastReadPosition,
                    if (bookmarksRefs) db.bookmarks,
                    if (hifzItemsRefs) db.hifzItems,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (surahId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.surahId,
                                    referencedTable: $$AyahsTableReferences
                                        ._surahIdTable(db),
                                    referencedColumn: $$AyahsTableReferences
                                        ._surahIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (translationAyahsRefs)
                        await $_getPrefetchedData<
                          AyahData,
                          $AyahsTable,
                          TranslationAyahData
                        >(
                          currentTable: table,
                          referencedTable: $$AyahsTableReferences
                              ._translationAyahsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AyahsTableReferences(
                                db,
                                table,
                                p0,
                              ).translationAyahsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ayahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (tafsirAyahsRefs)
                        await $_getPrefetchedData<
                          AyahData,
                          $AyahsTable,
                          TafsirAyahData
                        >(
                          currentTable: table,
                          referencedTable: $$AyahsTableReferences
                              ._tafsirAyahsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AyahsTableReferences(
                                db,
                                table,
                                p0,
                              ).tafsirAyahsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ayahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (readingProgressTableRefs)
                        await $_getPrefetchedData<
                          AyahData,
                          $AyahsTable,
                          ReadingProgressData
                        >(
                          currentTable: table,
                          referencedTable: $$AyahsTableReferences
                              ._readingProgressTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AyahsTableReferences(
                                db,
                                table,
                                p0,
                              ).readingProgressTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ayahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (lastReadPositionRefs)
                        await $_getPrefetchedData<
                          AyahData,
                          $AyahsTable,
                          LastReadPositionData
                        >(
                          currentTable: table,
                          referencedTable: $$AyahsTableReferences
                              ._lastReadPositionRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AyahsTableReferences(
                                db,
                                table,
                                p0,
                              ).lastReadPositionRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ayahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (bookmarksRefs)
                        await $_getPrefetchedData<
                          AyahData,
                          $AyahsTable,
                          BookmarkData
                        >(
                          currentTable: table,
                          referencedTable: $$AyahsTableReferences
                              ._bookmarksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AyahsTableReferences(
                                db,
                                table,
                                p0,
                              ).bookmarksRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ayahId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (hifzItemsRefs)
                        await $_getPrefetchedData<
                          AyahData,
                          $AyahsTable,
                          HifzItemData
                        >(
                          currentTable: table,
                          referencedTable: $$AyahsTableReferences
                              ._hifzItemsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AyahsTableReferences(
                                db,
                                table,
                                p0,
                              ).hifzItemsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ayahId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$AyahsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AyahsTable,
      AyahData,
      $$AyahsTableFilterComposer,
      $$AyahsTableOrderingComposer,
      $$AyahsTableAnnotationComposer,
      $$AyahsTableCreateCompanionBuilder,
      $$AyahsTableUpdateCompanionBuilder,
      (AyahData, $$AyahsTableReferences),
      AyahData,
      PrefetchHooks Function({
        bool surahId,
        bool translationAyahsRefs,
        bool tafsirAyahsRefs,
        bool readingProgressTableRefs,
        bool lastReadPositionRefs,
        bool bookmarksRefs,
        bool hifzItemsRefs,
      })
    >;
typedef $$TranslationsTableCreateCompanionBuilder =
    TranslationsCompanion Function({
      Value<int> id,
      required String translationKey,
      required String languageCode,
      required String translatorName,
      required String version,
      Value<bool> enabled,
    });
typedef $$TranslationsTableUpdateCompanionBuilder =
    TranslationsCompanion Function({
      Value<int> id,
      Value<String> translationKey,
      Value<String> languageCode,
      Value<String> translatorName,
      Value<String> version,
      Value<bool> enabled,
    });

final class $$TranslationsTableReferences
    extends BaseReferences<_$AppDatabase, $TranslationsTable, TranslationData> {
  $$TranslationsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TranslationAyahsTable, List<TranslationAyahData>>
  _translationAyahsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.translationAyahs,
    aliasName: $_aliasNameGenerator(
      db.translations.id,
      db.translationAyahs.translationId,
    ),
  );

  $$TranslationAyahsTableProcessedTableManager get translationAyahsRefs {
    final manager = $$TranslationAyahsTableTableManager(
      $_db,
      $_db.translationAyahs,
    ).filter((f) => f.translationId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _translationAyahsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TranslationsTableFilterComposer
    extends Composer<_$AppDatabase, $TranslationsTable> {
  $$TranslationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translationKey => $composableBuilder(
    column: $table.translationKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translatorName => $composableBuilder(
    column: $table.translatorName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enabled => $composableBuilder(
    column: $table.enabled,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> translationAyahsRefs(
    Expression<bool> Function($$TranslationAyahsTableFilterComposer f) f,
  ) {
    final $$TranslationAyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.translationAyahs,
      getReferencedColumn: (t) => t.translationId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TranslationAyahsTableFilterComposer(
            $db: $db,
            $table: $db.translationAyahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TranslationsTableOrderingComposer
    extends Composer<_$AppDatabase, $TranslationsTable> {
  $$TranslationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translationKey => $composableBuilder(
    column: $table.translationKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translatorName => $composableBuilder(
    column: $table.translatorName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enabled => $composableBuilder(
    column: $table.enabled,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TranslationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TranslationsTable> {
  $$TranslationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get translationKey => $composableBuilder(
    column: $table.translationKey,
    builder: (column) => column,
  );

  GeneratedColumn<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get translatorName => $composableBuilder(
    column: $table.translatorName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<bool> get enabled =>
      $composableBuilder(column: $table.enabled, builder: (column) => column);

  Expression<T> translationAyahsRefs<T extends Object>(
    Expression<T> Function($$TranslationAyahsTableAnnotationComposer a) f,
  ) {
    final $$TranslationAyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.translationAyahs,
      getReferencedColumn: (t) => t.translationId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TranslationAyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.translationAyahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TranslationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TranslationsTable,
          TranslationData,
          $$TranslationsTableFilterComposer,
          $$TranslationsTableOrderingComposer,
          $$TranslationsTableAnnotationComposer,
          $$TranslationsTableCreateCompanionBuilder,
          $$TranslationsTableUpdateCompanionBuilder,
          (TranslationData, $$TranslationsTableReferences),
          TranslationData,
          PrefetchHooks Function({bool translationAyahsRefs})
        > {
  $$TranslationsTableTableManager(_$AppDatabase db, $TranslationsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TranslationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TranslationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TranslationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> translationKey = const Value.absent(),
                Value<String> languageCode = const Value.absent(),
                Value<String> translatorName = const Value.absent(),
                Value<String> version = const Value.absent(),
                Value<bool> enabled = const Value.absent(),
              }) => TranslationsCompanion(
                id: id,
                translationKey: translationKey,
                languageCode: languageCode,
                translatorName: translatorName,
                version: version,
                enabled: enabled,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String translationKey,
                required String languageCode,
                required String translatorName,
                required String version,
                Value<bool> enabled = const Value.absent(),
              }) => TranslationsCompanion.insert(
                id: id,
                translationKey: translationKey,
                languageCode: languageCode,
                translatorName: translatorName,
                version: version,
                enabled: enabled,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TranslationsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({translationAyahsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (translationAyahsRefs) db.translationAyahs,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (translationAyahsRefs)
                    await $_getPrefetchedData<
                      TranslationData,
                      $TranslationsTable,
                      TranslationAyahData
                    >(
                      currentTable: table,
                      referencedTable: $$TranslationsTableReferences
                          ._translationAyahsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$TranslationsTableReferences(
                            db,
                            table,
                            p0,
                          ).translationAyahsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.translationId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TranslationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TranslationsTable,
      TranslationData,
      $$TranslationsTableFilterComposer,
      $$TranslationsTableOrderingComposer,
      $$TranslationsTableAnnotationComposer,
      $$TranslationsTableCreateCompanionBuilder,
      $$TranslationsTableUpdateCompanionBuilder,
      (TranslationData, $$TranslationsTableReferences),
      TranslationData,
      PrefetchHooks Function({bool translationAyahsRefs})
    >;
typedef $$TranslationAyahsTableCreateCompanionBuilder =
    TranslationAyahsCompanion Function({
      Value<int> id,
      required int translationId,
      required int ayahId,
      required String translationText,
    });
typedef $$TranslationAyahsTableUpdateCompanionBuilder =
    TranslationAyahsCompanion Function({
      Value<int> id,
      Value<int> translationId,
      Value<int> ayahId,
      Value<String> translationText,
    });

final class $$TranslationAyahsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TranslationAyahsTable,
          TranslationAyahData
        > {
  $$TranslationAyahsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TranslationsTable _translationIdTable(_$AppDatabase db) =>
      db.translations.createAlias(
        $_aliasNameGenerator(
          db.translationAyahs.translationId,
          db.translations.id,
        ),
      );

  $$TranslationsTableProcessedTableManager get translationId {
    final $_column = $_itemColumn<int>('translation_id')!;

    final manager = $$TranslationsTableTableManager(
      $_db,
      $_db.translations,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_translationIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AyahsTable _ayahIdTable(_$AppDatabase db) => db.ayahs.createAlias(
    $_aliasNameGenerator(db.translationAyahs.ayahId, db.ayahs.id),
  );

  $$AyahsTableProcessedTableManager get ayahId {
    final $_column = $_itemColumn<int>('ayah_id')!;

    final manager = $$AyahsTableTableManager(
      $_db,
      $_db.ayahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ayahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TranslationAyahsTableFilterComposer
    extends Composer<_$AppDatabase, $TranslationAyahsTable> {
  $$TranslationAyahsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => ColumnFilters(column),
  );

  $$TranslationsTableFilterComposer get translationId {
    final $$TranslationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.translationId,
      referencedTable: $db.translations,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TranslationsTableFilterComposer(
            $db: $db,
            $table: $db.translations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableFilterComposer get ayahId {
    final $$AyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableFilterComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TranslationAyahsTableOrderingComposer
    extends Composer<_$AppDatabase, $TranslationAyahsTable> {
  $$TranslationAyahsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => ColumnOrderings(column),
  );

  $$TranslationsTableOrderingComposer get translationId {
    final $$TranslationsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.translationId,
      referencedTable: $db.translations,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TranslationsTableOrderingComposer(
            $db: $db,
            $table: $db.translations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableOrderingComposer get ayahId {
    final $$AyahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableOrderingComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TranslationAyahsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TranslationAyahsTable> {
  $$TranslationAyahsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => column,
  );

  $$TranslationsTableAnnotationComposer get translationId {
    final $$TranslationsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.translationId,
      referencedTable: $db.translations,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TranslationsTableAnnotationComposer(
            $db: $db,
            $table: $db.translations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableAnnotationComposer get ayahId {
    final $$AyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TranslationAyahsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TranslationAyahsTable,
          TranslationAyahData,
          $$TranslationAyahsTableFilterComposer,
          $$TranslationAyahsTableOrderingComposer,
          $$TranslationAyahsTableAnnotationComposer,
          $$TranslationAyahsTableCreateCompanionBuilder,
          $$TranslationAyahsTableUpdateCompanionBuilder,
          (TranslationAyahData, $$TranslationAyahsTableReferences),
          TranslationAyahData,
          PrefetchHooks Function({bool translationId, bool ayahId})
        > {
  $$TranslationAyahsTableTableManager(
    _$AppDatabase db,
    $TranslationAyahsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TranslationAyahsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TranslationAyahsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TranslationAyahsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> translationId = const Value.absent(),
                Value<int> ayahId = const Value.absent(),
                Value<String> translationText = const Value.absent(),
              }) => TranslationAyahsCompanion(
                id: id,
                translationId: translationId,
                ayahId: ayahId,
                translationText: translationText,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int translationId,
                required int ayahId,
                required String translationText,
              }) => TranslationAyahsCompanion.insert(
                id: id,
                translationId: translationId,
                ayahId: ayahId,
                translationText: translationText,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TranslationAyahsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({translationId = false, ayahId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (translationId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.translationId,
                                referencedTable:
                                    $$TranslationAyahsTableReferences
                                        ._translationIdTable(db),
                                referencedColumn:
                                    $$TranslationAyahsTableReferences
                                        ._translationIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (ayahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ayahId,
                                referencedTable:
                                    $$TranslationAyahsTableReferences
                                        ._ayahIdTable(db),
                                referencedColumn:
                                    $$TranslationAyahsTableReferences
                                        ._ayahIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TranslationAyahsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TranslationAyahsTable,
      TranslationAyahData,
      $$TranslationAyahsTableFilterComposer,
      $$TranslationAyahsTableOrderingComposer,
      $$TranslationAyahsTableAnnotationComposer,
      $$TranslationAyahsTableCreateCompanionBuilder,
      $$TranslationAyahsTableUpdateCompanionBuilder,
      (TranslationAyahData, $$TranslationAyahsTableReferences),
      TranslationAyahData,
      PrefetchHooks Function({bool translationId, bool ayahId})
    >;
typedef $$TafsirsTableCreateCompanionBuilder =
    TafsirsCompanion Function({
      Value<int> id,
      required String tafsirKey,
      required String languageCode,
      required String author,
      required String version,
    });
typedef $$TafsirsTableUpdateCompanionBuilder =
    TafsirsCompanion Function({
      Value<int> id,
      Value<String> tafsirKey,
      Value<String> languageCode,
      Value<String> author,
      Value<String> version,
    });

final class $$TafsirsTableReferences
    extends BaseReferences<_$AppDatabase, $TafsirsTable, TafsirData> {
  $$TafsirsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TafsirAyahsTable, List<TafsirAyahData>>
  _tafsirAyahsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.tafsirAyahs,
    aliasName: $_aliasNameGenerator(db.tafsirs.id, db.tafsirAyahs.tafsirId),
  );

  $$TafsirAyahsTableProcessedTableManager get tafsirAyahsRefs {
    final manager = $$TafsirAyahsTableTableManager(
      $_db,
      $_db.tafsirAyahs,
    ).filter((f) => f.tafsirId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_tafsirAyahsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TafsirsTableFilterComposer
    extends Composer<_$AppDatabase, $TafsirsTable> {
  $$TafsirsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tafsirKey => $composableBuilder(
    column: $table.tafsirKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get author => $composableBuilder(
    column: $table.author,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> tafsirAyahsRefs(
    Expression<bool> Function($$TafsirAyahsTableFilterComposer f) f,
  ) {
    final $$TafsirAyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tafsirAyahs,
      getReferencedColumn: (t) => t.tafsirId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TafsirAyahsTableFilterComposer(
            $db: $db,
            $table: $db.tafsirAyahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TafsirsTableOrderingComposer
    extends Composer<_$AppDatabase, $TafsirsTable> {
  $$TafsirsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tafsirKey => $composableBuilder(
    column: $table.tafsirKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get author => $composableBuilder(
    column: $table.author,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TafsirsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TafsirsTable> {
  $$TafsirsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tafsirKey =>
      $composableBuilder(column: $table.tafsirKey, builder: (column) => column);

  GeneratedColumn<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  Expression<T> tafsirAyahsRefs<T extends Object>(
    Expression<T> Function($$TafsirAyahsTableAnnotationComposer a) f,
  ) {
    final $$TafsirAyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tafsirAyahs,
      getReferencedColumn: (t) => t.tafsirId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TafsirAyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.tafsirAyahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TafsirsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TafsirsTable,
          TafsirData,
          $$TafsirsTableFilterComposer,
          $$TafsirsTableOrderingComposer,
          $$TafsirsTableAnnotationComposer,
          $$TafsirsTableCreateCompanionBuilder,
          $$TafsirsTableUpdateCompanionBuilder,
          (TafsirData, $$TafsirsTableReferences),
          TafsirData,
          PrefetchHooks Function({bool tafsirAyahsRefs})
        > {
  $$TafsirsTableTableManager(_$AppDatabase db, $TafsirsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TafsirsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TafsirsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TafsirsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> tafsirKey = const Value.absent(),
                Value<String> languageCode = const Value.absent(),
                Value<String> author = const Value.absent(),
                Value<String> version = const Value.absent(),
              }) => TafsirsCompanion(
                id: id,
                tafsirKey: tafsirKey,
                languageCode: languageCode,
                author: author,
                version: version,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String tafsirKey,
                required String languageCode,
                required String author,
                required String version,
              }) => TafsirsCompanion.insert(
                id: id,
                tafsirKey: tafsirKey,
                languageCode: languageCode,
                author: author,
                version: version,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TafsirsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({tafsirAyahsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (tafsirAyahsRefs) db.tafsirAyahs],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (tafsirAyahsRefs)
                    await $_getPrefetchedData<
                      TafsirData,
                      $TafsirsTable,
                      TafsirAyahData
                    >(
                      currentTable: table,
                      referencedTable: $$TafsirsTableReferences
                          ._tafsirAyahsRefsTable(db),
                      managerFromTypedResult: (p0) => $$TafsirsTableReferences(
                        db,
                        table,
                        p0,
                      ).tafsirAyahsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.tafsirId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TafsirsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TafsirsTable,
      TafsirData,
      $$TafsirsTableFilterComposer,
      $$TafsirsTableOrderingComposer,
      $$TafsirsTableAnnotationComposer,
      $$TafsirsTableCreateCompanionBuilder,
      $$TafsirsTableUpdateCompanionBuilder,
      (TafsirData, $$TafsirsTableReferences),
      TafsirData,
      PrefetchHooks Function({bool tafsirAyahsRefs})
    >;
typedef $$TafsirAyahsTableCreateCompanionBuilder =
    TafsirAyahsCompanion Function({
      Value<int> id,
      required int tafsirId,
      required int ayahId,
      required String tafsirText,
    });
typedef $$TafsirAyahsTableUpdateCompanionBuilder =
    TafsirAyahsCompanion Function({
      Value<int> id,
      Value<int> tafsirId,
      Value<int> ayahId,
      Value<String> tafsirText,
    });

final class $$TafsirAyahsTableReferences
    extends BaseReferences<_$AppDatabase, $TafsirAyahsTable, TafsirAyahData> {
  $$TafsirAyahsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TafsirsTable _tafsirIdTable(_$AppDatabase db) =>
      db.tafsirs.createAlias(
        $_aliasNameGenerator(db.tafsirAyahs.tafsirId, db.tafsirs.id),
      );

  $$TafsirsTableProcessedTableManager get tafsirId {
    final $_column = $_itemColumn<int>('tafsir_id')!;

    final manager = $$TafsirsTableTableManager(
      $_db,
      $_db.tafsirs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tafsirIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AyahsTable _ayahIdTable(_$AppDatabase db) => db.ayahs.createAlias(
    $_aliasNameGenerator(db.tafsirAyahs.ayahId, db.ayahs.id),
  );

  $$AyahsTableProcessedTableManager get ayahId {
    final $_column = $_itemColumn<int>('ayah_id')!;

    final manager = $$AyahsTableTableManager(
      $_db,
      $_db.ayahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ayahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TafsirAyahsTableFilterComposer
    extends Composer<_$AppDatabase, $TafsirAyahsTable> {
  $$TafsirAyahsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tafsirText => $composableBuilder(
    column: $table.tafsirText,
    builder: (column) => ColumnFilters(column),
  );

  $$TafsirsTableFilterComposer get tafsirId {
    final $$TafsirsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tafsirId,
      referencedTable: $db.tafsirs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TafsirsTableFilterComposer(
            $db: $db,
            $table: $db.tafsirs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableFilterComposer get ayahId {
    final $$AyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableFilterComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TafsirAyahsTableOrderingComposer
    extends Composer<_$AppDatabase, $TafsirAyahsTable> {
  $$TafsirAyahsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tafsirText => $composableBuilder(
    column: $table.tafsirText,
    builder: (column) => ColumnOrderings(column),
  );

  $$TafsirsTableOrderingComposer get tafsirId {
    final $$TafsirsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tafsirId,
      referencedTable: $db.tafsirs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TafsirsTableOrderingComposer(
            $db: $db,
            $table: $db.tafsirs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableOrderingComposer get ayahId {
    final $$AyahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableOrderingComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TafsirAyahsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TafsirAyahsTable> {
  $$TafsirAyahsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tafsirText => $composableBuilder(
    column: $table.tafsirText,
    builder: (column) => column,
  );

  $$TafsirsTableAnnotationComposer get tafsirId {
    final $$TafsirsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tafsirId,
      referencedTable: $db.tafsirs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TafsirsTableAnnotationComposer(
            $db: $db,
            $table: $db.tafsirs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableAnnotationComposer get ayahId {
    final $$AyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TafsirAyahsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TafsirAyahsTable,
          TafsirAyahData,
          $$TafsirAyahsTableFilterComposer,
          $$TafsirAyahsTableOrderingComposer,
          $$TafsirAyahsTableAnnotationComposer,
          $$TafsirAyahsTableCreateCompanionBuilder,
          $$TafsirAyahsTableUpdateCompanionBuilder,
          (TafsirAyahData, $$TafsirAyahsTableReferences),
          TafsirAyahData,
          PrefetchHooks Function({bool tafsirId, bool ayahId})
        > {
  $$TafsirAyahsTableTableManager(_$AppDatabase db, $TafsirAyahsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TafsirAyahsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TafsirAyahsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TafsirAyahsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> tafsirId = const Value.absent(),
                Value<int> ayahId = const Value.absent(),
                Value<String> tafsirText = const Value.absent(),
              }) => TafsirAyahsCompanion(
                id: id,
                tafsirId: tafsirId,
                ayahId: ayahId,
                tafsirText: tafsirText,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int tafsirId,
                required int ayahId,
                required String tafsirText,
              }) => TafsirAyahsCompanion.insert(
                id: id,
                tafsirId: tafsirId,
                ayahId: ayahId,
                tafsirText: tafsirText,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TafsirAyahsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({tafsirId = false, ayahId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (tafsirId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tafsirId,
                                referencedTable: $$TafsirAyahsTableReferences
                                    ._tafsirIdTable(db),
                                referencedColumn: $$TafsirAyahsTableReferences
                                    ._tafsirIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (ayahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ayahId,
                                referencedTable: $$TafsirAyahsTableReferences
                                    ._ayahIdTable(db),
                                referencedColumn: $$TafsirAyahsTableReferences
                                    ._ayahIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TafsirAyahsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TafsirAyahsTable,
      TafsirAyahData,
      $$TafsirAyahsTableFilterComposer,
      $$TafsirAyahsTableOrderingComposer,
      $$TafsirAyahsTableAnnotationComposer,
      $$TafsirAyahsTableCreateCompanionBuilder,
      $$TafsirAyahsTableUpdateCompanionBuilder,
      (TafsirAyahData, $$TafsirAyahsTableReferences),
      TafsirAyahData,
      PrefetchHooks Function({bool tafsirId, bool ayahId})
    >;
typedef $$RecitersTableCreateCompanionBuilder =
    RecitersCompanion Function({
      Value<int> id,
      required String slug,
      required String name,
      Value<String?> imageUrl,
      Value<String?> description,
    });
typedef $$RecitersTableUpdateCompanionBuilder =
    RecitersCompanion Function({
      Value<int> id,
      Value<String> slug,
      Value<String> name,
      Value<String?> imageUrl,
      Value<String?> description,
    });

final class $$RecitersTableReferences
    extends BaseReferences<_$AppDatabase, $RecitersTable, ReciterData> {
  $$RecitersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AudioPacksTable, List<AudioPackData>>
  _audioPacksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.audioPacks,
    aliasName: $_aliasNameGenerator(db.reciters.id, db.audioPacks.reciterId),
  );

  $$AudioPacksTableProcessedTableManager get audioPacksRefs {
    final manager = $$AudioPacksTableTableManager(
      $_db,
      $_db.audioPacks,
    ).filter((f) => f.reciterId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_audioPacksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FavoriteRecitersTable, List<FavoriteReciterData>>
  _favoriteRecitersRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.favoriteReciters,
    aliasName: $_aliasNameGenerator(
      db.reciters.id,
      db.favoriteReciters.reciterId,
    ),
  );

  $$FavoriteRecitersTableProcessedTableManager get favoriteRecitersRefs {
    final manager = $$FavoriteRecitersTableTableManager(
      $_db,
      $_db.favoriteReciters,
    ).filter((f) => f.reciterId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _favoriteRecitersRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RecitersTableFilterComposer
    extends Composer<_$AppDatabase, $RecitersTable> {
  $$RecitersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> audioPacksRefs(
    Expression<bool> Function($$AudioPacksTableFilterComposer f) f,
  ) {
    final $$AudioPacksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.audioPacks,
      getReferencedColumn: (t) => t.reciterId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioPacksTableFilterComposer(
            $db: $db,
            $table: $db.audioPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> favoriteRecitersRefs(
    Expression<bool> Function($$FavoriteRecitersTableFilterComposer f) f,
  ) {
    final $$FavoriteRecitersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favoriteReciters,
      getReferencedColumn: (t) => t.reciterId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoriteRecitersTableFilterComposer(
            $db: $db,
            $table: $db.favoriteReciters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RecitersTableOrderingComposer
    extends Composer<_$AppDatabase, $RecitersTable> {
  $$RecitersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RecitersTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecitersTable> {
  $$RecitersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  Expression<T> audioPacksRefs<T extends Object>(
    Expression<T> Function($$AudioPacksTableAnnotationComposer a) f,
  ) {
    final $$AudioPacksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.audioPacks,
      getReferencedColumn: (t) => t.reciterId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioPacksTableAnnotationComposer(
            $db: $db,
            $table: $db.audioPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> favoriteRecitersRefs<T extends Object>(
    Expression<T> Function($$FavoriteRecitersTableAnnotationComposer a) f,
  ) {
    final $$FavoriteRecitersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favoriteReciters,
      getReferencedColumn: (t) => t.reciterId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoriteRecitersTableAnnotationComposer(
            $db: $db,
            $table: $db.favoriteReciters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RecitersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecitersTable,
          ReciterData,
          $$RecitersTableFilterComposer,
          $$RecitersTableOrderingComposer,
          $$RecitersTableAnnotationComposer,
          $$RecitersTableCreateCompanionBuilder,
          $$RecitersTableUpdateCompanionBuilder,
          (ReciterData, $$RecitersTableReferences),
          ReciterData,
          PrefetchHooks Function({
            bool audioPacksRefs,
            bool favoriteRecitersRefs,
          })
        > {
  $$RecitersTableTableManager(_$AppDatabase db, $RecitersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecitersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecitersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecitersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> slug = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> description = const Value.absent(),
              }) => RecitersCompanion(
                id: id,
                slug: slug,
                name: name,
                imageUrl: imageUrl,
                description: description,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String slug,
                required String name,
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> description = const Value.absent(),
              }) => RecitersCompanion.insert(
                id: id,
                slug: slug,
                name: name,
                imageUrl: imageUrl,
                description: description,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecitersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({audioPacksRefs = false, favoriteRecitersRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (audioPacksRefs) db.audioPacks,
                    if (favoriteRecitersRefs) db.favoriteReciters,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (audioPacksRefs)
                        await $_getPrefetchedData<
                          ReciterData,
                          $RecitersTable,
                          AudioPackData
                        >(
                          currentTable: table,
                          referencedTable: $$RecitersTableReferences
                              ._audioPacksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecitersTableReferences(
                                db,
                                table,
                                p0,
                              ).audioPacksRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.reciterId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (favoriteRecitersRefs)
                        await $_getPrefetchedData<
                          ReciterData,
                          $RecitersTable,
                          FavoriteReciterData
                        >(
                          currentTable: table,
                          referencedTable: $$RecitersTableReferences
                              ._favoriteRecitersRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecitersTableReferences(
                                db,
                                table,
                                p0,
                              ).favoriteRecitersRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.reciterId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RecitersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecitersTable,
      ReciterData,
      $$RecitersTableFilterComposer,
      $$RecitersTableOrderingComposer,
      $$RecitersTableAnnotationComposer,
      $$RecitersTableCreateCompanionBuilder,
      $$RecitersTableUpdateCompanionBuilder,
      (ReciterData, $$RecitersTableReferences),
      ReciterData,
      PrefetchHooks Function({bool audioPacksRefs, bool favoriteRecitersRefs})
    >;
typedef $$AudioPacksTableCreateCompanionBuilder =
    AudioPacksCompanion Function({
      Value<int> id,
      required int reciterId,
      required String quality,
      required int sizeBytes,
      required String version,
    });
typedef $$AudioPacksTableUpdateCompanionBuilder =
    AudioPacksCompanion Function({
      Value<int> id,
      Value<int> reciterId,
      Value<String> quality,
      Value<int> sizeBytes,
      Value<String> version,
    });

final class $$AudioPacksTableReferences
    extends BaseReferences<_$AppDatabase, $AudioPacksTable, AudioPackData> {
  $$AudioPacksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecitersTable _reciterIdTable(_$AppDatabase db) =>
      db.reciters.createAlias(
        $_aliasNameGenerator(db.audioPacks.reciterId, db.reciters.id),
      );

  $$RecitersTableProcessedTableManager get reciterId {
    final $_column = $_itemColumn<int>('reciter_id')!;

    final manager = $$RecitersTableTableManager(
      $_db,
      $_db.reciters,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_reciterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$AudioFilesTable, List<AudioFileData>>
  _audioFilesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.audioFiles,
    aliasName: $_aliasNameGenerator(
      db.audioPacks.id,
      db.audioFiles.audioPackId,
    ),
  );

  $$AudioFilesTableProcessedTableManager get audioFilesRefs {
    final manager = $$AudioFilesTableTableManager(
      $_db,
      $_db.audioFiles,
    ).filter((f) => f.audioPackId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_audioFilesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AudioPacksTableFilterComposer
    extends Composer<_$AppDatabase, $AudioPacksTable> {
  $$AudioPacksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get quality => $composableBuilder(
    column: $table.quality,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sizeBytes => $composableBuilder(
    column: $table.sizeBytes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  $$RecitersTableFilterComposer get reciterId {
    final $$RecitersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.reciterId,
      referencedTable: $db.reciters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecitersTableFilterComposer(
            $db: $db,
            $table: $db.reciters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> audioFilesRefs(
    Expression<bool> Function($$AudioFilesTableFilterComposer f) f,
  ) {
    final $$AudioFilesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.audioFiles,
      getReferencedColumn: (t) => t.audioPackId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioFilesTableFilterComposer(
            $db: $db,
            $table: $db.audioFiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AudioPacksTableOrderingComposer
    extends Composer<_$AppDatabase, $AudioPacksTable> {
  $$AudioPacksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get quality => $composableBuilder(
    column: $table.quality,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sizeBytes => $composableBuilder(
    column: $table.sizeBytes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecitersTableOrderingComposer get reciterId {
    final $$RecitersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.reciterId,
      referencedTable: $db.reciters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecitersTableOrderingComposer(
            $db: $db,
            $table: $db.reciters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AudioPacksTableAnnotationComposer
    extends Composer<_$AppDatabase, $AudioPacksTable> {
  $$AudioPacksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get quality =>
      $composableBuilder(column: $table.quality, builder: (column) => column);

  GeneratedColumn<int> get sizeBytes =>
      $composableBuilder(column: $table.sizeBytes, builder: (column) => column);

  GeneratedColumn<String> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  $$RecitersTableAnnotationComposer get reciterId {
    final $$RecitersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.reciterId,
      referencedTable: $db.reciters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecitersTableAnnotationComposer(
            $db: $db,
            $table: $db.reciters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> audioFilesRefs<T extends Object>(
    Expression<T> Function($$AudioFilesTableAnnotationComposer a) f,
  ) {
    final $$AudioFilesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.audioFiles,
      getReferencedColumn: (t) => t.audioPackId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioFilesTableAnnotationComposer(
            $db: $db,
            $table: $db.audioFiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AudioPacksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AudioPacksTable,
          AudioPackData,
          $$AudioPacksTableFilterComposer,
          $$AudioPacksTableOrderingComposer,
          $$AudioPacksTableAnnotationComposer,
          $$AudioPacksTableCreateCompanionBuilder,
          $$AudioPacksTableUpdateCompanionBuilder,
          (AudioPackData, $$AudioPacksTableReferences),
          AudioPackData,
          PrefetchHooks Function({bool reciterId, bool audioFilesRefs})
        > {
  $$AudioPacksTableTableManager(_$AppDatabase db, $AudioPacksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AudioPacksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AudioPacksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AudioPacksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> reciterId = const Value.absent(),
                Value<String> quality = const Value.absent(),
                Value<int> sizeBytes = const Value.absent(),
                Value<String> version = const Value.absent(),
              }) => AudioPacksCompanion(
                id: id,
                reciterId: reciterId,
                quality: quality,
                sizeBytes: sizeBytes,
                version: version,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int reciterId,
                required String quality,
                required int sizeBytes,
                required String version,
              }) => AudioPacksCompanion.insert(
                id: id,
                reciterId: reciterId,
                quality: quality,
                sizeBytes: sizeBytes,
                version: version,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$AudioPacksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({reciterId = false, audioFilesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (audioFilesRefs) db.audioFiles],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (reciterId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.reciterId,
                                referencedTable: $$AudioPacksTableReferences
                                    ._reciterIdTable(db),
                                referencedColumn: $$AudioPacksTableReferences
                                    ._reciterIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (audioFilesRefs)
                    await $_getPrefetchedData<
                      AudioPackData,
                      $AudioPacksTable,
                      AudioFileData
                    >(
                      currentTable: table,
                      referencedTable: $$AudioPacksTableReferences
                          ._audioFilesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$AudioPacksTableReferences(
                            db,
                            table,
                            p0,
                          ).audioFilesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.audioPackId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$AudioPacksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AudioPacksTable,
      AudioPackData,
      $$AudioPacksTableFilterComposer,
      $$AudioPacksTableOrderingComposer,
      $$AudioPacksTableAnnotationComposer,
      $$AudioPacksTableCreateCompanionBuilder,
      $$AudioPacksTableUpdateCompanionBuilder,
      (AudioPackData, $$AudioPacksTableReferences),
      AudioPackData,
      PrefetchHooks Function({bool reciterId, bool audioFilesRefs})
    >;
typedef $$AudioFilesTableCreateCompanionBuilder =
    AudioFilesCompanion Function({
      Value<int> id,
      required int audioPackId,
      required int surahId,
      required String remoteUrl,
      Value<String?> localPath,
      required int durationSeconds,
      required String checksum,
    });
typedef $$AudioFilesTableUpdateCompanionBuilder =
    AudioFilesCompanion Function({
      Value<int> id,
      Value<int> audioPackId,
      Value<int> surahId,
      Value<String> remoteUrl,
      Value<String?> localPath,
      Value<int> durationSeconds,
      Value<String> checksum,
    });

final class $$AudioFilesTableReferences
    extends BaseReferences<_$AppDatabase, $AudioFilesTable, AudioFileData> {
  $$AudioFilesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AudioPacksTable _audioPackIdTable(_$AppDatabase db) =>
      db.audioPacks.createAlias(
        $_aliasNameGenerator(db.audioFiles.audioPackId, db.audioPacks.id),
      );

  $$AudioPacksTableProcessedTableManager get audioPackId {
    final $_column = $_itemColumn<int>('audio_pack_id')!;

    final manager = $$AudioPacksTableTableManager(
      $_db,
      $_db.audioPacks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_audioPackIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $SurahsTable _surahIdTable(_$AppDatabase db) => db.surahs.createAlias(
    $_aliasNameGenerator(db.audioFiles.surahId, db.surahs.id),
  );

  $$SurahsTableProcessedTableManager get surahId {
    final $_column = $_itemColumn<int>('surah_id')!;

    final manager = $$SurahsTableTableManager(
      $_db,
      $_db.surahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_surahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$AudioFilesTableFilterComposer
    extends Composer<_$AppDatabase, $AudioFilesTable> {
  $$AudioFilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get remoteUrl => $composableBuilder(
    column: $table.remoteUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get localPath => $composableBuilder(
    column: $table.localPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checksum => $composableBuilder(
    column: $table.checksum,
    builder: (column) => ColumnFilters(column),
  );

  $$AudioPacksTableFilterComposer get audioPackId {
    final $$AudioPacksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.audioPackId,
      referencedTable: $db.audioPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioPacksTableFilterComposer(
            $db: $db,
            $table: $db.audioPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SurahsTableFilterComposer get surahId {
    final $$SurahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableFilterComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AudioFilesTableOrderingComposer
    extends Composer<_$AppDatabase, $AudioFilesTable> {
  $$AudioFilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get remoteUrl => $composableBuilder(
    column: $table.remoteUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localPath => $composableBuilder(
    column: $table.localPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checksum => $composableBuilder(
    column: $table.checksum,
    builder: (column) => ColumnOrderings(column),
  );

  $$AudioPacksTableOrderingComposer get audioPackId {
    final $$AudioPacksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.audioPackId,
      referencedTable: $db.audioPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioPacksTableOrderingComposer(
            $db: $db,
            $table: $db.audioPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SurahsTableOrderingComposer get surahId {
    final $$SurahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableOrderingComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AudioFilesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AudioFilesTable> {
  $$AudioFilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get remoteUrl =>
      $composableBuilder(column: $table.remoteUrl, builder: (column) => column);

  GeneratedColumn<String> get localPath =>
      $composableBuilder(column: $table.localPath, builder: (column) => column);

  GeneratedColumn<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<String> get checksum =>
      $composableBuilder(column: $table.checksum, builder: (column) => column);

  $$AudioPacksTableAnnotationComposer get audioPackId {
    final $$AudioPacksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.audioPackId,
      referencedTable: $db.audioPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AudioPacksTableAnnotationComposer(
            $db: $db,
            $table: $db.audioPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SurahsTableAnnotationComposer get surahId {
    final $$SurahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableAnnotationComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AudioFilesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AudioFilesTable,
          AudioFileData,
          $$AudioFilesTableFilterComposer,
          $$AudioFilesTableOrderingComposer,
          $$AudioFilesTableAnnotationComposer,
          $$AudioFilesTableCreateCompanionBuilder,
          $$AudioFilesTableUpdateCompanionBuilder,
          (AudioFileData, $$AudioFilesTableReferences),
          AudioFileData,
          PrefetchHooks Function({bool audioPackId, bool surahId})
        > {
  $$AudioFilesTableTableManager(_$AppDatabase db, $AudioFilesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AudioFilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AudioFilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AudioFilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> audioPackId = const Value.absent(),
                Value<int> surahId = const Value.absent(),
                Value<String> remoteUrl = const Value.absent(),
                Value<String?> localPath = const Value.absent(),
                Value<int> durationSeconds = const Value.absent(),
                Value<String> checksum = const Value.absent(),
              }) => AudioFilesCompanion(
                id: id,
                audioPackId: audioPackId,
                surahId: surahId,
                remoteUrl: remoteUrl,
                localPath: localPath,
                durationSeconds: durationSeconds,
                checksum: checksum,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int audioPackId,
                required int surahId,
                required String remoteUrl,
                Value<String?> localPath = const Value.absent(),
                required int durationSeconds,
                required String checksum,
              }) => AudioFilesCompanion.insert(
                id: id,
                audioPackId: audioPackId,
                surahId: surahId,
                remoteUrl: remoteUrl,
                localPath: localPath,
                durationSeconds: durationSeconds,
                checksum: checksum,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$AudioFilesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({audioPackId = false, surahId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (audioPackId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.audioPackId,
                                referencedTable: $$AudioFilesTableReferences
                                    ._audioPackIdTable(db),
                                referencedColumn: $$AudioFilesTableReferences
                                    ._audioPackIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (surahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.surahId,
                                referencedTable: $$AudioFilesTableReferences
                                    ._surahIdTable(db),
                                referencedColumn: $$AudioFilesTableReferences
                                    ._surahIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$AudioFilesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AudioFilesTable,
      AudioFileData,
      $$AudioFilesTableFilterComposer,
      $$AudioFilesTableOrderingComposer,
      $$AudioFilesTableAnnotationComposer,
      $$AudioFilesTableCreateCompanionBuilder,
      $$AudioFilesTableUpdateCompanionBuilder,
      (AudioFileData, $$AudioFilesTableReferences),
      AudioFileData,
      PrefetchHooks Function({bool audioPackId, bool surahId})
    >;
typedef $$ContentPacksTableCreateCompanionBuilder =
    ContentPacksCompanion Function({
      Value<int> id,
      required String type,
      required String languageCode,
      required String version,
      required int sizeBytes,
      required String checksum,
      required DateTime publishedAt,
    });
typedef $$ContentPacksTableUpdateCompanionBuilder =
    ContentPacksCompanion Function({
      Value<int> id,
      Value<String> type,
      Value<String> languageCode,
      Value<String> version,
      Value<int> sizeBytes,
      Value<String> checksum,
      Value<DateTime> publishedAt,
    });

final class $$ContentPacksTableReferences
    extends BaseReferences<_$AppDatabase, $ContentPacksTable, ContentPackData> {
  $$ContentPacksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $InstalledPackagesTable,
    List<InstalledPackageData>
  >
  _installedPackagesRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.installedPackages,
        aliasName: $_aliasNameGenerator(
          db.contentPacks.id,
          db.installedPackages.packageId,
        ),
      );

  $$InstalledPackagesTableProcessedTableManager get installedPackagesRefs {
    final manager = $$InstalledPackagesTableTableManager(
      $_db,
      $_db.installedPackages,
    ).filter((f) => f.packageId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _installedPackagesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$DownloadTasksTable, List<DownloadTaskData>>
  _downloadTasksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.downloadTasks,
    aliasName: $_aliasNameGenerator(
      db.contentPacks.id,
      db.downloadTasks.packageId,
    ),
  );

  $$DownloadTasksTableProcessedTableManager get downloadTasksRefs {
    final manager = $$DownloadTasksTableTableManager(
      $_db,
      $_db.downloadTasks,
    ).filter((f) => f.packageId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_downloadTasksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ContentPacksTableFilterComposer
    extends Composer<_$AppDatabase, $ContentPacksTable> {
  $$ContentPacksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sizeBytes => $composableBuilder(
    column: $table.sizeBytes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checksum => $composableBuilder(
    column: $table.checksum,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get publishedAt => $composableBuilder(
    column: $table.publishedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> installedPackagesRefs(
    Expression<bool> Function($$InstalledPackagesTableFilterComposer f) f,
  ) {
    final $$InstalledPackagesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.installedPackages,
      getReferencedColumn: (t) => t.packageId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstalledPackagesTableFilterComposer(
            $db: $db,
            $table: $db.installedPackages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> downloadTasksRefs(
    Expression<bool> Function($$DownloadTasksTableFilterComposer f) f,
  ) {
    final $$DownloadTasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.downloadTasks,
      getReferencedColumn: (t) => t.packageId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DownloadTasksTableFilterComposer(
            $db: $db,
            $table: $db.downloadTasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ContentPacksTableOrderingComposer
    extends Composer<_$AppDatabase, $ContentPacksTable> {
  $$ContentPacksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sizeBytes => $composableBuilder(
    column: $table.sizeBytes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checksum => $composableBuilder(
    column: $table.checksum,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get publishedAt => $composableBuilder(
    column: $table.publishedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ContentPacksTableAnnotationComposer
    extends Composer<_$AppDatabase, $ContentPacksTable> {
  $$ContentPacksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<int> get sizeBytes =>
      $composableBuilder(column: $table.sizeBytes, builder: (column) => column);

  GeneratedColumn<String> get checksum =>
      $composableBuilder(column: $table.checksum, builder: (column) => column);

  GeneratedColumn<DateTime> get publishedAt => $composableBuilder(
    column: $table.publishedAt,
    builder: (column) => column,
  );

  Expression<T> installedPackagesRefs<T extends Object>(
    Expression<T> Function($$InstalledPackagesTableAnnotationComposer a) f,
  ) {
    final $$InstalledPackagesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.installedPackages,
          getReferencedColumn: (t) => t.packageId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$InstalledPackagesTableAnnotationComposer(
                $db: $db,
                $table: $db.installedPackages,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> downloadTasksRefs<T extends Object>(
    Expression<T> Function($$DownloadTasksTableAnnotationComposer a) f,
  ) {
    final $$DownloadTasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.downloadTasks,
      getReferencedColumn: (t) => t.packageId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DownloadTasksTableAnnotationComposer(
            $db: $db,
            $table: $db.downloadTasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ContentPacksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ContentPacksTable,
          ContentPackData,
          $$ContentPacksTableFilterComposer,
          $$ContentPacksTableOrderingComposer,
          $$ContentPacksTableAnnotationComposer,
          $$ContentPacksTableCreateCompanionBuilder,
          $$ContentPacksTableUpdateCompanionBuilder,
          (ContentPackData, $$ContentPacksTableReferences),
          ContentPackData,
          PrefetchHooks Function({
            bool installedPackagesRefs,
            bool downloadTasksRefs,
          })
        > {
  $$ContentPacksTableTableManager(_$AppDatabase db, $ContentPacksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ContentPacksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ContentPacksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ContentPacksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> languageCode = const Value.absent(),
                Value<String> version = const Value.absent(),
                Value<int> sizeBytes = const Value.absent(),
                Value<String> checksum = const Value.absent(),
                Value<DateTime> publishedAt = const Value.absent(),
              }) => ContentPacksCompanion(
                id: id,
                type: type,
                languageCode: languageCode,
                version: version,
                sizeBytes: sizeBytes,
                checksum: checksum,
                publishedAt: publishedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String type,
                required String languageCode,
                required String version,
                required int sizeBytes,
                required String checksum,
                required DateTime publishedAt,
              }) => ContentPacksCompanion.insert(
                id: id,
                type: type,
                languageCode: languageCode,
                version: version,
                sizeBytes: sizeBytes,
                checksum: checksum,
                publishedAt: publishedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ContentPacksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({installedPackagesRefs = false, downloadTasksRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (installedPackagesRefs) db.installedPackages,
                    if (downloadTasksRefs) db.downloadTasks,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (installedPackagesRefs)
                        await $_getPrefetchedData<
                          ContentPackData,
                          $ContentPacksTable,
                          InstalledPackageData
                        >(
                          currentTable: table,
                          referencedTable: $$ContentPacksTableReferences
                              ._installedPackagesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ContentPacksTableReferences(
                                db,
                                table,
                                p0,
                              ).installedPackagesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.packageId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (downloadTasksRefs)
                        await $_getPrefetchedData<
                          ContentPackData,
                          $ContentPacksTable,
                          DownloadTaskData
                        >(
                          currentTable: table,
                          referencedTable: $$ContentPacksTableReferences
                              ._downloadTasksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ContentPacksTableReferences(
                                db,
                                table,
                                p0,
                              ).downloadTasksRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.packageId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ContentPacksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ContentPacksTable,
      ContentPackData,
      $$ContentPacksTableFilterComposer,
      $$ContentPacksTableOrderingComposer,
      $$ContentPacksTableAnnotationComposer,
      $$ContentPacksTableCreateCompanionBuilder,
      $$ContentPacksTableUpdateCompanionBuilder,
      (ContentPackData, $$ContentPacksTableReferences),
      ContentPackData,
      PrefetchHooks Function({
        bool installedPackagesRefs,
        bool downloadTasksRefs,
      })
    >;
typedef $$InstalledPackagesTableCreateCompanionBuilder =
    InstalledPackagesCompanion Function({
      Value<int> id,
      required int packageId,
      required String installedVersion,
      required DateTime installedAt,
      required String status,
    });
typedef $$InstalledPackagesTableUpdateCompanionBuilder =
    InstalledPackagesCompanion Function({
      Value<int> id,
      Value<int> packageId,
      Value<String> installedVersion,
      Value<DateTime> installedAt,
      Value<String> status,
    });

final class $$InstalledPackagesTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $InstalledPackagesTable,
          InstalledPackageData
        > {
  $$InstalledPackagesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ContentPacksTable _packageIdTable(_$AppDatabase db) =>
      db.contentPacks.createAlias(
        $_aliasNameGenerator(
          db.installedPackages.packageId,
          db.contentPacks.id,
        ),
      );

  $$ContentPacksTableProcessedTableManager get packageId {
    final $_column = $_itemColumn<int>('package_id')!;

    final manager = $$ContentPacksTableTableManager(
      $_db,
      $_db.contentPacks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_packageIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$InstalledPackagesTableFilterComposer
    extends Composer<_$AppDatabase, $InstalledPackagesTable> {
  $$InstalledPackagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get installedVersion => $composableBuilder(
    column: $table.installedVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get installedAt => $composableBuilder(
    column: $table.installedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  $$ContentPacksTableFilterComposer get packageId {
    final $$ContentPacksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.packageId,
      referencedTable: $db.contentPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ContentPacksTableFilterComposer(
            $db: $db,
            $table: $db.contentPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InstalledPackagesTableOrderingComposer
    extends Composer<_$AppDatabase, $InstalledPackagesTable> {
  $$InstalledPackagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get installedVersion => $composableBuilder(
    column: $table.installedVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get installedAt => $composableBuilder(
    column: $table.installedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  $$ContentPacksTableOrderingComposer get packageId {
    final $$ContentPacksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.packageId,
      referencedTable: $db.contentPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ContentPacksTableOrderingComposer(
            $db: $db,
            $table: $db.contentPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InstalledPackagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $InstalledPackagesTable> {
  $$InstalledPackagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get installedVersion => $composableBuilder(
    column: $table.installedVersion,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get installedAt => $composableBuilder(
    column: $table.installedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$ContentPacksTableAnnotationComposer get packageId {
    final $$ContentPacksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.packageId,
      referencedTable: $db.contentPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ContentPacksTableAnnotationComposer(
            $db: $db,
            $table: $db.contentPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InstalledPackagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $InstalledPackagesTable,
          InstalledPackageData,
          $$InstalledPackagesTableFilterComposer,
          $$InstalledPackagesTableOrderingComposer,
          $$InstalledPackagesTableAnnotationComposer,
          $$InstalledPackagesTableCreateCompanionBuilder,
          $$InstalledPackagesTableUpdateCompanionBuilder,
          (InstalledPackageData, $$InstalledPackagesTableReferences),
          InstalledPackageData,
          PrefetchHooks Function({bool packageId})
        > {
  $$InstalledPackagesTableTableManager(
    _$AppDatabase db,
    $InstalledPackagesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$InstalledPackagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$InstalledPackagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$InstalledPackagesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> packageId = const Value.absent(),
                Value<String> installedVersion = const Value.absent(),
                Value<DateTime> installedAt = const Value.absent(),
                Value<String> status = const Value.absent(),
              }) => InstalledPackagesCompanion(
                id: id,
                packageId: packageId,
                installedVersion: installedVersion,
                installedAt: installedAt,
                status: status,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int packageId,
                required String installedVersion,
                required DateTime installedAt,
                required String status,
              }) => InstalledPackagesCompanion.insert(
                id: id,
                packageId: packageId,
                installedVersion: installedVersion,
                installedAt: installedAt,
                status: status,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$InstalledPackagesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({packageId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (packageId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.packageId,
                                referencedTable:
                                    $$InstalledPackagesTableReferences
                                        ._packageIdTable(db),
                                referencedColumn:
                                    $$InstalledPackagesTableReferences
                                        ._packageIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$InstalledPackagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $InstalledPackagesTable,
      InstalledPackageData,
      $$InstalledPackagesTableFilterComposer,
      $$InstalledPackagesTableOrderingComposer,
      $$InstalledPackagesTableAnnotationComposer,
      $$InstalledPackagesTableCreateCompanionBuilder,
      $$InstalledPackagesTableUpdateCompanionBuilder,
      (InstalledPackageData, $$InstalledPackagesTableReferences),
      InstalledPackageData,
      PrefetchHooks Function({bool packageId})
    >;
typedef $$ReadingProgressTableTableCreateCompanionBuilder =
    ReadingProgressTableCompanion Function({
      Value<int> id,
      required int surahId,
      required int ayahId,
      Value<bool> completed,
      required DateTime lastOpenedAt,
      required DateTime updatedAt,
    });
typedef $$ReadingProgressTableTableUpdateCompanionBuilder =
    ReadingProgressTableCompanion Function({
      Value<int> id,
      Value<int> surahId,
      Value<int> ayahId,
      Value<bool> completed,
      Value<DateTime> lastOpenedAt,
      Value<DateTime> updatedAt,
    });

final class $$ReadingProgressTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ReadingProgressTableTable,
          ReadingProgressData
        > {
  $$ReadingProgressTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SurahsTable _surahIdTable(_$AppDatabase db) => db.surahs.createAlias(
    $_aliasNameGenerator(db.readingProgressTable.surahId, db.surahs.id),
  );

  $$SurahsTableProcessedTableManager get surahId {
    final $_column = $_itemColumn<int>('surah_id')!;

    final manager = $$SurahsTableTableManager(
      $_db,
      $_db.surahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_surahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AyahsTable _ayahIdTable(_$AppDatabase db) => db.ayahs.createAlias(
    $_aliasNameGenerator(db.readingProgressTable.ayahId, db.ayahs.id),
  );

  $$AyahsTableProcessedTableManager get ayahId {
    final $_column = $_itemColumn<int>('ayah_id')!;

    final manager = $$AyahsTableTableManager(
      $_db,
      $_db.ayahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ayahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ReadingProgressTableTableFilterComposer
    extends Composer<_$AppDatabase, $ReadingProgressTableTable> {
  $$ReadingProgressTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastOpenedAt => $composableBuilder(
    column: $table.lastOpenedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$SurahsTableFilterComposer get surahId {
    final $$SurahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableFilterComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableFilterComposer get ayahId {
    final $$AyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableFilterComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReadingProgressTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ReadingProgressTableTable> {
  $$ReadingProgressTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastOpenedAt => $composableBuilder(
    column: $table.lastOpenedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$SurahsTableOrderingComposer get surahId {
    final $$SurahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableOrderingComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableOrderingComposer get ayahId {
    final $$AyahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableOrderingComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReadingProgressTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReadingProgressTableTable> {
  $$ReadingProgressTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);

  GeneratedColumn<DateTime> get lastOpenedAt => $composableBuilder(
    column: $table.lastOpenedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$SurahsTableAnnotationComposer get surahId {
    final $$SurahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableAnnotationComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableAnnotationComposer get ayahId {
    final $$AyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReadingProgressTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReadingProgressTableTable,
          ReadingProgressData,
          $$ReadingProgressTableTableFilterComposer,
          $$ReadingProgressTableTableOrderingComposer,
          $$ReadingProgressTableTableAnnotationComposer,
          $$ReadingProgressTableTableCreateCompanionBuilder,
          $$ReadingProgressTableTableUpdateCompanionBuilder,
          (ReadingProgressData, $$ReadingProgressTableTableReferences),
          ReadingProgressData,
          PrefetchHooks Function({bool surahId, bool ayahId})
        > {
  $$ReadingProgressTableTableTableManager(
    _$AppDatabase db,
    $ReadingProgressTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReadingProgressTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReadingProgressTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ReadingProgressTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> surahId = const Value.absent(),
                Value<int> ayahId = const Value.absent(),
                Value<bool> completed = const Value.absent(),
                Value<DateTime> lastOpenedAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => ReadingProgressTableCompanion(
                id: id,
                surahId: surahId,
                ayahId: ayahId,
                completed: completed,
                lastOpenedAt: lastOpenedAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int surahId,
                required int ayahId,
                Value<bool> completed = const Value.absent(),
                required DateTime lastOpenedAt,
                required DateTime updatedAt,
              }) => ReadingProgressTableCompanion.insert(
                id: id,
                surahId: surahId,
                ayahId: ayahId,
                completed: completed,
                lastOpenedAt: lastOpenedAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ReadingProgressTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({surahId = false, ayahId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (surahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.surahId,
                                referencedTable:
                                    $$ReadingProgressTableTableReferences
                                        ._surahIdTable(db),
                                referencedColumn:
                                    $$ReadingProgressTableTableReferences
                                        ._surahIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (ayahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ayahId,
                                referencedTable:
                                    $$ReadingProgressTableTableReferences
                                        ._ayahIdTable(db),
                                referencedColumn:
                                    $$ReadingProgressTableTableReferences
                                        ._ayahIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ReadingProgressTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReadingProgressTableTable,
      ReadingProgressData,
      $$ReadingProgressTableTableFilterComposer,
      $$ReadingProgressTableTableOrderingComposer,
      $$ReadingProgressTableTableAnnotationComposer,
      $$ReadingProgressTableTableCreateCompanionBuilder,
      $$ReadingProgressTableTableUpdateCompanionBuilder,
      (ReadingProgressData, $$ReadingProgressTableTableReferences),
      ReadingProgressData,
      PrefetchHooks Function({bool surahId, bool ayahId})
    >;
typedef $$ReadingSessionsTableCreateCompanionBuilder =
    ReadingSessionsCompanion Function({
      Value<int> id,
      required DateTime startedAt,
      Value<DateTime?> endedAt,
      required int surahId,
      required int ayahsRead,
      required int durationSeconds,
    });
typedef $$ReadingSessionsTableUpdateCompanionBuilder =
    ReadingSessionsCompanion Function({
      Value<int> id,
      Value<DateTime> startedAt,
      Value<DateTime?> endedAt,
      Value<int> surahId,
      Value<int> ayahsRead,
      Value<int> durationSeconds,
    });

final class $$ReadingSessionsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ReadingSessionsTable,
          ReadingSessionData
        > {
  $$ReadingSessionsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SurahsTable _surahIdTable(_$AppDatabase db) => db.surahs.createAlias(
    $_aliasNameGenerator(db.readingSessions.surahId, db.surahs.id),
  );

  $$SurahsTableProcessedTableManager get surahId {
    final $_column = $_itemColumn<int>('surah_id')!;

    final manager = $$SurahsTableTableManager(
      $_db,
      $_db.surahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_surahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ReadingSessionsTableFilterComposer
    extends Composer<_$AppDatabase, $ReadingSessionsTable> {
  $$ReadingSessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endedAt => $composableBuilder(
    column: $table.endedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ayahsRead => $composableBuilder(
    column: $table.ayahsRead,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnFilters(column),
  );

  $$SurahsTableFilterComposer get surahId {
    final $$SurahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableFilterComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReadingSessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReadingSessionsTable> {
  $$ReadingSessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endedAt => $composableBuilder(
    column: $table.endedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ayahsRead => $composableBuilder(
    column: $table.ayahsRead,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  $$SurahsTableOrderingComposer get surahId {
    final $$SurahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableOrderingComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReadingSessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReadingSessionsTable> {
  $$ReadingSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startedAt =>
      $composableBuilder(column: $table.startedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endedAt =>
      $composableBuilder(column: $table.endedAt, builder: (column) => column);

  GeneratedColumn<int> get ayahsRead =>
      $composableBuilder(column: $table.ayahsRead, builder: (column) => column);

  GeneratedColumn<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => column,
  );

  $$SurahsTableAnnotationComposer get surahId {
    final $$SurahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableAnnotationComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReadingSessionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReadingSessionsTable,
          ReadingSessionData,
          $$ReadingSessionsTableFilterComposer,
          $$ReadingSessionsTableOrderingComposer,
          $$ReadingSessionsTableAnnotationComposer,
          $$ReadingSessionsTableCreateCompanionBuilder,
          $$ReadingSessionsTableUpdateCompanionBuilder,
          (ReadingSessionData, $$ReadingSessionsTableReferences),
          ReadingSessionData,
          PrefetchHooks Function({bool surahId})
        > {
  $$ReadingSessionsTableTableManager(
    _$AppDatabase db,
    $ReadingSessionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReadingSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReadingSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReadingSessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> startedAt = const Value.absent(),
                Value<DateTime?> endedAt = const Value.absent(),
                Value<int> surahId = const Value.absent(),
                Value<int> ayahsRead = const Value.absent(),
                Value<int> durationSeconds = const Value.absent(),
              }) => ReadingSessionsCompanion(
                id: id,
                startedAt: startedAt,
                endedAt: endedAt,
                surahId: surahId,
                ayahsRead: ayahsRead,
                durationSeconds: durationSeconds,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime startedAt,
                Value<DateTime?> endedAt = const Value.absent(),
                required int surahId,
                required int ayahsRead,
                required int durationSeconds,
              }) => ReadingSessionsCompanion.insert(
                id: id,
                startedAt: startedAt,
                endedAt: endedAt,
                surahId: surahId,
                ayahsRead: ayahsRead,
                durationSeconds: durationSeconds,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ReadingSessionsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({surahId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (surahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.surahId,
                                referencedTable:
                                    $$ReadingSessionsTableReferences
                                        ._surahIdTable(db),
                                referencedColumn:
                                    $$ReadingSessionsTableReferences
                                        ._surahIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ReadingSessionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReadingSessionsTable,
      ReadingSessionData,
      $$ReadingSessionsTableFilterComposer,
      $$ReadingSessionsTableOrderingComposer,
      $$ReadingSessionsTableAnnotationComposer,
      $$ReadingSessionsTableCreateCompanionBuilder,
      $$ReadingSessionsTableUpdateCompanionBuilder,
      (ReadingSessionData, $$ReadingSessionsTableReferences),
      ReadingSessionData,
      PrefetchHooks Function({bool surahId})
    >;
typedef $$LastReadPositionTableCreateCompanionBuilder =
    LastReadPositionCompanion Function({
      Value<int> id,
      required int surahId,
      required int ayahId,
      required DateTime updatedAt,
    });
typedef $$LastReadPositionTableUpdateCompanionBuilder =
    LastReadPositionCompanion Function({
      Value<int> id,
      Value<int> surahId,
      Value<int> ayahId,
      Value<DateTime> updatedAt,
    });

final class $$LastReadPositionTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $LastReadPositionTable,
          LastReadPositionData
        > {
  $$LastReadPositionTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SurahsTable _surahIdTable(_$AppDatabase db) => db.surahs.createAlias(
    $_aliasNameGenerator(db.lastReadPosition.surahId, db.surahs.id),
  );

  $$SurahsTableProcessedTableManager get surahId {
    final $_column = $_itemColumn<int>('surah_id')!;

    final manager = $$SurahsTableTableManager(
      $_db,
      $_db.surahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_surahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AyahsTable _ayahIdTable(_$AppDatabase db) => db.ayahs.createAlias(
    $_aliasNameGenerator(db.lastReadPosition.ayahId, db.ayahs.id),
  );

  $$AyahsTableProcessedTableManager get ayahId {
    final $_column = $_itemColumn<int>('ayah_id')!;

    final manager = $$AyahsTableTableManager(
      $_db,
      $_db.ayahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ayahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LastReadPositionTableFilterComposer
    extends Composer<_$AppDatabase, $LastReadPositionTable> {
  $$LastReadPositionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$SurahsTableFilterComposer get surahId {
    final $$SurahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableFilterComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableFilterComposer get ayahId {
    final $$AyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableFilterComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LastReadPositionTableOrderingComposer
    extends Composer<_$AppDatabase, $LastReadPositionTable> {
  $$LastReadPositionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$SurahsTableOrderingComposer get surahId {
    final $$SurahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableOrderingComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableOrderingComposer get ayahId {
    final $$AyahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableOrderingComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LastReadPositionTableAnnotationComposer
    extends Composer<_$AppDatabase, $LastReadPositionTable> {
  $$LastReadPositionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$SurahsTableAnnotationComposer get surahId {
    final $$SurahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.surahId,
      referencedTable: $db.surahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SurahsTableAnnotationComposer(
            $db: $db,
            $table: $db.surahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableAnnotationComposer get ayahId {
    final $$AyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LastReadPositionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LastReadPositionTable,
          LastReadPositionData,
          $$LastReadPositionTableFilterComposer,
          $$LastReadPositionTableOrderingComposer,
          $$LastReadPositionTableAnnotationComposer,
          $$LastReadPositionTableCreateCompanionBuilder,
          $$LastReadPositionTableUpdateCompanionBuilder,
          (LastReadPositionData, $$LastReadPositionTableReferences),
          LastReadPositionData,
          PrefetchHooks Function({bool surahId, bool ayahId})
        > {
  $$LastReadPositionTableTableManager(
    _$AppDatabase db,
    $LastReadPositionTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LastReadPositionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LastReadPositionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LastReadPositionTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> surahId = const Value.absent(),
                Value<int> ayahId = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => LastReadPositionCompanion(
                id: id,
                surahId: surahId,
                ayahId: ayahId,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int surahId,
                required int ayahId,
                required DateTime updatedAt,
              }) => LastReadPositionCompanion.insert(
                id: id,
                surahId: surahId,
                ayahId: ayahId,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LastReadPositionTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({surahId = false, ayahId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (surahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.surahId,
                                referencedTable:
                                    $$LastReadPositionTableReferences
                                        ._surahIdTable(db),
                                referencedColumn:
                                    $$LastReadPositionTableReferences
                                        ._surahIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (ayahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ayahId,
                                referencedTable:
                                    $$LastReadPositionTableReferences
                                        ._ayahIdTable(db),
                                referencedColumn:
                                    $$LastReadPositionTableReferences
                                        ._ayahIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LastReadPositionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LastReadPositionTable,
      LastReadPositionData,
      $$LastReadPositionTableFilterComposer,
      $$LastReadPositionTableOrderingComposer,
      $$LastReadPositionTableAnnotationComposer,
      $$LastReadPositionTableCreateCompanionBuilder,
      $$LastReadPositionTableUpdateCompanionBuilder,
      (LastReadPositionData, $$LastReadPositionTableReferences),
      LastReadPositionData,
      PrefetchHooks Function({bool surahId, bool ayahId})
    >;
typedef $$BookmarksTableCreateCompanionBuilder =
    BookmarksCompanion Function({
      Value<int> id,
      required int ayahId,
      Value<String?> note,
      required DateTime createdAt,
      required DateTime updatedAt,
    });
typedef $$BookmarksTableUpdateCompanionBuilder =
    BookmarksCompanion Function({
      Value<int> id,
      Value<int> ayahId,
      Value<String?> note,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
    });

final class $$BookmarksTableReferences
    extends BaseReferences<_$AppDatabase, $BookmarksTable, BookmarkData> {
  $$BookmarksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AyahsTable _ayahIdTable(_$AppDatabase db) => db.ayahs.createAlias(
    $_aliasNameGenerator(db.bookmarks.ayahId, db.ayahs.id),
  );

  $$AyahsTableProcessedTableManager get ayahId {
    final $_column = $_itemColumn<int>('ayah_id')!;

    final manager = $$AyahsTableTableManager(
      $_db,
      $_db.ayahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ayahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$BookmarksTableFilterComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$AyahsTableFilterComposer get ayahId {
    final $$AyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableFilterComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BookmarksTableOrderingComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$AyahsTableOrderingComposer get ayahId {
    final $$AyahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableOrderingComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BookmarksTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$AyahsTableAnnotationComposer get ayahId {
    final $$AyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BookmarksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BookmarksTable,
          BookmarkData,
          $$BookmarksTableFilterComposer,
          $$BookmarksTableOrderingComposer,
          $$BookmarksTableAnnotationComposer,
          $$BookmarksTableCreateCompanionBuilder,
          $$BookmarksTableUpdateCompanionBuilder,
          (BookmarkData, $$BookmarksTableReferences),
          BookmarkData,
          PrefetchHooks Function({bool ayahId})
        > {
  $$BookmarksTableTableManager(_$AppDatabase db, $BookmarksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BookmarksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BookmarksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BookmarksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> ayahId = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => BookmarksCompanion(
                id: id,
                ayahId: ayahId,
                note: note,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int ayahId,
                Value<String?> note = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
              }) => BookmarksCompanion.insert(
                id: id,
                ayahId: ayahId,
                note: note,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$BookmarksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({ayahId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (ayahId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ayahId,
                                referencedTable: $$BookmarksTableReferences
                                    ._ayahIdTable(db),
                                referencedColumn: $$BookmarksTableReferences
                                    ._ayahIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$BookmarksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BookmarksTable,
      BookmarkData,
      $$BookmarksTableFilterComposer,
      $$BookmarksTableOrderingComposer,
      $$BookmarksTableAnnotationComposer,
      $$BookmarksTableCreateCompanionBuilder,
      $$BookmarksTableUpdateCompanionBuilder,
      (BookmarkData, $$BookmarksTableReferences),
      BookmarkData,
      PrefetchHooks Function({bool ayahId})
    >;
typedef $$FavoriteRecitersTableCreateCompanionBuilder =
    FavoriteRecitersCompanion Function({
      Value<int> id,
      required int reciterId,
      required DateTime createdAt,
    });
typedef $$FavoriteRecitersTableUpdateCompanionBuilder =
    FavoriteRecitersCompanion Function({
      Value<int> id,
      Value<int> reciterId,
      Value<DateTime> createdAt,
    });

final class $$FavoriteRecitersTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $FavoriteRecitersTable,
          FavoriteReciterData
        > {
  $$FavoriteRecitersTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RecitersTable _reciterIdTable(_$AppDatabase db) =>
      db.reciters.createAlias(
        $_aliasNameGenerator(db.favoriteReciters.reciterId, db.reciters.id),
      );

  $$RecitersTableProcessedTableManager get reciterId {
    final $_column = $_itemColumn<int>('reciter_id')!;

    final manager = $$RecitersTableTableManager(
      $_db,
      $_db.reciters,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_reciterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FavoriteRecitersTableFilterComposer
    extends Composer<_$AppDatabase, $FavoriteRecitersTable> {
  $$FavoriteRecitersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecitersTableFilterComposer get reciterId {
    final $$RecitersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.reciterId,
      referencedTable: $db.reciters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecitersTableFilterComposer(
            $db: $db,
            $table: $db.reciters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoriteRecitersTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoriteRecitersTable> {
  $$FavoriteRecitersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecitersTableOrderingComposer get reciterId {
    final $$RecitersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.reciterId,
      referencedTable: $db.reciters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecitersTableOrderingComposer(
            $db: $db,
            $table: $db.reciters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoriteRecitersTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoriteRecitersTable> {
  $$FavoriteRecitersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecitersTableAnnotationComposer get reciterId {
    final $$RecitersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.reciterId,
      referencedTable: $db.reciters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecitersTableAnnotationComposer(
            $db: $db,
            $table: $db.reciters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoriteRecitersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoriteRecitersTable,
          FavoriteReciterData,
          $$FavoriteRecitersTableFilterComposer,
          $$FavoriteRecitersTableOrderingComposer,
          $$FavoriteRecitersTableAnnotationComposer,
          $$FavoriteRecitersTableCreateCompanionBuilder,
          $$FavoriteRecitersTableUpdateCompanionBuilder,
          (FavoriteReciterData, $$FavoriteRecitersTableReferences),
          FavoriteReciterData,
          PrefetchHooks Function({bool reciterId})
        > {
  $$FavoriteRecitersTableTableManager(
    _$AppDatabase db,
    $FavoriteRecitersTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoriteRecitersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoriteRecitersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoriteRecitersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> reciterId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => FavoriteRecitersCompanion(
                id: id,
                reciterId: reciterId,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int reciterId,
                required DateTime createdAt,
              }) => FavoriteRecitersCompanion.insert(
                id: id,
                reciterId: reciterId,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FavoriteRecitersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({reciterId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (reciterId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.reciterId,
                                referencedTable:
                                    $$FavoriteRecitersTableReferences
                                        ._reciterIdTable(db),
                                referencedColumn:
                                    $$FavoriteRecitersTableReferences
                                        ._reciterIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FavoriteRecitersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoriteRecitersTable,
      FavoriteReciterData,
      $$FavoriteRecitersTableFilterComposer,
      $$FavoriteRecitersTableOrderingComposer,
      $$FavoriteRecitersTableAnnotationComposer,
      $$FavoriteRecitersTableCreateCompanionBuilder,
      $$FavoriteRecitersTableUpdateCompanionBuilder,
      (FavoriteReciterData, $$FavoriteRecitersTableReferences),
      FavoriteReciterData,
      PrefetchHooks Function({bool reciterId})
    >;
typedef $$ReadingGoalsTableCreateCompanionBuilder =
    ReadingGoalsCompanion Function({
      Value<int> id,
      required String goalType,
      required int targetValue,
      Value<bool> active,
      required DateTime createdAt,
    });
typedef $$ReadingGoalsTableUpdateCompanionBuilder =
    ReadingGoalsCompanion Function({
      Value<int> id,
      Value<String> goalType,
      Value<int> targetValue,
      Value<bool> active,
      Value<DateTime> createdAt,
    });

final class $$ReadingGoalsTableReferences
    extends BaseReferences<_$AppDatabase, $ReadingGoalsTable, ReadingGoalData> {
  $$ReadingGoalsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$GoalProgressTable, List<GoalProgressData>>
  _goalProgressRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.goalProgress,
    aliasName: $_aliasNameGenerator(db.readingGoals.id, db.goalProgress.goalId),
  );

  $$GoalProgressTableProcessedTableManager get goalProgressRefs {
    final manager = $$GoalProgressTableTableManager(
      $_db,
      $_db.goalProgress,
    ).filter((f) => f.goalId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_goalProgressRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ReadingGoalsTableFilterComposer
    extends Composer<_$AppDatabase, $ReadingGoalsTable> {
  $$ReadingGoalsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get goalType => $composableBuilder(
    column: $table.goalType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get active => $composableBuilder(
    column: $table.active,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> goalProgressRefs(
    Expression<bool> Function($$GoalProgressTableFilterComposer f) f,
  ) {
    final $$GoalProgressTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goalProgress,
      getReferencedColumn: (t) => t.goalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalProgressTableFilterComposer(
            $db: $db,
            $table: $db.goalProgress,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ReadingGoalsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReadingGoalsTable> {
  $$ReadingGoalsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get goalType => $composableBuilder(
    column: $table.goalType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get active => $composableBuilder(
    column: $table.active,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ReadingGoalsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReadingGoalsTable> {
  $$ReadingGoalsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get goalType =>
      $composableBuilder(column: $table.goalType, builder: (column) => column);

  GeneratedColumn<int> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get active =>
      $composableBuilder(column: $table.active, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> goalProgressRefs<T extends Object>(
    Expression<T> Function($$GoalProgressTableAnnotationComposer a) f,
  ) {
    final $$GoalProgressTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.goalProgress,
      getReferencedColumn: (t) => t.goalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GoalProgressTableAnnotationComposer(
            $db: $db,
            $table: $db.goalProgress,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ReadingGoalsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReadingGoalsTable,
          ReadingGoalData,
          $$ReadingGoalsTableFilterComposer,
          $$ReadingGoalsTableOrderingComposer,
          $$ReadingGoalsTableAnnotationComposer,
          $$ReadingGoalsTableCreateCompanionBuilder,
          $$ReadingGoalsTableUpdateCompanionBuilder,
          (ReadingGoalData, $$ReadingGoalsTableReferences),
          ReadingGoalData,
          PrefetchHooks Function({bool goalProgressRefs})
        > {
  $$ReadingGoalsTableTableManager(_$AppDatabase db, $ReadingGoalsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReadingGoalsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReadingGoalsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReadingGoalsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> goalType = const Value.absent(),
                Value<int> targetValue = const Value.absent(),
                Value<bool> active = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => ReadingGoalsCompanion(
                id: id,
                goalType: goalType,
                targetValue: targetValue,
                active: active,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String goalType,
                required int targetValue,
                Value<bool> active = const Value.absent(),
                required DateTime createdAt,
              }) => ReadingGoalsCompanion.insert(
                id: id,
                goalType: goalType,
                targetValue: targetValue,
                active: active,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ReadingGoalsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({goalProgressRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (goalProgressRefs) db.goalProgress],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (goalProgressRefs)
                    await $_getPrefetchedData<
                      ReadingGoalData,
                      $ReadingGoalsTable,
                      GoalProgressData
                    >(
                      currentTable: table,
                      referencedTable: $$ReadingGoalsTableReferences
                          ._goalProgressRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ReadingGoalsTableReferences(
                            db,
                            table,
                            p0,
                          ).goalProgressRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.goalId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ReadingGoalsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReadingGoalsTable,
      ReadingGoalData,
      $$ReadingGoalsTableFilterComposer,
      $$ReadingGoalsTableOrderingComposer,
      $$ReadingGoalsTableAnnotationComposer,
      $$ReadingGoalsTableCreateCompanionBuilder,
      $$ReadingGoalsTableUpdateCompanionBuilder,
      (ReadingGoalData, $$ReadingGoalsTableReferences),
      ReadingGoalData,
      PrefetchHooks Function({bool goalProgressRefs})
    >;
typedef $$GoalProgressTableCreateCompanionBuilder =
    GoalProgressCompanion Function({
      Value<int> id,
      required int goalId,
      required String date,
      required int currentValue,
      Value<bool> completed,
    });
typedef $$GoalProgressTableUpdateCompanionBuilder =
    GoalProgressCompanion Function({
      Value<int> id,
      Value<int> goalId,
      Value<String> date,
      Value<int> currentValue,
      Value<bool> completed,
    });

final class $$GoalProgressTableReferences
    extends
        BaseReferences<_$AppDatabase, $GoalProgressTable, GoalProgressData> {
  $$GoalProgressTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ReadingGoalsTable _goalIdTable(_$AppDatabase db) =>
      db.readingGoals.createAlias(
        $_aliasNameGenerator(db.goalProgress.goalId, db.readingGoals.id),
      );

  $$ReadingGoalsTableProcessedTableManager get goalId {
    final $_column = $_itemColumn<int>('goal_id')!;

    final manager = $$ReadingGoalsTableTableManager(
      $_db,
      $_db.readingGoals,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_goalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$GoalProgressTableFilterComposer
    extends Composer<_$AppDatabase, $GoalProgressTable> {
  $$GoalProgressTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get currentValue => $composableBuilder(
    column: $table.currentValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnFilters(column),
  );

  $$ReadingGoalsTableFilterComposer get goalId {
    final $$ReadingGoalsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.readingGoals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReadingGoalsTableFilterComposer(
            $db: $db,
            $table: $db.readingGoals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalProgressTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalProgressTable> {
  $$GoalProgressTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get currentValue => $composableBuilder(
    column: $table.currentValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnOrderings(column),
  );

  $$ReadingGoalsTableOrderingComposer get goalId {
    final $$ReadingGoalsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.readingGoals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReadingGoalsTableOrderingComposer(
            $db: $db,
            $table: $db.readingGoals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalProgressTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalProgressTable> {
  $$GoalProgressTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get currentValue => $composableBuilder(
    column: $table.currentValue,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);

  $$ReadingGoalsTableAnnotationComposer get goalId {
    final $$ReadingGoalsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.goalId,
      referencedTable: $db.readingGoals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReadingGoalsTableAnnotationComposer(
            $db: $db,
            $table: $db.readingGoals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GoalProgressTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalProgressTable,
          GoalProgressData,
          $$GoalProgressTableFilterComposer,
          $$GoalProgressTableOrderingComposer,
          $$GoalProgressTableAnnotationComposer,
          $$GoalProgressTableCreateCompanionBuilder,
          $$GoalProgressTableUpdateCompanionBuilder,
          (GoalProgressData, $$GoalProgressTableReferences),
          GoalProgressData,
          PrefetchHooks Function({bool goalId})
        > {
  $$GoalProgressTableTableManager(_$AppDatabase db, $GoalProgressTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GoalProgressTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GoalProgressTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GoalProgressTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> goalId = const Value.absent(),
                Value<String> date = const Value.absent(),
                Value<int> currentValue = const Value.absent(),
                Value<bool> completed = const Value.absent(),
              }) => GoalProgressCompanion(
                id: id,
                goalId: goalId,
                date: date,
                currentValue: currentValue,
                completed: completed,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int goalId,
                required String date,
                required int currentValue,
                Value<bool> completed = const Value.absent(),
              }) => GoalProgressCompanion.insert(
                id: id,
                goalId: goalId,
                date: date,
                currentValue: currentValue,
                completed: completed,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$GoalProgressTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({goalId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (goalId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.goalId,
                                referencedTable: $$GoalProgressTableReferences
                                    ._goalIdTable(db),
                                referencedColumn: $$GoalProgressTableReferences
                                    ._goalIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$GoalProgressTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalProgressTable,
      GoalProgressData,
      $$GoalProgressTableFilterComposer,
      $$GoalProgressTableOrderingComposer,
      $$GoalProgressTableAnnotationComposer,
      $$GoalProgressTableCreateCompanionBuilder,
      $$GoalProgressTableUpdateCompanionBuilder,
      (GoalProgressData, $$GoalProgressTableReferences),
      GoalProgressData,
      PrefetchHooks Function({bool goalId})
    >;
typedef $$HifzPlansTableCreateCompanionBuilder =
    HifzPlansCompanion Function({
      Value<int> id,
      required String name,
      required String level,
      Value<bool> active,
      required DateTime createdAt,
    });
typedef $$HifzPlansTableUpdateCompanionBuilder =
    HifzPlansCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> level,
      Value<bool> active,
      Value<DateTime> createdAt,
    });

final class $$HifzPlansTableReferences
    extends BaseReferences<_$AppDatabase, $HifzPlansTable, HifzPlanData> {
  $$HifzPlansTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$HifzItemsTable, List<HifzItemData>>
  _hifzItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.hifzItems,
    aliasName: $_aliasNameGenerator(db.hifzPlans.id, db.hifzItems.planId),
  );

  $$HifzItemsTableProcessedTableManager get hifzItemsRefs {
    final manager = $$HifzItemsTableTableManager(
      $_db,
      $_db.hifzItems,
    ).filter((f) => f.planId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_hifzItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$HifzPlansTableFilterComposer
    extends Composer<_$AppDatabase, $HifzPlansTable> {
  $$HifzPlansTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get active => $composableBuilder(
    column: $table.active,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> hifzItemsRefs(
    Expression<bool> Function($$HifzItemsTableFilterComposer f) f,
  ) {
    final $$HifzItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.hifzItems,
      getReferencedColumn: (t) => t.planId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzItemsTableFilterComposer(
            $db: $db,
            $table: $db.hifzItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HifzPlansTableOrderingComposer
    extends Composer<_$AppDatabase, $HifzPlansTable> {
  $$HifzPlansTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get active => $composableBuilder(
    column: $table.active,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HifzPlansTableAnnotationComposer
    extends Composer<_$AppDatabase, $HifzPlansTable> {
  $$HifzPlansTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<bool> get active =>
      $composableBuilder(column: $table.active, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> hifzItemsRefs<T extends Object>(
    Expression<T> Function($$HifzItemsTableAnnotationComposer a) f,
  ) {
    final $$HifzItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.hifzItems,
      getReferencedColumn: (t) => t.planId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.hifzItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HifzPlansTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HifzPlansTable,
          HifzPlanData,
          $$HifzPlansTableFilterComposer,
          $$HifzPlansTableOrderingComposer,
          $$HifzPlansTableAnnotationComposer,
          $$HifzPlansTableCreateCompanionBuilder,
          $$HifzPlansTableUpdateCompanionBuilder,
          (HifzPlanData, $$HifzPlansTableReferences),
          HifzPlanData,
          PrefetchHooks Function({bool hifzItemsRefs})
        > {
  $$HifzPlansTableTableManager(_$AppDatabase db, $HifzPlansTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HifzPlansTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HifzPlansTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HifzPlansTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> level = const Value.absent(),
                Value<bool> active = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => HifzPlansCompanion(
                id: id,
                name: name,
                level: level,
                active: active,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String level,
                Value<bool> active = const Value.absent(),
                required DateTime createdAt,
              }) => HifzPlansCompanion.insert(
                id: id,
                name: name,
                level: level,
                active: active,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$HifzPlansTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({hifzItemsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (hifzItemsRefs) db.hifzItems],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (hifzItemsRefs)
                    await $_getPrefetchedData<
                      HifzPlanData,
                      $HifzPlansTable,
                      HifzItemData
                    >(
                      currentTable: table,
                      referencedTable: $$HifzPlansTableReferences
                          ._hifzItemsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$HifzPlansTableReferences(
                            db,
                            table,
                            p0,
                          ).hifzItemsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.planId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$HifzPlansTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HifzPlansTable,
      HifzPlanData,
      $$HifzPlansTableFilterComposer,
      $$HifzPlansTableOrderingComposer,
      $$HifzPlansTableAnnotationComposer,
      $$HifzPlansTableCreateCompanionBuilder,
      $$HifzPlansTableUpdateCompanionBuilder,
      (HifzPlanData, $$HifzPlansTableReferences),
      HifzPlanData,
      PrefetchHooks Function({bool hifzItemsRefs})
    >;
typedef $$HifzItemsTableCreateCompanionBuilder =
    HifzItemsCompanion Function({
      Value<int> id,
      required int planId,
      required int ayahId,
      required int orderNumber,
      required String status,
    });
typedef $$HifzItemsTableUpdateCompanionBuilder =
    HifzItemsCompanion Function({
      Value<int> id,
      Value<int> planId,
      Value<int> ayahId,
      Value<int> orderNumber,
      Value<String> status,
    });

final class $$HifzItemsTableReferences
    extends BaseReferences<_$AppDatabase, $HifzItemsTable, HifzItemData> {
  $$HifzItemsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $HifzPlansTable _planIdTable(_$AppDatabase db) => db.hifzPlans
      .createAlias($_aliasNameGenerator(db.hifzItems.planId, db.hifzPlans.id));

  $$HifzPlansTableProcessedTableManager get planId {
    final $_column = $_itemColumn<int>('plan_id')!;

    final manager = $$HifzPlansTableTableManager(
      $_db,
      $_db.hifzPlans,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_planIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AyahsTable _ayahIdTable(_$AppDatabase db) => db.ayahs.createAlias(
    $_aliasNameGenerator(db.hifzItems.ayahId, db.ayahs.id),
  );

  $$AyahsTableProcessedTableManager get ayahId {
    final $_column = $_itemColumn<int>('ayah_id')!;

    final manager = $$AyahsTableTableManager(
      $_db,
      $_db.ayahs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ayahIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ReviewResultsTable, List<ReviewResultData>>
  _reviewResultsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.reviewResults,
    aliasName: $_aliasNameGenerator(
      db.hifzItems.id,
      db.reviewResults.hifzItemId,
    ),
  );

  $$ReviewResultsTableProcessedTableManager get reviewResultsRefs {
    final manager = $$ReviewResultsTableTableManager(
      $_db,
      $_db.reviewResults,
    ).filter((f) => f.hifzItemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_reviewResultsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$HifzItemsTableFilterComposer
    extends Composer<_$AppDatabase, $HifzItemsTable> {
  $$HifzItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get orderNumber => $composableBuilder(
    column: $table.orderNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  $$HifzPlansTableFilterComposer get planId {
    final $$HifzPlansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.planId,
      referencedTable: $db.hifzPlans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzPlansTableFilterComposer(
            $db: $db,
            $table: $db.hifzPlans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableFilterComposer get ayahId {
    final $$AyahsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableFilterComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> reviewResultsRefs(
    Expression<bool> Function($$ReviewResultsTableFilterComposer f) f,
  ) {
    final $$ReviewResultsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.reviewResults,
      getReferencedColumn: (t) => t.hifzItemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewResultsTableFilterComposer(
            $db: $db,
            $table: $db.reviewResults,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HifzItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $HifzItemsTable> {
  $$HifzItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get orderNumber => $composableBuilder(
    column: $table.orderNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  $$HifzPlansTableOrderingComposer get planId {
    final $$HifzPlansTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.planId,
      referencedTable: $db.hifzPlans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzPlansTableOrderingComposer(
            $db: $db,
            $table: $db.hifzPlans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableOrderingComposer get ayahId {
    final $$AyahsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableOrderingComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HifzItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HifzItemsTable> {
  $$HifzItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get orderNumber => $composableBuilder(
    column: $table.orderNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$HifzPlansTableAnnotationComposer get planId {
    final $$HifzPlansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.planId,
      referencedTable: $db.hifzPlans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzPlansTableAnnotationComposer(
            $db: $db,
            $table: $db.hifzPlans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AyahsTableAnnotationComposer get ayahId {
    final $$AyahsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ayahId,
      referencedTable: $db.ayahs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AyahsTableAnnotationComposer(
            $db: $db,
            $table: $db.ayahs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> reviewResultsRefs<T extends Object>(
    Expression<T> Function($$ReviewResultsTableAnnotationComposer a) f,
  ) {
    final $$ReviewResultsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.reviewResults,
      getReferencedColumn: (t) => t.hifzItemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewResultsTableAnnotationComposer(
            $db: $db,
            $table: $db.reviewResults,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HifzItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HifzItemsTable,
          HifzItemData,
          $$HifzItemsTableFilterComposer,
          $$HifzItemsTableOrderingComposer,
          $$HifzItemsTableAnnotationComposer,
          $$HifzItemsTableCreateCompanionBuilder,
          $$HifzItemsTableUpdateCompanionBuilder,
          (HifzItemData, $$HifzItemsTableReferences),
          HifzItemData,
          PrefetchHooks Function({
            bool planId,
            bool ayahId,
            bool reviewResultsRefs,
          })
        > {
  $$HifzItemsTableTableManager(_$AppDatabase db, $HifzItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HifzItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HifzItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HifzItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> planId = const Value.absent(),
                Value<int> ayahId = const Value.absent(),
                Value<int> orderNumber = const Value.absent(),
                Value<String> status = const Value.absent(),
              }) => HifzItemsCompanion(
                id: id,
                planId: planId,
                ayahId: ayahId,
                orderNumber: orderNumber,
                status: status,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int planId,
                required int ayahId,
                required int orderNumber,
                required String status,
              }) => HifzItemsCompanion.insert(
                id: id,
                planId: planId,
                ayahId: ayahId,
                orderNumber: orderNumber,
                status: status,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$HifzItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({planId = false, ayahId = false, reviewResultsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (reviewResultsRefs) db.reviewResults,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (planId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.planId,
                                    referencedTable: $$HifzItemsTableReferences
                                        ._planIdTable(db),
                                    referencedColumn: $$HifzItemsTableReferences
                                        ._planIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }
                        if (ayahId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.ayahId,
                                    referencedTable: $$HifzItemsTableReferences
                                        ._ayahIdTable(db),
                                    referencedColumn: $$HifzItemsTableReferences
                                        ._ayahIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (reviewResultsRefs)
                        await $_getPrefetchedData<
                          HifzItemData,
                          $HifzItemsTable,
                          ReviewResultData
                        >(
                          currentTable: table,
                          referencedTable: $$HifzItemsTableReferences
                              ._reviewResultsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$HifzItemsTableReferences(
                                db,
                                table,
                                p0,
                              ).reviewResultsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.hifzItemId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$HifzItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HifzItemsTable,
      HifzItemData,
      $$HifzItemsTableFilterComposer,
      $$HifzItemsTableOrderingComposer,
      $$HifzItemsTableAnnotationComposer,
      $$HifzItemsTableCreateCompanionBuilder,
      $$HifzItemsTableUpdateCompanionBuilder,
      (HifzItemData, $$HifzItemsTableReferences),
      HifzItemData,
      PrefetchHooks Function({bool planId, bool ayahId, bool reviewResultsRefs})
    >;
typedef $$ReviewSessionsTableCreateCompanionBuilder =
    ReviewSessionsCompanion Function({
      Value<int> id,
      required DateTime startedAt,
      Value<DateTime?> endedAt,
      required int itemsCount,
    });
typedef $$ReviewSessionsTableUpdateCompanionBuilder =
    ReviewSessionsCompanion Function({
      Value<int> id,
      Value<DateTime> startedAt,
      Value<DateTime?> endedAt,
      Value<int> itemsCount,
    });

final class $$ReviewSessionsTableReferences
    extends
        BaseReferences<_$AppDatabase, $ReviewSessionsTable, ReviewSessionData> {
  $$ReviewSessionsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$ReviewResultsTable, List<ReviewResultData>>
  _reviewResultsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.reviewResults,
    aliasName: $_aliasNameGenerator(
      db.reviewSessions.id,
      db.reviewResults.sessionId,
    ),
  );

  $$ReviewResultsTableProcessedTableManager get reviewResultsRefs {
    final manager = $$ReviewResultsTableTableManager(
      $_db,
      $_db.reviewResults,
    ).filter((f) => f.sessionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_reviewResultsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ReviewSessionsTableFilterComposer
    extends Composer<_$AppDatabase, $ReviewSessionsTable> {
  $$ReviewSessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endedAt => $composableBuilder(
    column: $table.endedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get itemsCount => $composableBuilder(
    column: $table.itemsCount,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> reviewResultsRefs(
    Expression<bool> Function($$ReviewResultsTableFilterComposer f) f,
  ) {
    final $$ReviewResultsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.reviewResults,
      getReferencedColumn: (t) => t.sessionId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewResultsTableFilterComposer(
            $db: $db,
            $table: $db.reviewResults,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ReviewSessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReviewSessionsTable> {
  $$ReviewSessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endedAt => $composableBuilder(
    column: $table.endedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get itemsCount => $composableBuilder(
    column: $table.itemsCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ReviewSessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReviewSessionsTable> {
  $$ReviewSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startedAt =>
      $composableBuilder(column: $table.startedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endedAt =>
      $composableBuilder(column: $table.endedAt, builder: (column) => column);

  GeneratedColumn<int> get itemsCount => $composableBuilder(
    column: $table.itemsCount,
    builder: (column) => column,
  );

  Expression<T> reviewResultsRefs<T extends Object>(
    Expression<T> Function($$ReviewResultsTableAnnotationComposer a) f,
  ) {
    final $$ReviewResultsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.reviewResults,
      getReferencedColumn: (t) => t.sessionId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewResultsTableAnnotationComposer(
            $db: $db,
            $table: $db.reviewResults,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ReviewSessionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReviewSessionsTable,
          ReviewSessionData,
          $$ReviewSessionsTableFilterComposer,
          $$ReviewSessionsTableOrderingComposer,
          $$ReviewSessionsTableAnnotationComposer,
          $$ReviewSessionsTableCreateCompanionBuilder,
          $$ReviewSessionsTableUpdateCompanionBuilder,
          (ReviewSessionData, $$ReviewSessionsTableReferences),
          ReviewSessionData,
          PrefetchHooks Function({bool reviewResultsRefs})
        > {
  $$ReviewSessionsTableTableManager(
    _$AppDatabase db,
    $ReviewSessionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReviewSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReviewSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReviewSessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> startedAt = const Value.absent(),
                Value<DateTime?> endedAt = const Value.absent(),
                Value<int> itemsCount = const Value.absent(),
              }) => ReviewSessionsCompanion(
                id: id,
                startedAt: startedAt,
                endedAt: endedAt,
                itemsCount: itemsCount,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime startedAt,
                Value<DateTime?> endedAt = const Value.absent(),
                required int itemsCount,
              }) => ReviewSessionsCompanion.insert(
                id: id,
                startedAt: startedAt,
                endedAt: endedAt,
                itemsCount: itemsCount,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ReviewSessionsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({reviewResultsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (reviewResultsRefs) db.reviewResults,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (reviewResultsRefs)
                    await $_getPrefetchedData<
                      ReviewSessionData,
                      $ReviewSessionsTable,
                      ReviewResultData
                    >(
                      currentTable: table,
                      referencedTable: $$ReviewSessionsTableReferences
                          ._reviewResultsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ReviewSessionsTableReferences(
                            db,
                            table,
                            p0,
                          ).reviewResultsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.sessionId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ReviewSessionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReviewSessionsTable,
      ReviewSessionData,
      $$ReviewSessionsTableFilterComposer,
      $$ReviewSessionsTableOrderingComposer,
      $$ReviewSessionsTableAnnotationComposer,
      $$ReviewSessionsTableCreateCompanionBuilder,
      $$ReviewSessionsTableUpdateCompanionBuilder,
      (ReviewSessionData, $$ReviewSessionsTableReferences),
      ReviewSessionData,
      PrefetchHooks Function({bool reviewResultsRefs})
    >;
typedef $$ReviewResultsTableCreateCompanionBuilder =
    ReviewResultsCompanion Function({
      Value<int> id,
      required int sessionId,
      required int hifzItemId,
      required String grade,
      required DateTime reviewedAt,
      Value<DateTime?> nextReviewAt,
    });
typedef $$ReviewResultsTableUpdateCompanionBuilder =
    ReviewResultsCompanion Function({
      Value<int> id,
      Value<int> sessionId,
      Value<int> hifzItemId,
      Value<String> grade,
      Value<DateTime> reviewedAt,
      Value<DateTime?> nextReviewAt,
    });

final class $$ReviewResultsTableReferences
    extends
        BaseReferences<_$AppDatabase, $ReviewResultsTable, ReviewResultData> {
  $$ReviewResultsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ReviewSessionsTable _sessionIdTable(_$AppDatabase db) =>
      db.reviewSessions.createAlias(
        $_aliasNameGenerator(db.reviewResults.sessionId, db.reviewSessions.id),
      );

  $$ReviewSessionsTableProcessedTableManager get sessionId {
    final $_column = $_itemColumn<int>('session_id')!;

    final manager = $$ReviewSessionsTableTableManager(
      $_db,
      $_db.reviewSessions,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sessionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $HifzItemsTable _hifzItemIdTable(_$AppDatabase db) =>
      db.hifzItems.createAlias(
        $_aliasNameGenerator(db.reviewResults.hifzItemId, db.hifzItems.id),
      );

  $$HifzItemsTableProcessedTableManager get hifzItemId {
    final $_column = $_itemColumn<int>('hifz_item_id')!;

    final manager = $$HifzItemsTableTableManager(
      $_db,
      $_db.hifzItems,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_hifzItemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ReviewResultsTableFilterComposer
    extends Composer<_$AppDatabase, $ReviewResultsTable> {
  $$ReviewResultsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get grade => $composableBuilder(
    column: $table.grade,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get reviewedAt => $composableBuilder(
    column: $table.reviewedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get nextReviewAt => $composableBuilder(
    column: $table.nextReviewAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ReviewSessionsTableFilterComposer get sessionId {
    final $$ReviewSessionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.sessionId,
      referencedTable: $db.reviewSessions,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewSessionsTableFilterComposer(
            $db: $db,
            $table: $db.reviewSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$HifzItemsTableFilterComposer get hifzItemId {
    final $$HifzItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.hifzItemId,
      referencedTable: $db.hifzItems,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzItemsTableFilterComposer(
            $db: $db,
            $table: $db.hifzItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReviewResultsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReviewResultsTable> {
  $$ReviewResultsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get grade => $composableBuilder(
    column: $table.grade,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get reviewedAt => $composableBuilder(
    column: $table.reviewedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get nextReviewAt => $composableBuilder(
    column: $table.nextReviewAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ReviewSessionsTableOrderingComposer get sessionId {
    final $$ReviewSessionsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.sessionId,
      referencedTable: $db.reviewSessions,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewSessionsTableOrderingComposer(
            $db: $db,
            $table: $db.reviewSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$HifzItemsTableOrderingComposer get hifzItemId {
    final $$HifzItemsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.hifzItemId,
      referencedTable: $db.hifzItems,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzItemsTableOrderingComposer(
            $db: $db,
            $table: $db.hifzItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReviewResultsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReviewResultsTable> {
  $$ReviewResultsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get grade =>
      $composableBuilder(column: $table.grade, builder: (column) => column);

  GeneratedColumn<DateTime> get reviewedAt => $composableBuilder(
    column: $table.reviewedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get nextReviewAt => $composableBuilder(
    column: $table.nextReviewAt,
    builder: (column) => column,
  );

  $$ReviewSessionsTableAnnotationComposer get sessionId {
    final $$ReviewSessionsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.sessionId,
      referencedTable: $db.reviewSessions,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewSessionsTableAnnotationComposer(
            $db: $db,
            $table: $db.reviewSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$HifzItemsTableAnnotationComposer get hifzItemId {
    final $$HifzItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.hifzItemId,
      referencedTable: $db.hifzItems,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HifzItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.hifzItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReviewResultsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReviewResultsTable,
          ReviewResultData,
          $$ReviewResultsTableFilterComposer,
          $$ReviewResultsTableOrderingComposer,
          $$ReviewResultsTableAnnotationComposer,
          $$ReviewResultsTableCreateCompanionBuilder,
          $$ReviewResultsTableUpdateCompanionBuilder,
          (ReviewResultData, $$ReviewResultsTableReferences),
          ReviewResultData,
          PrefetchHooks Function({bool sessionId, bool hifzItemId})
        > {
  $$ReviewResultsTableTableManager(_$AppDatabase db, $ReviewResultsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReviewResultsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReviewResultsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReviewResultsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> sessionId = const Value.absent(),
                Value<int> hifzItemId = const Value.absent(),
                Value<String> grade = const Value.absent(),
                Value<DateTime> reviewedAt = const Value.absent(),
                Value<DateTime?> nextReviewAt = const Value.absent(),
              }) => ReviewResultsCompanion(
                id: id,
                sessionId: sessionId,
                hifzItemId: hifzItemId,
                grade: grade,
                reviewedAt: reviewedAt,
                nextReviewAt: nextReviewAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int sessionId,
                required int hifzItemId,
                required String grade,
                required DateTime reviewedAt,
                Value<DateTime?> nextReviewAt = const Value.absent(),
              }) => ReviewResultsCompanion.insert(
                id: id,
                sessionId: sessionId,
                hifzItemId: hifzItemId,
                grade: grade,
                reviewedAt: reviewedAt,
                nextReviewAt: nextReviewAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ReviewResultsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({sessionId = false, hifzItemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (sessionId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.sessionId,
                                referencedTable: $$ReviewResultsTableReferences
                                    ._sessionIdTable(db),
                                referencedColumn: $$ReviewResultsTableReferences
                                    ._sessionIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (hifzItemId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.hifzItemId,
                                referencedTable: $$ReviewResultsTableReferences
                                    ._hifzItemIdTable(db),
                                referencedColumn: $$ReviewResultsTableReferences
                                    ._hifzItemIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ReviewResultsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReviewResultsTable,
      ReviewResultData,
      $$ReviewResultsTableFilterComposer,
      $$ReviewResultsTableOrderingComposer,
      $$ReviewResultsTableAnnotationComposer,
      $$ReviewResultsTableCreateCompanionBuilder,
      $$ReviewResultsTableUpdateCompanionBuilder,
      (ReviewResultData, $$ReviewResultsTableReferences),
      ReviewResultData,
      PrefetchHooks Function({bool sessionId, bool hifzItemId})
    >;
typedef $$DownloadTasksTableCreateCompanionBuilder =
    DownloadTasksCompanion Function({
      Value<int> id,
      required int packageId,
      required String status,
      Value<int> progress,
      required DateTime createdAt,
    });
typedef $$DownloadTasksTableUpdateCompanionBuilder =
    DownloadTasksCompanion Function({
      Value<int> id,
      Value<int> packageId,
      Value<String> status,
      Value<int> progress,
      Value<DateTime> createdAt,
    });

final class $$DownloadTasksTableReferences
    extends
        BaseReferences<_$AppDatabase, $DownloadTasksTable, DownloadTaskData> {
  $$DownloadTasksTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ContentPacksTable _packageIdTable(_$AppDatabase db) =>
      db.contentPacks.createAlias(
        $_aliasNameGenerator(db.downloadTasks.packageId, db.contentPacks.id),
      );

  $$ContentPacksTableProcessedTableManager get packageId {
    final $_column = $_itemColumn<int>('package_id')!;

    final manager = $$ContentPacksTableTableManager(
      $_db,
      $_db.contentPacks,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_packageIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DownloadTasksTableFilterComposer
    extends Composer<_$AppDatabase, $DownloadTasksTable> {
  $$DownloadTasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get progress => $composableBuilder(
    column: $table.progress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ContentPacksTableFilterComposer get packageId {
    final $$ContentPacksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.packageId,
      referencedTable: $db.contentPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ContentPacksTableFilterComposer(
            $db: $db,
            $table: $db.contentPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DownloadTasksTableOrderingComposer
    extends Composer<_$AppDatabase, $DownloadTasksTable> {
  $$DownloadTasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get progress => $composableBuilder(
    column: $table.progress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ContentPacksTableOrderingComposer get packageId {
    final $$ContentPacksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.packageId,
      referencedTable: $db.contentPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ContentPacksTableOrderingComposer(
            $db: $db,
            $table: $db.contentPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DownloadTasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $DownloadTasksTable> {
  $$DownloadTasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get progress =>
      $composableBuilder(column: $table.progress, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ContentPacksTableAnnotationComposer get packageId {
    final $$ContentPacksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.packageId,
      referencedTable: $db.contentPacks,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ContentPacksTableAnnotationComposer(
            $db: $db,
            $table: $db.contentPacks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DownloadTasksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DownloadTasksTable,
          DownloadTaskData,
          $$DownloadTasksTableFilterComposer,
          $$DownloadTasksTableOrderingComposer,
          $$DownloadTasksTableAnnotationComposer,
          $$DownloadTasksTableCreateCompanionBuilder,
          $$DownloadTasksTableUpdateCompanionBuilder,
          (DownloadTaskData, $$DownloadTasksTableReferences),
          DownloadTaskData,
          PrefetchHooks Function({bool packageId})
        > {
  $$DownloadTasksTableTableManager(_$AppDatabase db, $DownloadTasksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DownloadTasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DownloadTasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DownloadTasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> packageId = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> progress = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => DownloadTasksCompanion(
                id: id,
                packageId: packageId,
                status: status,
                progress: progress,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int packageId,
                required String status,
                Value<int> progress = const Value.absent(),
                required DateTime createdAt,
              }) => DownloadTasksCompanion.insert(
                id: id,
                packageId: packageId,
                status: status,
                progress: progress,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DownloadTasksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({packageId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (packageId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.packageId,
                                referencedTable: $$DownloadTasksTableReferences
                                    ._packageIdTable(db),
                                referencedColumn: $$DownloadTasksTableReferences
                                    ._packageIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DownloadTasksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DownloadTasksTable,
      DownloadTaskData,
      $$DownloadTasksTableFilterComposer,
      $$DownloadTasksTableOrderingComposer,
      $$DownloadTasksTableAnnotationComposer,
      $$DownloadTasksTableCreateCompanionBuilder,
      $$DownloadTasksTableUpdateCompanionBuilder,
      (DownloadTaskData, $$DownloadTasksTableReferences),
      DownloadTaskData,
      PrefetchHooks Function({bool packageId})
    >;
typedef $$SettingsTableCreateCompanionBuilder =
    SettingsCompanion Function({
      Value<int> id,
      Value<String> languageCode,
      Value<String> themeMode,
      Value<String?> translationKey,
      Value<bool> showTranslation,
      Value<bool> showTransliteration,
      Value<String?> selectedReciter,
      Value<String> audioQuality,
      Value<bool> notificationsEnabled,
    });
typedef $$SettingsTableUpdateCompanionBuilder =
    SettingsCompanion Function({
      Value<int> id,
      Value<String> languageCode,
      Value<String> themeMode,
      Value<String?> translationKey,
      Value<bool> showTranslation,
      Value<bool> showTransliteration,
      Value<String?> selectedReciter,
      Value<String> audioQuality,
      Value<bool> notificationsEnabled,
    });

class $$SettingsTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get themeMode => $composableBuilder(
    column: $table.themeMode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translationKey => $composableBuilder(
    column: $table.translationKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showTranslation => $composableBuilder(
    column: $table.showTranslation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showTransliteration => $composableBuilder(
    column: $table.showTransliteration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get selectedReciter => $composableBuilder(
    column: $table.selectedReciter,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get audioQuality => $composableBuilder(
    column: $table.audioQuality,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get notificationsEnabled => $composableBuilder(
    column: $table.notificationsEnabled,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get themeMode => $composableBuilder(
    column: $table.themeMode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translationKey => $composableBuilder(
    column: $table.translationKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showTranslation => $composableBuilder(
    column: $table.showTranslation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showTransliteration => $composableBuilder(
    column: $table.showTransliteration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get selectedReciter => $composableBuilder(
    column: $table.selectedReciter,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get audioQuality => $composableBuilder(
    column: $table.audioQuality,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get notificationsEnabled => $composableBuilder(
    column: $table.notificationsEnabled,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get themeMode =>
      $composableBuilder(column: $table.themeMode, builder: (column) => column);

  GeneratedColumn<String> get translationKey => $composableBuilder(
    column: $table.translationKey,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showTranslation => $composableBuilder(
    column: $table.showTranslation,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showTransliteration => $composableBuilder(
    column: $table.showTransliteration,
    builder: (column) => column,
  );

  GeneratedColumn<String> get selectedReciter => $composableBuilder(
    column: $table.selectedReciter,
    builder: (column) => column,
  );

  GeneratedColumn<String> get audioQuality => $composableBuilder(
    column: $table.audioQuality,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get notificationsEnabled => $composableBuilder(
    column: $table.notificationsEnabled,
    builder: (column) => column,
  );
}

class $$SettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingsTable,
          SettingsData,
          $$SettingsTableFilterComposer,
          $$SettingsTableOrderingComposer,
          $$SettingsTableAnnotationComposer,
          $$SettingsTableCreateCompanionBuilder,
          $$SettingsTableUpdateCompanionBuilder,
          (
            SettingsData,
            BaseReferences<_$AppDatabase, $SettingsTable, SettingsData>,
          ),
          SettingsData,
          PrefetchHooks Function()
        > {
  $$SettingsTableTableManager(_$AppDatabase db, $SettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> languageCode = const Value.absent(),
                Value<String> themeMode = const Value.absent(),
                Value<String?> translationKey = const Value.absent(),
                Value<bool> showTranslation = const Value.absent(),
                Value<bool> showTransliteration = const Value.absent(),
                Value<String?> selectedReciter = const Value.absent(),
                Value<String> audioQuality = const Value.absent(),
                Value<bool> notificationsEnabled = const Value.absent(),
              }) => SettingsCompanion(
                id: id,
                languageCode: languageCode,
                themeMode: themeMode,
                translationKey: translationKey,
                showTranslation: showTranslation,
                showTransliteration: showTransliteration,
                selectedReciter: selectedReciter,
                audioQuality: audioQuality,
                notificationsEnabled: notificationsEnabled,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> languageCode = const Value.absent(),
                Value<String> themeMode = const Value.absent(),
                Value<String?> translationKey = const Value.absent(),
                Value<bool> showTranslation = const Value.absent(),
                Value<bool> showTransliteration = const Value.absent(),
                Value<String?> selectedReciter = const Value.absent(),
                Value<String> audioQuality = const Value.absent(),
                Value<bool> notificationsEnabled = const Value.absent(),
              }) => SettingsCompanion.insert(
                id: id,
                languageCode: languageCode,
                themeMode: themeMode,
                translationKey: translationKey,
                showTranslation: showTranslation,
                showTransliteration: showTransliteration,
                selectedReciter: selectedReciter,
                audioQuality: audioQuality,
                notificationsEnabled: notificationsEnabled,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingsTable,
      SettingsData,
      $$SettingsTableFilterComposer,
      $$SettingsTableOrderingComposer,
      $$SettingsTableAnnotationComposer,
      $$SettingsTableCreateCompanionBuilder,
      $$SettingsTableUpdateCompanionBuilder,
      (
        SettingsData,
        BaseReferences<_$AppDatabase, $SettingsTable, SettingsData>,
      ),
      SettingsData,
      PrefetchHooks Function()
    >;
typedef $$UserProfileTableCreateCompanionBuilder =
    UserProfileCompanion Function({
      Value<int> id,
      required String email,
      Value<String?> displayName,
      Value<String?> avatarUrl,
      required DateTime createdAt,
    });
typedef $$UserProfileTableUpdateCompanionBuilder =
    UserProfileCompanion Function({
      Value<int> id,
      Value<String> email,
      Value<String?> displayName,
      Value<String?> avatarUrl,
      Value<DateTime> createdAt,
    });

class $$UserProfileTableFilterComposer
    extends Composer<_$AppDatabase, $UserProfileTable> {
  $$UserProfileTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserProfileTableOrderingComposer
    extends Composer<_$AppDatabase, $UserProfileTable> {
  $$UserProfileTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserProfileTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserProfileTable> {
  $$UserProfileTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$UserProfileTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserProfileTable,
          UserProfileData,
          $$UserProfileTableFilterComposer,
          $$UserProfileTableOrderingComposer,
          $$UserProfileTableAnnotationComposer,
          $$UserProfileTableCreateCompanionBuilder,
          $$UserProfileTableUpdateCompanionBuilder,
          (
            UserProfileData,
            BaseReferences<_$AppDatabase, $UserProfileTable, UserProfileData>,
          ),
          UserProfileData,
          PrefetchHooks Function()
        > {
  $$UserProfileTableTableManager(_$AppDatabase db, $UserProfileTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserProfileTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserProfileTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserProfileTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String?> displayName = const Value.absent(),
                Value<String?> avatarUrl = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => UserProfileCompanion(
                id: id,
                email: email,
                displayName: displayName,
                avatarUrl: avatarUrl,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String email,
                Value<String?> displayName = const Value.absent(),
                Value<String?> avatarUrl = const Value.absent(),
                required DateTime createdAt,
              }) => UserProfileCompanion.insert(
                id: id,
                email: email,
                displayName: displayName,
                avatarUrl: avatarUrl,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserProfileTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserProfileTable,
      UserProfileData,
      $$UserProfileTableFilterComposer,
      $$UserProfileTableOrderingComposer,
      $$UserProfileTableAnnotationComposer,
      $$UserProfileTableCreateCompanionBuilder,
      $$UserProfileTableUpdateCompanionBuilder,
      (
        UserProfileData,
        BaseReferences<_$AppDatabase, $UserProfileTable, UserProfileData>,
      ),
      UserProfileData,
      PrefetchHooks Function()
    >;
typedef $$SyncQueueTableCreateCompanionBuilder =
    SyncQueueCompanion Function({
      Value<int> id,
      required String entityType,
      required String entityId,
      required String operation,
      required String payload,
      required DateTime createdAt,
      required String status,
    });
typedef $$SyncQueueTableUpdateCompanionBuilder =
    SyncQueueCompanion Function({
      Value<int> id,
      Value<String> entityType,
      Value<String> entityId,
      Value<String> operation,
      Value<String> payload,
      Value<DateTime> createdAt,
      Value<String> status,
    });

class $$SyncQueueTableFilterComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncQueueTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncQueueTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get entityId =>
      $composableBuilder(column: $table.entityId, builder: (column) => column);

  GeneratedColumn<String> get operation =>
      $composableBuilder(column: $table.operation, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);
}

class $$SyncQueueTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncQueueTable,
          SyncQueueData,
          $$SyncQueueTableFilterComposer,
          $$SyncQueueTableOrderingComposer,
          $$SyncQueueTableAnnotationComposer,
          $$SyncQueueTableCreateCompanionBuilder,
          $$SyncQueueTableUpdateCompanionBuilder,
          (
            SyncQueueData,
            BaseReferences<_$AppDatabase, $SyncQueueTable, SyncQueueData>,
          ),
          SyncQueueData,
          PrefetchHooks Function()
        > {
  $$SyncQueueTableTableManager(_$AppDatabase db, $SyncQueueTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncQueueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncQueueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncQueueTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> entityType = const Value.absent(),
                Value<String> entityId = const Value.absent(),
                Value<String> operation = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> status = const Value.absent(),
              }) => SyncQueueCompanion(
                id: id,
                entityType: entityType,
                entityId: entityId,
                operation: operation,
                payload: payload,
                createdAt: createdAt,
                status: status,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String entityType,
                required String entityId,
                required String operation,
                required String payload,
                required DateTime createdAt,
                required String status,
              }) => SyncQueueCompanion.insert(
                id: id,
                entityType: entityType,
                entityId: entityId,
                operation: operation,
                payload: payload,
                createdAt: createdAt,
                status: status,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncQueueTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncQueueTable,
      SyncQueueData,
      $$SyncQueueTableFilterComposer,
      $$SyncQueueTableOrderingComposer,
      $$SyncQueueTableAnnotationComposer,
      $$SyncQueueTableCreateCompanionBuilder,
      $$SyncQueueTableUpdateCompanionBuilder,
      (
        SyncQueueData,
        BaseReferences<_$AppDatabase, $SyncQueueTable, SyncQueueData>,
      ),
      SyncQueueData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SurahsTableTableManager get surahs =>
      $$SurahsTableTableManager(_db, _db.surahs);
  $$AyahsTableTableManager get ayahs =>
      $$AyahsTableTableManager(_db, _db.ayahs);
  $$TranslationsTableTableManager get translations =>
      $$TranslationsTableTableManager(_db, _db.translations);
  $$TranslationAyahsTableTableManager get translationAyahs =>
      $$TranslationAyahsTableTableManager(_db, _db.translationAyahs);
  $$TafsirsTableTableManager get tafsirs =>
      $$TafsirsTableTableManager(_db, _db.tafsirs);
  $$TafsirAyahsTableTableManager get tafsirAyahs =>
      $$TafsirAyahsTableTableManager(_db, _db.tafsirAyahs);
  $$RecitersTableTableManager get reciters =>
      $$RecitersTableTableManager(_db, _db.reciters);
  $$AudioPacksTableTableManager get audioPacks =>
      $$AudioPacksTableTableManager(_db, _db.audioPacks);
  $$AudioFilesTableTableManager get audioFiles =>
      $$AudioFilesTableTableManager(_db, _db.audioFiles);
  $$ContentPacksTableTableManager get contentPacks =>
      $$ContentPacksTableTableManager(_db, _db.contentPacks);
  $$InstalledPackagesTableTableManager get installedPackages =>
      $$InstalledPackagesTableTableManager(_db, _db.installedPackages);
  $$ReadingProgressTableTableTableManager get readingProgressTable =>
      $$ReadingProgressTableTableTableManager(_db, _db.readingProgressTable);
  $$ReadingSessionsTableTableManager get readingSessions =>
      $$ReadingSessionsTableTableManager(_db, _db.readingSessions);
  $$LastReadPositionTableTableManager get lastReadPosition =>
      $$LastReadPositionTableTableManager(_db, _db.lastReadPosition);
  $$BookmarksTableTableManager get bookmarks =>
      $$BookmarksTableTableManager(_db, _db.bookmarks);
  $$FavoriteRecitersTableTableManager get favoriteReciters =>
      $$FavoriteRecitersTableTableManager(_db, _db.favoriteReciters);
  $$ReadingGoalsTableTableManager get readingGoals =>
      $$ReadingGoalsTableTableManager(_db, _db.readingGoals);
  $$GoalProgressTableTableManager get goalProgress =>
      $$GoalProgressTableTableManager(_db, _db.goalProgress);
  $$HifzPlansTableTableManager get hifzPlans =>
      $$HifzPlansTableTableManager(_db, _db.hifzPlans);
  $$HifzItemsTableTableManager get hifzItems =>
      $$HifzItemsTableTableManager(_db, _db.hifzItems);
  $$ReviewSessionsTableTableManager get reviewSessions =>
      $$ReviewSessionsTableTableManager(_db, _db.reviewSessions);
  $$ReviewResultsTableTableManager get reviewResults =>
      $$ReviewResultsTableTableManager(_db, _db.reviewResults);
  $$DownloadTasksTableTableManager get downloadTasks =>
      $$DownloadTasksTableTableManager(_db, _db.downloadTasks);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
  $$UserProfileTableTableManager get userProfile =>
      $$UserProfileTableTableManager(_db, _db.userProfile);
  $$SyncQueueTableTableManager get syncQueue =>
      $$SyncQueueTableTableManager(_db, _db.syncQueue);
}

mixin _$SurahDaoMixin on DatabaseAccessor<AppDatabase> {
  $SurahsTable get surahs => attachedDatabase.surahs;
}
mixin _$AyahDaoMixin on DatabaseAccessor<AppDatabase> {
  $SurahsTable get surahs => attachedDatabase.surahs;
  $AyahsTable get ayahs => attachedDatabase.ayahs;
}
mixin _$TranslationDaoMixin on DatabaseAccessor<AppDatabase> {
  $TranslationsTable get translations => attachedDatabase.translations;
  $SurahsTable get surahs => attachedDatabase.surahs;
  $AyahsTable get ayahs => attachedDatabase.ayahs;
  $TranslationAyahsTable get translationAyahs =>
      attachedDatabase.translationAyahs;
}
mixin _$ReciterDaoMixin on DatabaseAccessor<AppDatabase> {
  $RecitersTable get reciters => attachedDatabase.reciters;
  $AudioPacksTable get audioPacks => attachedDatabase.audioPacks;
  $SurahsTable get surahs => attachedDatabase.surahs;
  $AudioFilesTable get audioFiles => attachedDatabase.audioFiles;
  $FavoriteRecitersTable get favoriteReciters =>
      attachedDatabase.favoriteReciters;
}
mixin _$AudioPackDaoMixin on DatabaseAccessor<AppDatabase> {
  $RecitersTable get reciters => attachedDatabase.reciters;
  $AudioPacksTable get audioPacks => attachedDatabase.audioPacks;
}
mixin _$AudioFileDaoMixin on DatabaseAccessor<AppDatabase> {
  $RecitersTable get reciters => attachedDatabase.reciters;
  $AudioPacksTable get audioPacks => attachedDatabase.audioPacks;
  $SurahsTable get surahs => attachedDatabase.surahs;
  $AudioFilesTable get audioFiles => attachedDatabase.audioFiles;
}
mixin _$ReadingProgressDaoMixin on DatabaseAccessor<AppDatabase> {
  $SurahsTable get surahs => attachedDatabase.surahs;
  $AyahsTable get ayahs => attachedDatabase.ayahs;
  $ReadingProgressTableTable get readingProgressTable =>
      attachedDatabase.readingProgressTable;
  $ReadingSessionsTable get readingSessions => attachedDatabase.readingSessions;
  $LastReadPositionTable get lastReadPosition =>
      attachedDatabase.lastReadPosition;
}
mixin _$BookmarkDaoMixin on DatabaseAccessor<AppDatabase> {
  $SurahsTable get surahs => attachedDatabase.surahs;
  $AyahsTable get ayahs => attachedDatabase.ayahs;
  $BookmarksTable get bookmarks => attachedDatabase.bookmarks;
}
mixin _$HifzDaoMixin on DatabaseAccessor<AppDatabase> {
  $HifzPlansTable get hifzPlans => attachedDatabase.hifzPlans;
  $SurahsTable get surahs => attachedDatabase.surahs;
  $AyahsTable get ayahs => attachedDatabase.ayahs;
  $HifzItemsTable get hifzItems => attachedDatabase.hifzItems;
  $ReviewSessionsTable get reviewSessions => attachedDatabase.reviewSessions;
  $ReviewResultsTable get reviewResults => attachedDatabase.reviewResults;
}
mixin _$GoalDaoMixin on DatabaseAccessor<AppDatabase> {
  $ReadingGoalsTable get readingGoals => attachedDatabase.readingGoals;
  $GoalProgressTable get goalProgress => attachedDatabase.goalProgress;
}
mixin _$SettingsDaoMixin on DatabaseAccessor<AppDatabase> {
  $SettingsTable get settings => attachedDatabase.settings;
}
mixin _$ContentPackDaoMixin on DatabaseAccessor<AppDatabase> {
  $ContentPacksTable get contentPacks => attachedDatabase.contentPacks;
  $InstalledPackagesTable get installedPackages =>
      attachedDatabase.installedPackages;
}
mixin _$DownloadDaoMixin on DatabaseAccessor<AppDatabase> {
  $ContentPacksTable get contentPacks => attachedDatabase.contentPacks;
  $DownloadTasksTable get downloadTasks => attachedDatabase.downloadTasks;
}
