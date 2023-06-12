import 'package:drift_generate/database/database.dart';

import '../entity/user_behavior.dart';
import 'package:drift/drift.dart';
part 'user_behavior_dao.g.dart';

@DriftAccessor(tables: [UserBehavior])
class UserBehaviorDao extends DatabaseAccessor<MyDatabase>
    with _$UserBehaviorDaoMixin {
  UserBehaviorDao(MyDatabase db) : super(db);
}
