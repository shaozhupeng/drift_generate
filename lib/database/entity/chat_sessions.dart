import 'package:drift/drift.dart';

class ChatSessions extends Table {
  /// 自增id
  IntColumn get id => integer().autoIncrement()();

  /// 会话id
  TextColumn get sessionid => text()();

  /// 用户id
  TextColumn get userId => text()();

  /// 角色id
  IntColumn get characterId => integer()();

  /// 角色头像
  TextColumn get characterAvatar => text().nullable()();

  /// 最新一条消息
  TextColumn get lastMsg => text().nullable()();

  /// 最新一条消息时间
  DateTimeColumn get latestTime => dateTime().nullable()();

  /// 最新一条消息类型
  TextColumn get lastMsgType => text().nullable()();

  /// 角色名称
  TextColumn get characterName => text()();
}
