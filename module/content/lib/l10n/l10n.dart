import 'dart:ui';

class L10n {
  L10n._();

  List<Locale> get values => [
        en('US'),
        vi,
      ];

  static final L10n _instance = L10n._();

  static L10n get I => _instance;

  Locale get defaultLocale {
    return values.first;
  }

  Locale get getMachineLocale => window.locale;

  Locale get currentLocale {
    switch(getMachineLocale.languageCode) {
      case 'vi':
        return vi;
      default:
        return defaultLocale;
    }
  }

  Locale en([String countryCode = 'US']) {
    return const Locale('en');
  }

  Locale get vi {
    return const Locale('vi');
  }
}
