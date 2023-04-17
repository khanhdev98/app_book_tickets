import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'halo_localizations_en.dart';
import 'halo_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of Str
/// returned by `Str.of(context)`.
///
/// Applications need to include `Str.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generate/halo_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Str.localizationsDelegates,
///   supportedLocales: Str.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Str.supportedLocales
/// property.
abstract class Str {
  Str(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Str of(BuildContext context) {
    return Localizations.of<Str>(context, Str)!;
  }

  static const LocalizationsDelegate<Str> delegate = _StrDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @notify_error_occurred.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred. Please try again'**
  String get notify_error_occurred;

  /// No description provided for @common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// No description provided for @common_ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get common_ok;

  /// No description provided for @common_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get common_save;

  /// No description provided for @setting_uer_add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get setting_uer_add;

  /// No description provided for @setting_user_edit_profile_appbar_title.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get setting_user_edit_profile_appbar_title;

  /// No description provided for @setting_user_edit_profile_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get setting_user_edit_profile_full_name;

  /// No description provided for @setting_user_edit_profile_nick_name.
  ///
  /// In en, this message translates to:
  /// **'Nick name'**
  String get setting_user_edit_profile_nick_name;

  /// No description provided for @setting_user_edit_profile_introduce.
  ///
  /// In en, this message translates to:
  /// **'Introduce'**
  String get setting_user_edit_profile_introduce;

  /// No description provided for @setting_user_edit_profile_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get setting_user_edit_profile_gender;

  /// No description provided for @setting_user_edit_profile_birthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get setting_user_edit_profile_birthday;

  /// No description provided for @setting_user_edit_profile_cell_phone.
  ///
  /// In en, this message translates to:
  /// **'Cell phone'**
  String get setting_user_edit_profile_cell_phone;

  /// No description provided for @setting_user_edit_profile_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get setting_user_edit_profile_phone;

  /// No description provided for @setting_user_edit_profile_personal_detail.
  ///
  /// In en, this message translates to:
  /// **'Personal details'**
  String get setting_user_edit_profile_personal_detail;

  /// No description provided for @setting_user_edit_profile_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact Info'**
  String get setting_user_edit_profile_contact;

  /// No description provided for @setting_user_edit_profile_place_title.
  ///
  /// In en, this message translates to:
  /// **'Places You\'\'ve lived'**
  String get setting_user_edit_profile_place_title;

  /// No description provided for @setting_user_edit_profile_education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get setting_user_edit_profile_education;

  /// No description provided for @setting_user_edit_profile_jobs.
  ///
  /// In en, this message translates to:
  /// **'Job'**
  String get setting_user_edit_profile_jobs;

  /// No description provided for @setting_user_edit_profile_career.
  ///
  /// In en, this message translates to:
  /// **'Career'**
  String get setting_user_edit_profile_career;

  /// No description provided for @setting_user_edit_profile_place_current_place.
  ///
  /// In en, this message translates to:
  /// **'live in'**
  String get setting_user_edit_profile_place_current_place;

  /// No description provided for @setting_user_edit_profile_place_home_town.
  ///
  /// In en, this message translates to:
  /// **'Home town'**
  String get setting_user_edit_profile_place_home_town;

  /// No description provided for @setting_user_edit_profile_university.
  ///
  /// In en, this message translates to:
  /// **'University'**
  String get setting_user_edit_profile_university;

  /// No description provided for @setting_user_edit_profile_high_school.
  ///
  /// In en, this message translates to:
  /// **'High school'**
  String get setting_user_edit_profile_high_school;

  /// No description provided for @setting_user_edit_profile_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get setting_user_edit_profile_email;

  /// No description provided for @setting_user_edit_profile_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get setting_user_edit_profile_address;

  /// No description provided for @setting_user_edit_profile_label_nick_name.
  ///
  /// In en, this message translates to:
  /// **'Nhập tên người dùng'**
  String get setting_user_edit_profile_label_nick_name;

  /// No description provided for @setting_user_edit_profile_edit_name_appbar.
  ///
  /// In en, this message translates to:
  /// **'Edit name'**
  String get setting_user_edit_profile_edit_name_appbar;

  /// No description provided for @setting_user_first_name.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get setting_user_first_name;

  /// No description provided for @setting_user_middle_name.
  ///
  /// In en, this message translates to:
  /// **'Middle name'**
  String get setting_user_middle_name;

  /// No description provided for @setting_user_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get setting_user_last_name;

  /// No description provided for @setting_user_pass.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get setting_user_pass;

  /// No description provided for @setting_user_message_error_network_connection.
  ///
  /// In en, this message translates to:
  /// **'The connection is being interrupted. Please check the connection again'**
  String get setting_user_message_error_network_connection;

  /// No description provided for @setting_user_title_error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get setting_user_title_error;

  /// No description provided for @setting_user_field_middle_name_required.
  ///
  /// In en, this message translates to:
  /// **'Middle name is required'**
  String get setting_user_field_middle_name_required;

  /// No description provided for @setting_user_field_middle_name_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid middle name'**
  String get setting_user_field_middle_name_invalid;

  /// No description provided for @setting_user_field_first_name_required.
  ///
  /// In en, this message translates to:
  /// **'First name is required'**
  String get setting_user_field_first_name_required;

  /// No description provided for @setting_user_field_first_name_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid first name'**
  String get setting_user_field_first_name_invalid;

  /// No description provided for @setting_user_field_pass_required.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get setting_user_field_pass_required;

  /// No description provided for @setting_user_field_pass_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid password'**
  String get setting_user_field_pass_invalid;

  /// No description provided for @setting_user_edit_profile_message_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during editing\npersonal page. Please try again!'**
  String get setting_user_edit_profile_message_error;

  /// No description provided for @setting_user_edit_profile_favorite_quotes.
  ///
  /// In en, this message translates to:
  /// **'Favorite quotes'**
  String get setting_user_edit_profile_favorite_quotes;

  /// No description provided for @setting_user_edit_profile_label_favorite_quotes.
  ///
  /// In en, this message translates to:
  /// **'Write your favorite quotes'**
  String get setting_user_edit_profile_label_favorite_quotes;
}

class _StrDelegate extends LocalizationsDelegate<Str> {
  const _StrDelegate();

  @override
  Future<Str> load(Locale locale) {
    return SynchronousFuture<Str>(lookupStr(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_StrDelegate old) => false;
}

Str lookupStr(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return StrEn();
    case 'vi': return StrVi();
  }

  throw FlutterError(
    'Str.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
