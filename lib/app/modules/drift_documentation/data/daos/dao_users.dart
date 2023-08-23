import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:my_documentation/app/modules/drift_documentation/data/tables/table_data_users.dart';

import '../../controllers/db_controller.dart';

part 'dao_users.g.dart';

@DriftAccessor(tables: [DataUsers])
class UsersDao extends DatabaseAccessor<AppDb> with _$UsersDaoMixin {
  UsersDao(AppDb db) : super(db);

  Future<bool> add({
    DataUsersCompanion? tableUser,
  }) async {
    try {
      bool success = await db.transaction(() async {
        await into(dataUsers).insert(tableUser!);
        return true;
      });
      return success;
    } catch (e) {
      log('ERROR : ${e.toString()}');
      rethrow;
    }
  }
}
