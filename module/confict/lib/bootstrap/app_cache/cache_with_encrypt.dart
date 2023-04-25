import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'cache.dart';

class CacheEncrypt extends Cache {
  final FlutterSecureStorage storage;

  static Future<CacheEncrypt> invoke() async {
    return CacheEncrypt._(const FlutterSecureStorage());
  }

  CacheEncrypt._(this.storage);

  @override
  Future<bool> delete(String key) async {
    try {
      await storage.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> empty() async {
    try {
      await storage.deleteAll();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> reload() async {
    try {
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> writeString(String key, String value) async {
    try {
      await storage.write(key: key, value: value);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String?> readString(String key) async {
    try {
      return await storage.read(key: key);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> writeInt(String key, int value) async {
    try {
      await storage.write(key: key, value: value.toString());
      return true;
    } catch (e) {
      return false;
    }
  }

  // @override
  // Future<int?> readInt(String key) async {
  //   try {
  //     return (await storage.read(key: key))?.parseInt();
  //   } catch (e) {
  //     return null;
  //   }
  // }

  @override
  Future<bool> writeDouble(String key, double value) async {
    try {
      await storage.write(key: key, value: value.toString());
      return true;
    } catch (e) {
      return false;
    }
  }
  //
  // @override
  // Future<double?> readDouble(String key) async {
  //   try {
  //     return (await storage.read(key: key))?.parseDouble();
  //   } catch (e) {
  //     return null;
  //   }
  // }

  @override
  Future<bool> writeBool(String key, bool value) async {
    try {
      await storage.write(key: key, value: value.toString());
      return true;
    } catch (e) {
      return false;
    }
  }

  // @override
  // Future<bool> readBool(String key) async {
  //   try {
  //     return (await storage.read(key: key))?.parseBool();
  //   } catch (e) {
  //     return false;
  //   }
  // }

  @override
  Future<bool> writeList(String key, List<String> value) async {
    try {
      var mapList = <String, dynamic>{};
      for (int i = 0; i < value.length; i++) {
        mapList.addAll({
          i.toString(): value[i],
        });
      }
      await storage.write(
        key: key,
        value: jsonEncode(mapList),
      );
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<List<String>?> readListString(String key) async {
    try {
      var values = <String>[];
      Map<String, dynamic> mapList = jsonDecode(
        await storage.read(key: key) ?? '',
      );
      for (var entry in mapList.entries) {
        values.add(entry.value.toString());
      }
      return values;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<bool> readBool(String key) {
    // TODO: implement readBool
    throw UnimplementedError();
  }

  @override
  Future<int?> readInt(String key) {
    // TODO: implement readInt
    throw UnimplementedError();
  }

  @override
  Future<double?> readDouble(String key) {
    // TODO: implement readDouble
    throw UnimplementedError();
  }
}
