import 'package:drift/drift.dart';

class Schedules extends Table {
  @override
  Set<Column> get primaryKey => {id};

  // id: 1,
  @JsonKey('id')
  IntColumn get id => integer().named('id').nullable()();

  // user_id : 180,
  @JsonKey('user_id')
  IntColumn get userId => integer().named('user_id').nullable()();

  // schedule_description: "deskripsi",
  @JsonKey('schedule_description')
  TextColumn get scheduleDescription =>
      text().named('schedule_description').nullable()();

  // foto: "user.png",
  @JsonKey('foto')
  TextColumn get foto => text().named('foto').nullable()();

  // created_at: "",
  @JsonKey('created_at')
  DateTimeColumn get createdAt => dateTime()
      .named('created_at')
      .withDefault(currentDateAndTime)
      .nullable()();

  //updated_at: "",
  @JsonKey('updated_at')
  DateTimeColumn get updatedAt => dateTime().named('updated_at').nullable()();
}
