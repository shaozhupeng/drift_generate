import 'package:drift/drift.dart';

class ChatHistory extends Table {
  /// 自增id
  IntColumn get id => integer().autoIncrement()();

  /// 消息id
  TextColumn get msgId => text()();
  TextColumn get from => text()();

  /// 发送者头像
  TextColumn get fromAvatar => text()();

  /// 发送者名称
  TextColumn get fromName => text()();

  /// 接收者
  TextColumn get to => text()();

  /// 接收者头像
  TextColumn get toAvatar => text()();

  /// 接收者名称
  TextColumn get toName => text()();
  IntColumn get chatType => integer()();

  /// 0: text, 1: image, 2: audio, 3: video, 4: file, 5: location, 6: contact, 7: link, 8: system
  IntColumn get msgType => integer().withDefault(const Constant(0))();

  /// 消息内容
  TextColumn get msg => text()();

  /// 非文本消息内容
  TextColumn get msgInfo => text().nullable()();

  ///发送时间
  DateTimeColumn get sendTime => dateTime()();

  ///发送状态
  IntColumn get sendStatus => integer()();

  ///会话id
  IntColumn get sessionId => integer()();
}
