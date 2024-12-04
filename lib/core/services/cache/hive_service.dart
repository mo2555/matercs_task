import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  const HiveService._internal();

  static const HiveService _instance = HiveService._internal();

  factory HiveService() => _instance;

  Future<void> storeData<T>(
      {required String boxName, required String key, required T data}) async {
    await Hive.box(boxName).put(key, data);
  }

  T getDataFromCache<T>(
      {required String boxName, required String key, T? defaultValue}) {
    return Hive.box(boxName).get(
      key,
      defaultValue: defaultValue,
    );
  }

  clear(String boxName){
    Hive.box(boxName).clear();
  }

}
