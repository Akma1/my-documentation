import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:my_documentation/app/modules/drift_documentation/data/tables/table_users.dart';

import '../../controllers/db_controller.dart';

part 'dao_users.g.dart';

@DriftAccessor(tables: [TableUsers])
class SamplingsDao extends DatabaseAccessor<AppDb> with _$SamplingsDaoMixin {
  SamplingsDao(AppDb db) : super(db);

  // Future<bool> add({

  // }) async {
  //   try {
  //     bool success = await db.transaction(() async {
  //       await into(samplings).insert(sampling!);
  //       await batch((batch) {
  //         batch.insertAllOnConflictUpdate(samplingDetails, samplingDetail!);
  //       });
  //       return true;
  //     });
  //     return success;
  //   } catch (e) {
  //     log('ERROR 2 ${e.toString()}');
  //     rethrow;
  //   }
  // }
}
