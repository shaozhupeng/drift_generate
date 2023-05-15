import 'package:drift_generate/database/database.dart';

import '../entity/chatitem_entity.dart';
import 'package:drift/drift.dart';
part 'chatitem_dao.g.dart';

@DriftAccessor(tables: [ChatItem])
class ChatItemDao extends DatabaseAccessor<MyDatabase> with _$ChatItemDaoMixin {
  ChatItemDao(MyDatabase db) : super(db);
}
