import 'package:drift/drift.dart';

class UserBehavior extends Table {
  /// 自增id
  IntColumn get id => integer()();

  /// 用户id
  TextColumn get userId => text()();

  ///最后一次会话id
  TextColumn get lastSessionId => text()();

  ///最后一次会话时间
  DateTimeColumn get lastChatTime => dateTime().nullable()();
}
