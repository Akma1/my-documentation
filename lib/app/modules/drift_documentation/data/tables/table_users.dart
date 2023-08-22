import 'package:drift/drift.dart';

class TableUsers extends Table {
  @override
  Set<Column> get primaryKey => {id};

  //photo: "1"
  @JsonKey('id')
  IntColumn get id => integer().named('id').autoIncrement().nullable()();

  //photo: "username"
  @JsonKey('name')
  TextColumn get name => text().named('name').nullable()();

  //photo: "photo.jpg/png/jpeg"
  @JsonKey('photo')
  TextColumn get photo => text().named('photo').nullable()();

  //created_at: "2023-08-22 07:57:13.605667",
  @JsonKey('created_at')
  DateTimeColumn get createdAt => dateTime()
      .named('created_at')
      .withDefault(currentDateAndTime)
      .nullable()();

  //updated_at: "2023-08-22 07:57:13.605667",
  @JsonKey('updated_at')
  DateTimeColumn get updatedAt => dateTime().named('updated_at').nullable()();
}
