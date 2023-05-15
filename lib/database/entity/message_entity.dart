import 'package:drift/drift.dart';

class Message extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userUniqueId => text().named('user_unique_id')();
  IntColumn get characterId => integer().named('character_id')();
  TextColumn get userMessage => text().named('user_message')();
  TextColumn get aiMessage => text().named('ai_message')();
  DateTimeColumn get timestatmp => dateTime().named('timestatmp')();
  TextColumn get grade => text().named('grade')();
}
