// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_controller.dart';

// ignore_for_file: type=lint
class $DataUsersTable extends DataUsers
    with TableInfo<$DataUsersTable, DataUser> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DataUsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _photoMeta = const VerificationMeta('photo');
  @override
  late final GeneratedColumn<String> photo = GeneratedColumn<String>(
      'photo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, photo, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'data_users';
  @override
  String get actualTableName => 'data_users';
  @override
  VerificationContext validateIntegrity(Insertable<DataUser> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('photo')) {
      context.handle(
          _photoMeta, photo.isAcceptableOrUnknown(data['photo']!, _photoMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DataUser map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DataUser(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      photo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}photo']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
    );
  }

  @override
  $DataUsersTable createAlias(String alias) {
    return $DataUsersTable(attachedDatabase, alias);
  }
}

class DataUser extends DataClass implements Insertable<DataUser> {
  final int? id;
  final String? name;
  final String? photo;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  const DataUser(
      {this.id, this.name, this.photo, this.createdAt, this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || photo != null) {
      map['photo'] = Variable<String>(photo);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  DataUsersCompanion toCompanion(bool nullToAbsent) {
    return DataUsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      photo:
          photo == null && nullToAbsent ? const Value.absent() : Value(photo),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory DataUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataUser(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      photo: serializer.fromJson<String?>(json['photo']),
      createdAt: serializer.fromJson<DateTime?>(json['created_at']),
      updatedAt: serializer.fromJson<DateTime?>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String?>(name),
      'photo': serializer.toJson<String?>(photo),
      'created_at': serializer.toJson<DateTime?>(createdAt),
      'updated_at': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  DataUser copyWith(
          {Value<int?> id = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> photo = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent()}) =>
      DataUser(
        id: id.present ? id.value : this.id,
        name: name.present ? name.value : this.name,
        photo: photo.present ? photo.value : this.photo,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('DataUser(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('photo: $photo, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, photo, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DataUser &&
          other.id == this.id &&
          other.name == this.name &&
          other.photo == this.photo &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DataUsersCompanion extends UpdateCompanion<DataUser> {
  final Value<int?> id;
  final Value<String?> name;
  final Value<String?> photo;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const DataUsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.photo = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DataUsersCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.photo = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<DataUser> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? photo,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (photo != null) 'photo': photo,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DataUsersCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? name,
      Value<String?>? photo,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return DataUsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      photo: photo ?? this.photo,
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
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (photo.present) {
      map['photo'] = Variable<String>(photo.value);
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
    return (StringBuffer('DataUsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('photo: $photo, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $SchedulesTable extends Schedules
    with TableInfo<$SchedulesTable, Schedule> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SchedulesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _scheduleDescriptionMeta =
      const VerificationMeta('scheduleDescription');
  @override
  late final GeneratedColumn<String> scheduleDescription =
      GeneratedColumn<String>('schedule_description', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fotoMeta = const VerificationMeta('foto');
  @override
  late final GeneratedColumn<String> foto = GeneratedColumn<String>(
      'foto', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, scheduleDescription, foto, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'schedules';
  @override
  String get actualTableName => 'schedules';
  @override
  VerificationContext validateIntegrity(Insertable<Schedule> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('schedule_description')) {
      context.handle(
          _scheduleDescriptionMeta,
          scheduleDescription.isAcceptableOrUnknown(
              data['schedule_description']!, _scheduleDescriptionMeta));
    }
    if (data.containsKey('foto')) {
      context.handle(
          _fotoMeta, foto.isAcceptableOrUnknown(data['foto']!, _fotoMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Schedule map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Schedule(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id']),
      scheduleDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}schedule_description']),
      foto: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}foto']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
    );
  }

  @override
  $SchedulesTable createAlias(String alias) {
    return $SchedulesTable(attachedDatabase, alias);
  }
}

class Schedule extends DataClass implements Insertable<Schedule> {
  final int? id;
  final int? userId;
  final String? scheduleDescription;
  final String? foto;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  const Schedule(
      {this.id,
      this.userId,
      this.scheduleDescription,
      this.foto,
      this.createdAt,
      this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || scheduleDescription != null) {
      map['schedule_description'] = Variable<String>(scheduleDescription);
    }
    if (!nullToAbsent || foto != null) {
      map['foto'] = Variable<String>(foto);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  SchedulesCompanion toCompanion(bool nullToAbsent) {
    return SchedulesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      scheduleDescription: scheduleDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(scheduleDescription),
      foto: foto == null && nullToAbsent ? const Value.absent() : Value(foto),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Schedule.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Schedule(
      id: serializer.fromJson<int?>(json['id']),
      userId: serializer.fromJson<int?>(json['user_id']),
      scheduleDescription:
          serializer.fromJson<String?>(json['schedule_description']),
      foto: serializer.fromJson<String?>(json['foto']),
      createdAt: serializer.fromJson<DateTime?>(json['created_at']),
      updatedAt: serializer.fromJson<DateTime?>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'user_id': serializer.toJson<int?>(userId),
      'schedule_description': serializer.toJson<String?>(scheduleDescription),
      'foto': serializer.toJson<String?>(foto),
      'created_at': serializer.toJson<DateTime?>(createdAt),
      'updated_at': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  Schedule copyWith(
          {Value<int?> id = const Value.absent(),
          Value<int?> userId = const Value.absent(),
          Value<String?> scheduleDescription = const Value.absent(),
          Value<String?> foto = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent()}) =>
      Schedule(
        id: id.present ? id.value : this.id,
        userId: userId.present ? userId.value : this.userId,
        scheduleDescription: scheduleDescription.present
            ? scheduleDescription.value
            : this.scheduleDescription,
        foto: foto.present ? foto.value : this.foto,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Schedule(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('scheduleDescription: $scheduleDescription, ')
          ..write('foto: $foto, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, userId, scheduleDescription, foto, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Schedule &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.scheduleDescription == this.scheduleDescription &&
          other.foto == this.foto &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SchedulesCompanion extends UpdateCompanion<Schedule> {
  final Value<int?> id;
  final Value<int?> userId;
  final Value<String?> scheduleDescription;
  final Value<String?> foto;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const SchedulesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.scheduleDescription = const Value.absent(),
    this.foto = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SchedulesCompanion.insert({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.scheduleDescription = const Value.absent(),
    this.foto = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<Schedule> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? scheduleDescription,
    Expression<String>? foto,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (scheduleDescription != null)
        'schedule_description': scheduleDescription,
      if (foto != null) 'foto': foto,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SchedulesCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? userId,
      Value<String?>? scheduleDescription,
      Value<String?>? foto,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return SchedulesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      scheduleDescription: scheduleDescription ?? this.scheduleDescription,
      foto: foto ?? this.foto,
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
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (scheduleDescription.present) {
      map['schedule_description'] = Variable<String>(scheduleDescription.value);
    }
    if (foto.present) {
      map['foto'] = Variable<String>(foto.value);
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
    return (StringBuffer('SchedulesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('scheduleDescription: $scheduleDescription, ')
          ..write('foto: $foto, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $DataUsersTable dataUsers = $DataUsersTable(this);
  late final $SchedulesTable schedules = $SchedulesTable(this);
  late final UsersDao usersDao = UsersDao(this as AppDb);
  late final SchedulesDao schedulesDao = SchedulesDao(this as AppDb);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dataUsers, schedules];
}
