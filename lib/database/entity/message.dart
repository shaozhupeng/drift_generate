import 'package:drift/drift.dart';

class Message extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get conversationId => text().named('conversationId')();
  IntColumn get conversationType => integer().named('conversationType')();
  TextColumn get fromId => text().named('fromId')();
  TextColumn get fromType => text().named('fromType')();
  TextColumn get msg => text().named('msg')();
  TextColumn get msgId => text().named('msgId')();
  TextColumn get msgType => text().named('msgType')();
  TextColumn get msgMetadata => text().named('msgMetadata')();
  TextColumn get sendStatus => text().named('sendStatus').nullable()();
  DateTimeColumn get sendTime => dateTime().named('sendTime')();
  TextColumn get toId => text().named('toId')();
  TextColumn get toType => text().named('toType')();
}
