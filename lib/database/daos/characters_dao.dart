import 'package:drift_generate/database/database.dart';

import '../entity/characters.dart';
import 'package:drift/drift.dart';
part 'characters_dao.g.dart';

@DriftAccessor(tables: [Characters])
class CharactersDao extends DatabaseAccessor<MyDatabase>
    with _$CharactersDaoMixin {
  CharactersDao(MyDatabase db) : super(db);
}
