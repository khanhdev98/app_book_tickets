abstract class Cache {
  Future<bool> writeString(String key, String value);

  Future<String?> readString(String key);

  Future<bool> writeInt(String key, int value);

  Future<int?> readInt(String key);

  Future<bool> writeDouble(String key, double value);

  Future<double?> readDouble(String key);

  Future<bool> writeBool(String key, bool value);

  Future<bool> readBool(String key);

  Future<bool> writeList(String key, List<String> value);

  Future<List<String>?> readListString(String key);

  Future<bool> delete(String key);

  Future<bool> empty();

  Future<bool> reload();
}
