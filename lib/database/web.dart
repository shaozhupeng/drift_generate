import 'package:drift/drift.dart';
import 'package:drift/web.dart';

LazyDatabase openConnection() {
  print("in web database");
  return LazyDatabase(
    () async => WebDatabase.withStorage(
      await DriftWebStorage.indexedDbIfSupported('db'),
    ),
  );
}
