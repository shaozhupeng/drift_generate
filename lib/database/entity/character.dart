import 'package:drift/drift.dart';

class Character extends Table {
  IntColumn get id => integer().autoIncrement()();

  /// 用户唯一id
  TextColumn get userUniqueId => text()();

  /// 角色名称
  TextColumn get characterName => text()();

  ///特征标签
  TextColumn get prompt => text()();

  /// 角色形象图
  TextColumn get backgroundPath => text().nullable()();

  /// 角色头像
  TextColumn get avatarPath => text().nullable()();

  ///角色描述
  TextColumn get description => text().nullable()();

  ///情感prompt
  TextColumn get emotionPrompt => text().nullable()();

  ///情感json
  TextColumn get emotionJson => text().nullable()();

  /// 性格
  TextColumn get personality => text().nullable()();

  ///是否公开 0:不公开 1:公开
  TextColumn get isSecret => text().withDefault(const Constant("0"))();

  /// 职业
  TextColumn get profession => text().nullable()();

  /// 性别
  TextColumn get gender => text().nullable()();

  /// 口头禅
  TextColumn get mantra => text().nullable()();

  /// 语言风格
  TextColumn get languageStyle => text().nullable()();

  /// 故事
  TextColumn get story => text().nullable()();

  /// 生日
  DateTimeColumn get birthday => dateTime().nullable()();

  /// 星座
  TextColumn get astrology => text().nullable()();

  ///居住地
  TextColumn get residence => text().nullable()();

  /// 配偶
  TextColumn get spouse => text().nullable()();

  ///经济状况
  TextColumn get economicConditions => text().nullable()();

  /// 兴趣爱好
  TextColumn get interests => text().nullable()();

  ///常去地点
  TextColumn get frequentLocations => text().nullable()();
}
