import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:my_documentation/app/modules/drift_documentation/controllers/db_controller.dart';
import 'package:my_documentation/app/modules/drift_documentation/data/tables/schedules.dart';

part 'schedules_dao.g.dart';

@DriftAccessor(tables: [Schedules])
class SchedulesDao extends DatabaseAccessor<AppDb> with _$SchedulesDaoMixin {
  SchedulesDao(AppDb db) : super(db);

  Future<bool> add({
    SchedulesCompanion? schedule,
  }) async {
    try {
      bool success = await db.transaction(() async {
        await into(schedules).insert(schedule!);

        return true;
      });
      return success;
    } catch (e) {
      log('ERROR 2 ${e.toString()}');
      rethrow;
    }
  }
}
