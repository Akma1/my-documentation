import 'dart:io';

import 'package:drift/drift.dart';
import 'package:path/path.dart' as p;
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';

import '../data/tables/schedules.dart';
import '../data/tables/table_data_users.dart';
import '../data/daos/dao_users.dart';
import '../data/daos/schedules_dao.dart';

part 'db_controller.g.dart';

const List<Type> daoList = [
  UsersDao,
  SchedulesDao,
];

const List<Type> tableList = [
  DataUsers,
  Schedules,
];
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'local.db_controller'));

    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: tableList, daos: daoList)
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
