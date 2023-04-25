import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'dart:io' show Platform;

class DeviceInfo {
  DeviceInfo._();

  static final DeviceInfo _instance = DeviceInfo._();

  static DeviceInfo get I => _instance;

  String get device {
    if (Platform.isAndroid) {
      return "$deviceModel/$manufacturer/$deviceId";
    } else {
      return "$deviceModel/$manufacturer/$deviceId";
    }
  }

  String get systems {
    if (Platform.isAndroid) {
      return "Android/$systemVersion/$sdkVersion";
    } else {
      return "iOS/$systemVersion";
    }
  }

  ///deviceModel/systemVersion/deviceID
  String get userUrgent {
    if (Platform.isAndroid) {
      return "$deviceModel/$manufacturer/$deviceId";
    } else {
      return "$deviceModel/$systemVersion/$deviceId";
    }
  }

  String get getApp => "$packageVersion/$packageBuildNumber";
  String? deviceModel;
  String? manufacturer;
  String? deviceId;
  int? sdkVersion;
  String? systemVersion;
  String? packageVersion;
  String? packageBuildNumber;

  Future<void> invoke() async {
    final deviceInfo = DeviceInfoPlugin();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    packageVersion = packageInfo.version;
    packageBuildNumber = packageInfo.buildNumber;
    if (Platform.isAndroid) {
      var device = await deviceInfo.androidInfo;
      deviceModel = device.model.replaceAll(' ', '');
      manufacturer = device.manufacturer.replaceAll(' ', '');
      deviceId = device.id.replaceAll(' ', '');
      sdkVersion = device.version.sdkInt;
      systemVersion = device.version.release.replaceAll(' ', '');
    } else if (Platform.isIOS) {
      var device = await deviceInfo.iosInfo;
      deviceId = device.identifierForVendor;
      systemVersion = device.systemVersion;
      deviceModel = device.model;
      manufacturer = device.systemName;
    }
  }

  Map<String, String> get toMap => {
        'app': getApp,
        'device': device,
        'systems': systems,
        'userUrgent': userUrgent,
        'deviceModel': deviceModel ?? '',
        'manufacturer': manufacturer ?? '',
        'deviceId': deviceId ?? '',
        'sdkVersion': sdkVersion.toString(),
        'systemVersion': systemVersion ?? '',
        'packageVersion': packageVersion ?? '',
        'packageBuildNumber': packageBuildNumber ?? '',
      };
}
