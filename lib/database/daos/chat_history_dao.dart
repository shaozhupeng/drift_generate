import 'package:drift_generate/database/database.dart';

import '../entity/chat_history.dart';
import 'package:drift/drift.dart';
part 'chat_history_dao.g.dart';

@DriftAccessor(tables: [ChatHistory])
class ChatHistoryDao extends DatabaseAccessor<MyDatabase>
    with _$ChatHistoryDaoMixin {
  ChatHistoryDao(MyDatabase db) : super(db);
}
