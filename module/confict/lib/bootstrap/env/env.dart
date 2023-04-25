import 'dart:ui';

import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';

import '../device.dart';
import 'currency.dart';
import 'flavor.dart';

const String kCurrencyPrefKey = "currency";
const String kLanguageCodePrefKey = "language-code";

/// Global configuration the application halo
/// see [Flavor],[Host],[Debug]
extension FirstOrDefaultExtension<T> on Iterable<T> {
  /// Returns the first element in the iterable.
  ///
  /// If the iterable is empty, the value specified by [defaultValue] will be
  /// returned instead. If [defaultValue] is omitted, the returned value will be
  /// `null`.
  ///
  /// Example:
  ///
  ///     void main() {
  ///       final list = <int>[];
  ///       final result = list.firstOrDefault(defaultValue: -1);
  ///
  ///       // Result: -1
  ///     }
  T firstOrDefault({required T defaultValue}) {
    if (isEmpty) return defaultValue;
    return first;
  }

  T? firstOrNull() {
    if (isEmpty) return null;
    return first;
  }
}

ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension ScopeFunctionsForObject<T> on T {
  ReturnType let<ReturnType>(ReturnType Function(T self) operationFor) {
    return operationFor(this);
  }

  T also(void Function(T self) operationFor) {
    operationFor(this);
    return this;
  }
}
abstract class Env {
  abstract String appFlavor;
  abstract String appHost;
  abstract bool appInstalled;
  abstract bool appLogger;
  abstract bool apiLogger;
  @Deprecated('Thay thế bằng defaultLocale')
  abstract String defaultLangCode;
  /// Dùng để chọn Ngôn ngữ trong application
  abstract String defaultLocale;
  /// Dùng để chọn Format tiền tệ
  abstract Currency appCurrency;
  abstract String defaultDateFormat;
  abstract int iosFlexibleUpdateHours;
  abstract int androidFlexibleUpdateDays;

  Map<String, String> get paths;

  Map<String, String> get keys;

  Map<String, String> get extras;

  /// The [HaloEnv] has 3 brand flavors for build (release, prod, mock)
  /// see [Flavor] for detail

  Flavor get flavor {
    return Flavor.values.firstWhere(
      (element) => element.value == appFlavor,
    );
  }

  bool get isFlavorRelease => flavor == Flavor.release;

  bool get isFlavorDev => isFlavorRelease ? false : flavor == Flavor.dev;

  bool get isFlavorPlugin => isFlavorRelease ? false : flavor == Flavor.plugin;

  /// Show logger
  /// When Application run on Release Flavor => logger will disable by default

  bool get isLogger {
    if (flavor == Flavor.release) {
      return false;
    }
    return appLogger;
  }

  /// Getter
  /// Get device info and cache

  int get timeMinusRefreshToken => 30;

  int get timeOutRequestApi => 6;

  String get app => DeviceInfo.I.getApp;

  String get userUrgent => DeviceInfo.I.userUrgent;

  String get deviceId => DeviceInfo.I.deviceId ?? '';

  String get systems => DeviceInfo.I.systems;

  String get device => DeviceInfo.I.device;

  // String get currentIpNetwork => GetIpUtil.I.currentIpNetwork ?? '';

  String get langeCode => Intl.defaultLocale ?? defaultLangCode;

  Locale get locale =>
      _findLocaleSupported(Intl.defaultLocale ?? defaultLocale).firstOrNull() ??
      Locale(defaultLocale);

  /// Utils
  /// ==========================================================================

  String getPath(String key) {
    return paths[key]!;
  }

  String getExtra(String key) {
    return extras[key]!;
  }

  String getKey(String key) {
    return keys[key]!;
  }
}

List<Locale> _findLocaleSupported(String locale) {
  return numberFormatSymbols.keys.where((element) => element.toString() == locale).let((self) {
    if (self.isNotEmpty) {
      try {
        return self
            .firstWhere((key) => key.toString().contains('_'))
            .map((key) => key.toString().split('_'))
            .map((split) => Locale(split[0], split[1]))
            .toList();
      } catch (e) {
        return self
            .where((key) => !key.toString().contains('_'))
            .map((value) => Locale(value))
            .toList();
      }
    } else {
      return [];
    }
  });
}
