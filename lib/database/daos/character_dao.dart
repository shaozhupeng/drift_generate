import 'package:drift_generate/database/database.dart';

import '../entity/character.dart';
import 'package:drift/drift.dart';
part 'character_dao.g.dart';

@DriftAccessor(tables: [Character])
class CharacterDao extends DatabaseAccessor<MyDatabase>
    with _$CharacterDaoMixin {
  CharacterDao(MyDatabase db) : super(db);
}
