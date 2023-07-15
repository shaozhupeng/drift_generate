import 'package:drift_generate/database/database.dart';

import '../entity/conversation.dart';
import 'package:drift/drift.dart';
part 'conversation_dao.g.dart';

@DriftAccessor(tables: [Conversation])
class ConversationDao extends DatabaseAccessor<MyDatabase>
    with _$ConversationDaoMixin {
  ConversationDao(MyDatabase db) : super(db);
}
