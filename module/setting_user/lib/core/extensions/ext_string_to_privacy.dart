import '../enums/setting_privacy.dart';

extension PrivacyExtension on String? {
  SettingUserPrivacy get toPrivacy {
    if (this == "pri") {
      return SettingUserPrivacy.onlyMe;
    } else {
      return SettingUserPrivacy.public;
    }
  }
}
