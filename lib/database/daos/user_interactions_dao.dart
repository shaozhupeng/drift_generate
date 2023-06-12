import 'package:drift_generate/database/database.dart';

import '../entity/user_interactions.dart';
import 'package:drift/drift.dart';
part 'user_interactions_dao.g.dart';

@DriftAccessor(tables: [UserInteractions])
class UserInteractionsDao extends DatabaseAccessor<MyDatabase>
    with _$UserInteractionsDaoMixin {
  UserInteractionsDao(MyDatabase db) : super(db);
}
