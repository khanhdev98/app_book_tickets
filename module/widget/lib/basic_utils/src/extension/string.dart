import 'dart:convert';
import 'package:crypto/crypto.dart' as crypto;
import 'package:encrypt/encrypt.dart';
import 'package:widget/basic_utils/src/StringUtils.dart';


extension StringFormatExtention on String? {
  bool isNumber({String format = r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$'}) {
    if (this == null) return false;
    final numericRegex = RegExp(format);

    return numericRegex.hasMatch(this!);
  }

  bool isNullOrEmpty() => this == null || this!.isEmpty;

  bool isNotNullOrEmpty() => this != null && this!.isNotEmpty;

  bool isNotNullOrBlank() => this != null && trimMultipleSpace() != '';

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

  bool parseBool() {
    return this?.toLowerCase() == 'true';
  }

  int? parseInt() {
    var parserValue = this ?? '';

    try {
      return int.tryParse(parserValue);
    } catch (e) {
      return null;
    }
  }

  double? parseDouble() {
    var parserValue = this ?? '';

    try {
      return double.tryParse(parserValue);
    } catch (e) {
      return null;
    }
  }

  String unSigned() => StringUtils.unsigned(this ?? '');
}
