import 'dart:convert';

// import 'package:common/utils/time_format_util.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:encrypt/encrypt.dart';
import 'package:intl/intl.dart';

extension StringFormatExtention on String? {
  String? haloDateFormatter({String? format}) {
    if (isNullOrEmpty()) return null;
    return null;

    // return tryParse(format ?? 'yyyy-MM-dd')?.formatTimeApp();
  }

  DateTime? tryParse(String format) {
    try {
      return DateFormat(format).parse(this ?? '');
    } catch (e) {
      return null;
    }
  }

  bool isNumber({String format = r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$'}) {
    if (this == null) return false;
    final numericRegex = RegExp(format);

    return numericRegex.hasMatch(this!);
  }

  bool isBlank() => this?.trim().isEmpty ?? true;

  bool isNullOrEmpty() => this == null || this!.isEmpty;

  bool isNotNullOrEmpty() => this != null && this!.isNotEmpty;

  bool isNotNullOrBlank() => this != null && this != '';

  String? trimMultipleSpace() => this?.replaceAll(RegExp(r"\s+"), ' ');

  String? replaceMultipleSpace({String? replace}) =>
      this?.replaceAll(RegExp(r"\s+"), replace ?? ' ');

  String getOrBlank() => this == null ? '' : this!;

  String? capitalize([int? index]) {
    try {
      var newString = this?.toLowerCase().trim() ?? '';
      if (newString.isEmpty) {
        return newString;
      }
      var beforeText = '';
      if (index != null && index > 0) {
        beforeText = newString.substring(0, index);
      }
      return beforeText +
          newString[index ?? 0].toUpperCase() +
          newString.substring((index ?? 0) + 1);
    } catch (e) {
      return this;
    }
  }
}

class StringUtil {
  StringUtil._();

  ///Generate MD5
  static String md5(String input) {
    var md5 = crypto.md5;
    return md5.convert(utf8.encode(input)).toString();
  }

  static String encodeBase64(String input) {
    var bytes = utf8.encode(input);
    return base64.encode(bytes);
  }

  static String decodeBase64(String input) {
    return utf8.decode(base64.decode(input));
  }

  static String? aesEncryption(String? plainText, String secretKey) {
    if (plainText == null) return null;
    final key = Key.fromUtf8(secretKey);
    final iv = IV.fromLength(16);
    final aes = AES(
      key,
      mode: AESMode.ecb,
    );
    final encrypter = Encrypter(aes);
    return encrypter.encrypt(plainText, iv: iv).base64;
  }

  static String? aesDecryption(String? aesEncryption, String secretKey) {
    if (aesEncryption == null) return null;
    final key = Key.fromUtf8(secretKey);
    final iv = IV.fromLength(16);
    final aes = AES(
      key,
      mode: AESMode.ecb,
    );
    final encrypter = Encrypter(aes);
    return encrypter.decrypt(Encrypted.fromBase64(aesEncryption), iv: iv);
  }
}
