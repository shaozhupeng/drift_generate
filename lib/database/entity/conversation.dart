import 'package:drift/drift.dart';

class Conversation extends Table {
  /// 自增id
  IntColumn get id => integer().autoIncrement()();
  TextColumn get conversationId => text().named('conversationId')();
  IntColumn get conversationType => integer().named('conversationType')();
  TextColumn get memberId => text().named('memberId')();
  IntColumn get memberType => integer().named('memberType')();
  TextColumn get userId => text().named('userId')();
  TextColumn get nickname => text().named('nickname').nullable()();
  TextColumn get avatarPath => text().named('avatarPath').nullable()();
  TextColumn get backgroundPath => text().named('backgroundPath').nullable()();
  TextColumn get characterName => text().named('characterName').nullable()();
  TextColumn get toId => text().named('toId').nullable()();
  TextColumn get toUserName => text().named('toUserName').nullable()();
  TextColumn get toAvatarPath => text().named('toAvatarPath').nullable()();
  TextColumn get lastMsg => text().named('lastMsg').nullable()();
  TextColumn get lastMsgType => text().named('lastMsgType').nullable()();
  TextColumn get latestTime => text().named('latestTime')();
}
