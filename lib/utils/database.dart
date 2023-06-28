import 'package:firebase_database/firebase_database.dart';

class Database {
  final DatabaseReference ref = FirebaseDatabase.instance.ref();

  Future<void> set(String key, String value) async {
    await ref.set({
      key: value
    });
  }

  Future<DataSnapshot> get(String key) async {
    return await ref.child(key).get();
  }
}