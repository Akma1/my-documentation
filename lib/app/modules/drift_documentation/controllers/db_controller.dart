import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:my_documentation/app/modules/drift_documentation/data/tables/table_users.dart';
import 'package:path/path.dart' as p;
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';

part 'db_controller.g.dart';

const List<Type> daoList = [];

const List<Type> tableList = [
  TableUsers,
];
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: tableList, daos: daoList)
class AppDb extends _$AppDb {
  int version = 1;
  AppDb() : super(_openConnection());
  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from != version) {
          for (final table in allTables) {
            await m.deleteTable(table.actualTableName);
          }
          await m.createAll().then((value) {});
        }
      },
    );
  }

  @override
  int get schemaVersion => version;

  Future<void> truncateAll() async {
    var res = await transaction(() async {
      for (final table in allTables) {
        await delete(table).go();
      }
    });
    log('res $res');
  }
}
