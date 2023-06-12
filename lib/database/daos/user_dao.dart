import 'package:drift_generate/database/database.dart';

import '../entity/user.dart';
import 'package:drift/drift.dart';
part 'user_dao.g.dart';

@DriftAccessor(tables: [User])
class UserDao extends DatabaseAccessor<MyDatabase> with _$UserDaoMixin {
  UserDao(MyDatabase db) : super(db);
}
