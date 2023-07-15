import 'package:drift_generate/database/database.dart';

import '../entity/message.dart';
import 'package:drift/drift.dart';
part 'message_dao.g.dart';

@DriftAccessor(tables: [Message])
class MessageDao extends DatabaseAccessor<MyDatabase> with _$MessageDaoMixin {
  MessageDao(MyDatabase db) : super(db);
  Future<int> insert(MessageCompanion message) async {
    return await into(db.message).insert(message);
  }

  Future<List<MessageData>> selectList() async {
    return await select(db.message).get();
  }
}
