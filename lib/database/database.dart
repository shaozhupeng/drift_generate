import 'daos/daos.dart';
import 'package:drift/drift.dart';
import 'entity/entitys.dart';
import 'unsupported.dart'
    if (dart.library.html) 'web.dart'
    if (dart.library.io) 'ffi.dart';
part 'database.g.dart';

@DriftDatabase(daos: [MessageDao, ChatItemDao], tables: [Message, ChatItem])
class MyDatabase extends _$MyDatabase {
  MyDatabase([QueryExecutor? e]) : super(e ?? openConnection());

  @override
  int get schemaVersion => 16;
}
