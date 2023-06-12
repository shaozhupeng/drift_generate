import 'package:drift/drift.dart';

class UserInteractions extends Table {
  /// 自增id
  IntColumn get id => integer().autoIncrement()();

  /// 用户id
  IntColumn get userId => integer()();

  /// 角色id/作品id
  IntColumn get typeId => integer()();

  /// 给角色点赞：0/给作品点赞：1
  IntColumn get type => integer()();

  ///点赞状态
  IntColumn get status => integer().withDefault(const Constant(0))();
}
