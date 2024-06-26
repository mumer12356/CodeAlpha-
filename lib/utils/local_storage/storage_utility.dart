
import '../../../../../utils/constants/exports.dart';

class CLocalStorage {
  static final CLocalStorage _instance = CLocalStorage._internal();

  factory CLocalStorage() {
    return _instance;
  }

  CLocalStorage._internal();

  final _storage = GetStorage();

// Generic method to save data
  Future<void> saveData<C>(String key, C value) async {
    await _storage.write(key, value);
  }

// Generic method to read data
  C? readData<C>(String key) {
    return _storage.read<C>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Generic method to remove data
  Future<void> clearAll() async {
    await _storage.erase();
  }

}