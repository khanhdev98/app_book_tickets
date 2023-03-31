import 'package:libphonenumber/libphonenumber.dart';

class PhoneUtil {

  static Future<RegionInfo> getPhoneCode({
    required String phoneNumber,
    required String isoCode,
  }) =>
      PhoneNumberUtil.getRegionInfo(phoneNumber: phoneNumber, isoCode: isoCode);

  static Future<bool?> isValidPhoneCode({
    required String phoneNumber,
    required String isoCode,
  }) {
    final isValid = PhoneNumberUtil.isValidPhoneNumber(
        phoneNumber: phoneNumber, isoCode: isoCode);
    return isValid;
  }

  static Future<String?> normalizePhoneNumber({
    required String phoneNumber,
    required String isoCode,
  }) {
    try {
      return PhoneNumberUtil.normalizePhoneNumber(
          phoneNumber: phoneNumber, isoCode: isoCode);
    } catch (e) {
      return Future.value(null);
    }
  }

  static Future<PhoneNumberType> numberType({
    required String phoneNumber,
    required String isoCode,
  }) {
    return PhoneNumberUtil.getNumberType(
        phoneNumber: phoneNumber, isoCode: isoCode);
  }

  static Future<String?> formatAsYouType({
    required String phoneNumber,
    required String isoCode,
  }) {
    try {
      return PhoneNumberUtil.formatAsYouType(
        phoneNumber: phoneNumber,
        isoCode: isoCode,
      );
    } catch (e) {
      return Future.value(null);
    }
  }

  static Future<String?> getNameForNumber({
    required String phoneNumber,
    required String isoCode,
  }) {
    try {
      return PhoneNumberUtil.getNameForNumber(
          phoneNumber: phoneNumber, isoCode: isoCode);
    } catch (e) {
      return Future.value(null);
    }
  }
}
