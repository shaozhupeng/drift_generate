import 'package:drift/drift.dart';

class User extends Table {
  IntColumn get id => integer()();
  TextColumn get nickname => text()();
  TextColumn get username => text()();
  TextColumn get password => text()();
  TextColumn get uniqueId => text()();
  BlobColumn get interests => blob().nullable()();
  TextColumn get gender => text().nullable()();
  TextColumn get birthday => text().nullable()();
  TextColumn get avatarPath => text().nullable()();
  TextColumn get personalSignature => text().nullable()();
  IntColumn get characterNumberCreated =>
      integer().withDefault(const Constant(0))();
  IntColumn get characterNumberMax =>
      integer().withDefault(const Constant(2))();
}
