import 'package:get_storage/get_storage.dart';

class ELocalStorage {
  static final ELocalStorage _instance = ELocalStorage._internal();

  factory ELocalStorage() {
    return _instance;
  }

  ELocalStorage._internal();

  final _storage = GetStorage();

  // Method to save data to local storage
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Method to get data from local storage
  T? getData<T>(String key) {
    return _storage.read(key);
  }

  // Method to remove data from local storage
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Method to clear all data from local storage
  Future<void> clearAllData() async {
    await _storage.erase();
  }

  // Method to check if key exists in local storage
  bool hasData(String key) {
    return _storage.hasData(key);
  }

  // Method to get all keys in local storage
  List<String> getAllKeys() {
    return _storage.getKeys().toList();
  }
}
