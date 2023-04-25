import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'cache.dart';

class CacheNoneEncrypt extends Cache {
  final SharedPreferences preferences;

  static Future<Cache> invoke() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.reload();
    return CacheNoneEncrypt._(preferences);
  }

  CacheNoneEncrypt._(this.preferences);

  @override
  Future<bool> delete(String key) {
    return preferences.remove(key);
  }

  @override
  Future<bool> empty() {
    return preferences.clear();
  }

  @override
  Future<bool> reload() async {
    try {
      await preferences.reload();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> writeString(String key, String value) {
    return preferences.setString(key, value);
  }

  @override
  Future<String?> readString(String key) async {
    return preferences.getString(key);
  }

  @override
  Future<bool> writeInt(String key, int value) {
    return preferences.setInt(key, value);
  }

  @override
  Future<int?> readInt(String key) async {
    return preferences.getInt(key);
  }

  @override
  Future<bool> writeDouble(String key, double value) {
    return preferences.setDouble(key, value);
  }

  @override
  Future<double?> readDouble(String key) async {
    return preferences.getDouble(key);
  }

  @override
  Future<bool> writeBool(String key, bool value) {
    return preferences.setBool(key, value);
  }

  @override
  Future<bool> readBool(String key) async {
    return preferences.getBool(key) ?? false;
  }

  @override
  Future<bool> writeList(String key, List<String> value) {
    return preferences.setStringList(key, value);
  }

  @override
  Future<List<String>?> readListString(String key) async {
    return preferences.getStringList(key);
  }
}
