import 'package:drift/drift.dart';

class ChatItem extends Table {
  IntColumn get id => integer().named('id')();
  TextColumn get avatar => text().named('avatar')();
  TextColumn get role => text().named('role')();
  TextColumn get lastMsg => text().named('lastMsg')();
  TextColumn get date => text().named('date')();
  TextColumn get characterName => text().named('characterName')();
  TextColumn get avatarLocalPath =>
      text().nullable().named('avatarLocalPath')();
  @override
  Set<Column> get primaryKey => {id};
}
