import 'package:drift_generate/database/database.dart';

import '../entity/chat_sessions.dart';
import 'package:drift/drift.dart';
part 'chat_sessions_dao.g.dart';

@DriftAccessor(tables: [ChatSessions])
class ChatSessionsDao extends DatabaseAccessor<MyDatabase>
    with _$ChatSessionsDaoMixin {
  ChatSessionsDao(MyDatabase db) : super(db);
}
