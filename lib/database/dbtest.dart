import 'dart:ui';
import 'package:Elser/database/database.dart';
import 'package:drift/drift.dart' as df;

Future<void> main() async {
  MyDatabase db = MyDatabase();
  MessageCompanion messageCompanion = MessageCompanion(
      userUniqueId: const df.Value("szp"),
      characterId: const df.Value(1),
      userMessage: const df.Value("呵呵哒"),
      aiMessage: df.Value("我是miaoer"),
      timestatmp: df.Value(DateTime(2023, 5, 12, 23, 23)),
      grade: df.Value("1"));
  print("插入数据: ${db.messageDao.insert(messageCompanion)} 返回了结果");
}
