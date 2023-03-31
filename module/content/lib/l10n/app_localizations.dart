import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of Str
/// returned by `Str.of(context)`.
///
/// Applications need to include `Str.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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

  /// No description provided for @common_try_again.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get common_try_again;

  /// No description provided for @common_see_more.
  ///
  /// In en, this message translates to:
  /// **'See more'**
  String get common_see_more;

  /// No description provided for @common_see_less.
  ///
  /// In en, this message translates to:
  /// **'See less'**
  String get common_see_less;

  /// No description provided for @common_search_hint.
  ///
  /// In en, this message translates to:
  /// **'Search …'**
  String get common_search_hint;

  /// No description provided for @common_loading.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get common_loading;

  /// No description provided for @common_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get common_retry;

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

  /// No description provided for @common_search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get common_search;

  /// No description provided for @common_decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get common_decline;

  /// No description provided for @common_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get common_done;

  /// No description provided for @common_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get common_confirm;

  /// No description provided for @common_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get common_close;

  /// No description provided for @common_detail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get common_detail;

  /// No description provided for @common_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get common_continue;

  /// No description provided for @common_use_payment_or_contact_info.
  ///
  /// In en, this message translates to:
  /// **'Using payer information or contact information'**
  String get common_use_payment_or_contact_info;

  /// No description provided for @common_person_payment.
  ///
  /// In en, this message translates to:
  /// **'Payer'**
  String get common_person_payment;

  /// No description provided for @common_chose_country_calling_code.
  ///
  /// In en, this message translates to:
  /// **'Choose country calling code'**
  String get common_chose_country_calling_code;

  /// No description provided for @using_payer_or_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Using payer or contact information'**
  String get using_payer_or_contact_information;

  /// No description provided for @common_enter_discount_code.
  ///
  /// In en, this message translates to:
  /// **'enter discount code'**
  String get common_enter_discount_code;

  /// No description provided for @see_more.
  ///
  /// In en, this message translates to:
  /// **'See more'**
  String get see_more;

  /// No description provided for @see_less.
  ///
  /// In en, this message translates to:
  /// **'See less'**
  String get see_less;

  /// No description provided for @common_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get common_adult;

  /// No description provided for @common_child.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get common_child;

  /// No description provided for @common_infant.
  ///
  /// In en, this message translates to:
  /// **'Infant'**
  String get common_infant;

  /// No description provided for @common_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get common_other;

  /// No description provided for @common_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get common_male;

  /// No description provided for @common_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get common_female;

  /// No description provided for @common_canceled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get common_canceled;

  /// No description provided for @common_tickets_issued.
  ///
  /// In en, this message translates to:
  /// **'Issued'**
  String get common_tickets_issued;

  /// No description provided for @common_booked.
  ///
  /// In en, this message translates to:
  /// **'Booked (Not yet issued)'**
  String get common_booked;

  /// No description provided for @common_ticket_issue_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to issue ticket'**
  String get common_ticket_issue_failed;

  /// No description provided for @common_no_reservation_yet.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get common_no_reservation_yet;

  /// No description provided for @common_prepay.
  ///
  /// In en, this message translates to:
  /// **'Prepayment'**
  String get common_prepay;

  /// No description provided for @common_postpaid.
  ///
  /// In en, this message translates to:
  /// **'Postpaid'**
  String get common_postpaid;

  /// No description provided for @common_personal.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get common_personal;

  /// No description provided for @common_account_type.
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get common_account_type;

  /// No description provided for @common_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get common_address;

  /// No description provided for @common_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get common_gender;

  /// No description provided for @common_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get common_full_name;

  /// No description provided for @common_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get common_unknown;

  /// No description provided for @common_yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get common_yes;

  /// No description provided for @common_no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get common_no;

  /// No description provided for @common_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get common_delete;

  /// No description provided for @common_success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get common_success;

  /// No description provided for @common_complete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get common_complete;

  /// No description provided for @common_in_process.
  ///
  /// In en, this message translates to:
  /// **'In processing'**
  String get common_in_process;

  /// No description provided for @common_restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get common_restart;

  /// No description provided for @common_choose.
  ///
  /// In en, this message translates to:
  /// **'Choose {text}'**
  String common_choose(String text);

  /// No description provided for @common_search_text.
  ///
  /// In en, this message translates to:
  /// **'Search {text}...'**
  String common_search_text(String text);

  /// No description provided for @message_title_bad_request.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred'**
  String get message_title_bad_request;

  /// No description provided for @message_bad_request.
  ///
  /// In en, this message translates to:
  /// **'The connection is being interrupted. Please check the connection again'**
  String get message_bad_request;

  /// No description provided for @message_title_fetch_data_exception.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred'**
  String get message_title_fetch_data_exception;

  /// No description provided for @message_fetch_data_exception.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the execution failed. Please check the connection again or try again.'**
  String get message_fetch_data_exception;

  /// No description provided for @message_title_author.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred'**
  String get message_title_author;

  /// No description provided for @message_author.
  ///
  /// In en, this message translates to:
  /// **'Login session has expired. Please login again.'**
  String get message_author;

  /// No description provided for @message_title_common.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred'**
  String get message_title_common;

  /// No description provided for @message_app_exception_common.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the execution failed. Please check the connection again or try again.'**
  String get message_app_exception_common;

  /// No description provided for @no_results_found.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get no_results_found;

  /// No description provided for @no_messages.
  ///
  /// In en, this message translates to:
  /// **'No messages, No comment'**
  String get no_messages;

  /// No description provided for @no_documents.
  ///
  /// In en, this message translates to:
  /// **'No documents'**
  String get no_documents;

  /// No description provided for @no_gps_connection.
  ///
  /// In en, this message translates to:
  /// **'No GPS connection'**
  String get no_gps_connection;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong,\nplease try again'**
  String get error;

  /// No description provided for @no_internet_connection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get no_internet_connection;

  /// No description provided for @empty_inbox.
  ///
  /// In en, this message translates to:
  /// **'Your inbox is empty'**
  String get empty_inbox;

  /// No description provided for @no_images.
  ///
  /// In en, this message translates to:
  /// **'No images'**
  String get no_images;

  /// No description provided for @no_credit_card.
  ///
  /// In en, this message translates to:
  /// **'No Credit Cards'**
  String get no_credit_card;

  /// No description provided for @no_items_cart.
  ///
  /// In en, this message translates to:
  /// **'Your bag is empty'**
  String get no_items_cart;

  /// No description provided for @no_tasks.
  ///
  /// In en, this message translates to:
  /// **'You’re all caught up!'**
  String get no_tasks;

  /// No description provided for @show_case_description_click_here_to_see_price_detail.
  ///
  /// In en, this message translates to:
  /// **'Click here to see price detail'**
  String get show_case_description_click_here_to_see_price_detail;

  /// No description provided for @widget_radio_text_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender:'**
  String get widget_radio_text_gender;

  /// No description provided for @widget_text_field_input_custom.
  ///
  /// In en, this message translates to:
  /// **'Enter reservation code'**
  String get widget_text_field_input_custom;

  /// No description provided for @an_unknown_error.
  ///
  /// In en, this message translates to:
  /// **'An unknown error'**
  String get an_unknown_error;

  /// No description provided for @please_try_again_later.
  ///
  /// In en, this message translates to:
  /// **'Please try again later.'**
  String get please_try_again_later;

  /// No description provided for @transaction_detail.
  ///
  /// In en, this message translates to:
  /// **'Transaction Detail'**
  String get transaction_detail;

  /// No description provided for @cancel_transaction.
  ///
  /// In en, this message translates to:
  /// **'Cancel Transaction'**
  String get cancel_transaction;

  /// No description provided for @account_information.
  ///
  /// In en, this message translates to:
  /// **'Account information'**
  String get account_information;

  /// No description provided for @recipient_list.
  ///
  /// In en, this message translates to:
  /// **'Recipients'**
  String get recipient_list;

  /// No description provided for @activities_log.
  ///
  /// In en, this message translates to:
  /// **'Activities log'**
  String get activities_log;

  /// No description provided for @setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get setting;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @verified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get verified;

  /// No description provided for @sign_out.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get sign_out;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @transaction_information.
  ///
  /// In en, this message translates to:
  /// **'Transaction information'**
  String get transaction_information;

  /// No description provided for @transaction_amount.
  ///
  /// In en, this message translates to:
  /// **'Transaction amount'**
  String get transaction_amount;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @text_button_fail_log_in.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get text_button_fail_log_in;

  /// No description provided for @processing_transaction_list.
  ///
  /// In en, this message translates to:
  /// **'Processing transaction list'**
  String get processing_transaction_list;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @sending_amount.
  ///
  /// In en, this message translates to:
  /// **'Sending amount'**
  String get sending_amount;

  /// No description provided for @bank_name.
  ///
  /// In en, this message translates to:
  /// **'Bank name'**
  String get bank_name;

  /// No description provided for @descriptions.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get descriptions;

  /// No description provided for @transaction_time.
  ///
  /// In en, this message translates to:
  /// **'Transaction time'**
  String get transaction_time;

  /// No description provided for @back_to_home.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get back_to_home;

  /// No description provided for @request_confirmed.
  ///
  /// In en, this message translates to:
  /// **'Request confirmed'**
  String get request_confirmed;

  /// No description provided for @transaction_id.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID'**
  String get transaction_id;

  /// No description provided for @make_new_transaction.
  ///
  /// In en, this message translates to:
  /// **'Make a new transaction'**
  String get make_new_transaction;

  /// No description provided for @email_transaction_details.
  ///
  /// In en, this message translates to:
  /// **'Email transaction details'**
  String get email_transaction_details;

  /// No description provided for @saved_recipients.
  ///
  /// In en, this message translates to:
  /// **'Saved recipients'**
  String get saved_recipients;

  /// No description provided for @total_available_balance.
  ///
  /// In en, this message translates to:
  /// **'Total Available Balance'**
  String get total_available_balance;

  /// No description provided for @verify_account.
  ///
  /// In en, this message translates to:
  /// **'Verify account'**
  String get verify_account;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @subtype.
  ///
  /// In en, this message translates to:
  /// **'Subtype'**
  String get subtype;

  /// No description provided for @routing.
  ///
  /// In en, this message translates to:
  /// **'Routing'**
  String get routing;

  /// No description provided for @available_balance.
  ///
  /// In en, this message translates to:
  /// **'Available balance'**
  String get available_balance;

  /// No description provided for @current_balance.
  ///
  /// In en, this message translates to:
  /// **'Current balance'**
  String get current_balance;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @progressing.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progressing;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @transferring.
  ///
  /// In en, this message translates to:
  /// **'Transferring'**
  String get transferring;

  /// No description provided for @sending.
  ///
  /// In en, this message translates to:
  /// **'Sending'**
  String get sending;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get resend_code;

  /// No description provided for @a_few_minutes.
  ///
  /// In en, this message translates to:
  /// **'a few minutes'**
  String get a_few_minutes;

  /// No description provided for @a_day.
  ///
  /// In en, this message translates to:
  /// **'24 hours'**
  String get a_day;

  /// No description provided for @paste.
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get paste;

  /// No description provided for @want_paste_code.
  ///
  /// In en, this message translates to:
  /// **'Do you want to paste this code?'**
  String get want_paste_code;

  /// No description provided for @paste_code.
  ///
  /// In en, this message translates to:
  /// **'Paste Code'**
  String get paste_code;

  /// No description provided for @verify_your_information.
  ///
  /// In en, this message translates to:
  /// **'Verify your information'**
  String get verify_your_information;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @common_optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get common_optional;

  /// No description provided for @common_reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get common_reset;

  /// No description provided for @password_star.
  ///
  /// In en, this message translates to:
  /// **'Password*'**
  String get password_star;

  /// No description provided for @validate_name_is_have_accent.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} contains only characters (a-z)'**
  String validate_name_is_have_accent(String fieldName);

  /// No description provided for @validate_required.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} is required'**
  String validate_required(String fieldName);

  /// No description provided for @validate_max_limit.
  ///
  /// In en, this message translates to:
  /// **'The maximum limit of {fieldName} is {numberOfCharacter} characters.'**
  String validate_max_limit(String fieldName, String numberOfCharacter);

  /// No description provided for @validate_from_to_characters.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} must be from {from} to {to} characters'**
  String validate_from_to_characters(String fieldName, String from, String to);

  /// No description provided for @validate_postal_code_us.
  ///
  /// In en, this message translates to:
  /// **'This must be 5 numeric digits for US addresses'**
  String get validate_postal_code_us;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthday;

  /// No description provided for @date_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get date_of_birth;

  /// No description provided for @no_data_found.
  ///
  /// In en, this message translates to:
  /// **'No data found'**
  String get no_data_found;

  /// No description provided for @notice.
  ///
  /// In en, this message translates to:
  /// **'Notice'**
  String get notice;

  /// No description provided for @account_was_looked.
  ///
  /// In en, this message translates to:
  /// **'Account was looked'**
  String get account_was_looked;

  /// No description provided for @detail_transaction.
  ///
  /// In en, this message translates to:
  /// **'Detail transaction'**
  String get detail_transaction;

  /// No description provided for @title_relogin_error.
  ///
  /// In en, this message translates to:
  /// **'Re-login bank account'**
  String get title_relogin_error;

  /// No description provided for @recent_transactions.
  ///
  /// In en, this message translates to:
  /// **'Recent transactions'**
  String get recent_transactions;

  /// No description provided for @view_all.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get view_all;

  /// No description provided for @no_transaction.
  ///
  /// In en, this message translates to:
  /// **'No transaction yet'**
  String get no_transaction;

  /// No description provided for @no_link_bank_account.
  ///
  /// In en, this message translates to:
  /// **'No link bank account'**
  String get no_link_bank_account;

  /// No description provided for @enter_verification_code.
  ///
  /// In en, this message translates to:
  /// **'Enter a verification code'**
  String get enter_verification_code;

  /// No description provided for @verification_code_has_been_sent.
  ///
  /// In en, this message translates to:
  /// **'A verification code has been sent  to your email'**
  String get verification_code_has_been_sent;

  /// No description provided for @text_language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get text_language;

  /// No description provided for @select_language.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get select_language;

  /// No description provided for @text_theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get text_theme;

  /// No description provided for @select_theme.
  ///
  /// In en, this message translates to:
  /// **'Select Theme'**
  String get select_theme;

  /// No description provided for @select_theme_dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get select_theme_dark;

  /// No description provided for @select_theme_light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get select_theme_light;

  /// No description provided for @select_theme_system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get select_theme_system;

  /// No description provided for @update_app_success.
  ///
  /// In en, this message translates to:
  /// **'App update successful!'**
  String get update_app_success;

  /// No description provided for @account_balance.
  ///
  /// In en, this message translates to:
  /// **'Account balance'**
  String get account_balance;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @send_money_card.
  ///
  /// In en, this message translates to:
  /// **'Send\nMoney'**
  String get send_money_card;

  /// No description provided for @transaction_history.
  ///
  /// In en, this message translates to:
  /// **'Transaction\nhistory'**
  String get transaction_history;

  /// No description provided for @no_notification_title.
  ///
  /// In en, this message translates to:
  /// **'No notification'**
  String get no_notification_title;

  /// No description provided for @no_notification_content.
  ///
  /// In en, this message translates to:
  /// **'Start using Haloki to receive notifications. Hope you have a great experience'**
  String get no_notification_content;

  /// No description provided for @dashboard_recently_linked_accounts.
  ///
  /// In en, this message translates to:
  /// **'Recently linked accounts'**
  String get dashboard_recently_linked_accounts;

  /// No description provided for @haloki_id.
  ///
  /// In en, this message translates to:
  /// **'Haloki ID'**
  String get haloki_id;

  /// No description provided for @haloki_balance.
  ///
  /// In en, this message translates to:
  /// **'Haloki Balance'**
  String get haloki_balance;

  /// No description provided for @common_failure.
  ///
  /// In en, this message translates to:
  /// **'Failure'**
  String get common_failure;

  /// No description provided for @link_account_button.
  ///
  /// In en, this message translates to:
  /// **'Link account'**
  String get link_account_button;

  /// No description provided for @no_link_account_start.
  ///
  /// In en, this message translates to:
  /// **'Link your bank account to start making transaction.'**
  String get no_link_account_start;

  /// No description provided for @verify_error_common.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again'**
  String get verify_error_common;

  /// No description provided for @verify_error_waiting_minutes.
  ///
  /// In en, this message translates to:
  /// **'You have just requested a verification code. Please wait a few minutes before trying again.'**
  String get verify_error_waiting_minutes;

  /// No description provided for @verify_error_waiting_24h.
  ///
  /// In en, this message translates to:
  /// **'You have requested for new verification code too many times. Please wait 24 hours before trying again.'**
  String get verify_error_waiting_24h;

  /// No description provided for @verify_error_code_is_expired.
  ///
  /// In en, this message translates to:
  /// **'Your verification code has been expired. Please choose \"resend code\" to recieve a new verification code.'**
  String get verify_error_code_is_expired;

  /// No description provided for @verify_error_invalid_value.
  ///
  /// In en, this message translates to:
  /// **'There has been an unexpected error. Please try again.'**
  String get verify_error_invalid_value;

  /// No description provided for @verify_error_max_verified.
  ///
  /// In en, this message translates to:
  /// **'You have attempted to enter the verification code too many times. You will not be able to enter the verification code again.'**
  String get verify_error_max_verified;

  /// No description provided for @verify_request_many_times.
  ///
  /// In en, this message translates to:
  /// **'You have request a verification code too many times. Please wait before trying again after '**
  String get verify_request_many_times;

  /// No description provided for @verify_expire.
  ///
  /// In en, this message translates to:
  /// **'The verification code will expire in 05:00'**
  String get verify_expire;

  /// No description provided for @verify_no_receive.
  ///
  /// In en, this message translates to:
  /// **'Didn’t receive the verification code'**
  String get verify_no_receive;

  /// No description provided for @verify_wrong_code_many_time.
  ///
  /// In en, this message translates to:
  /// **'You have entered the wrong code too many times.'**
  String get verify_wrong_code_many_time;

  /// No description provided for @verify_only_number.
  ///
  /// In en, this message translates to:
  /// **'Only Number are allowed'**
  String get verify_only_number;

  /// No description provided for @verification_code_sent.
  ///
  /// In en, this message translates to:
  /// **'A verification code has been sent to your email\n'**
  String get verification_code_sent;

  /// No description provided for @verification_code_required.
  ///
  /// In en, this message translates to:
  /// **'Verification code is required'**
  String get verification_code_required;

  /// No description provided for @minimum_limit_of_verification_code.
  ///
  /// In en, this message translates to:
  /// **'The minimum limit of Verification code is 6 character'**
  String get minimum_limit_of_verification_code;

  /// No description provided for @verify_error_incorrect.
  ///
  /// In en, this message translates to:
  /// **'The verification code is incorrect'**
  String get verify_error_incorrect;

  /// No description provided for @verification_invalid_code.
  ///
  /// In en, this message translates to:
  /// **'Invalid verification code, please try again.'**
  String get verification_invalid_code;

  /// No description provided for @verification_code_expired.
  ///
  /// In en, this message translates to:
  /// **'Verification code has expired, please get another one.'**
  String get verification_code_expired;

  /// No description provided for @verify_sent.
  ///
  /// In en, this message translates to:
  /// **'We\'ve just sent you a verification code to {emailOrPhone}. Please check your message and enter the code you received.'**
  String verify_sent(String emailOrPhone);

  /// No description provided for @request_verification_code.
  ///
  /// In en, this message translates to:
  /// **'You have just request a verification code. Please wait {aFewMinutesOr24Hours} before trying again after '**
  String request_verification_code(String aFewMinutesOr24Hours);

  /// No description provided for @please_try_again.
  ///
  /// In en, this message translates to:
  /// **'Please wait and try again after {timeWaiting}'**
  String please_try_again(String timeWaiting);

  /// No description provided for @boarding_content_one.
  ///
  /// In en, this message translates to:
  /// **'As a fast money transfer service, Haloki assists users in transferring and receiving money anytime and anywhere in an unlimited way'**
  String get boarding_content_one;

  /// No description provided for @boarding_content_two.
  ///
  /// In en, this message translates to:
  /// **'Users can make transactions at any time with just an internet connection. Haloki has a multilingual and user-friendly interface.'**
  String get boarding_content_two;

  /// No description provided for @boarding_content_there.
  ///
  /// In en, this message translates to:
  /// **'Haloki always willing to solve problems occurring in the process of making transactions on the application.'**
  String get boarding_content_there;

  /// No description provided for @boarding_title_one.
  ///
  /// In en, this message translates to:
  /// **'Transfer money'**
  String get boarding_title_one;

  /// No description provided for @boarding_title_two.
  ///
  /// In en, this message translates to:
  /// **'Easy to use'**
  String get boarding_title_two;

  /// No description provided for @boarding_title_there.
  ///
  /// In en, this message translates to:
  /// **'Fast, security'**
  String get boarding_title_there;

  /// No description provided for @boarding_learn_more.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get boarding_learn_more;

  /// No description provided for @recipient_appbar.
  ///
  /// In en, this message translates to:
  /// **'Recipient list'**
  String get recipient_appbar;

  /// No description provided for @recipient_no_recipient.
  ///
  /// In en, this message translates to:
  /// **'No recipient'**
  String get recipient_no_recipient;

  /// No description provided for @recipient_no_recipient_content.
  ///
  /// In en, this message translates to:
  /// **'You\'ve not saved any recipient\'s information'**
  String get recipient_no_recipient_content;

  /// No description provided for @recipient_recipient_name.
  ///
  /// In en, this message translates to:
  /// **'Recipient name'**
  String get recipient_recipient_name;

  /// No description provided for @recipient_bank_name.
  ///
  /// In en, this message translates to:
  /// **'Bank name'**
  String get recipient_bank_name;

  /// No description provided for @recipient_bank_account_number.
  ///
  /// In en, this message translates to:
  /// **'Bank account number'**
  String get recipient_bank_account_number;

  /// No description provided for @recipient_remove_recipient.
  ///
  /// In en, this message translates to:
  /// **'Remove recipient'**
  String get recipient_remove_recipient;

  /// No description provided for @recipient_content_remove.
  ///
  /// In en, this message translates to:
  /// **'Do you want to remove this recipient from your list?'**
  String get recipient_content_remove;

  /// No description provided for @recipient_successfully.
  ///
  /// In en, this message translates to:
  /// **'Remove recipient successfully'**
  String get recipient_successfully;

  /// No description provided for @recipient_successfully_content.
  ///
  /// In en, this message translates to:
  /// **'You have removed the recipient from your list successfully'**
  String get recipient_successfully_content;

  /// No description provided for @verify_transaction.
  ///
  /// In en, this message translates to:
  /// **'Verify your transaction'**
  String get verify_transaction;

  /// No description provided for @verify_cannot_receive_code.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t get a code?'**
  String get verify_cannot_receive_code;

  /// No description provided for @verify_caption_email.
  ///
  /// In en, this message translates to:
  /// **'The code has been sent to the email'**
  String get verify_caption_email;

  /// No description provided for @verify_caption_phone.
  ///
  /// In en, this message translates to:
  /// **'The code has been sent to the phone number'**
  String get verify_caption_phone;

  /// No description provided for @verify_code_error_count.
  ///
  /// In en, this message translates to:
  /// **'Verification code must be 6 characters'**
  String get verify_code_error_count;

  /// No description provided for @verify_code_error_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect verification code'**
  String get verify_code_error_incorrect;

  /// No description provided for @verify_code_phone_email_caption.
  ///
  /// In en, this message translates to:
  /// **'Enter the code we sent you'**
  String get verify_code_phone_email_caption;

  /// No description provided for @verify_code_required.
  ///
  /// In en, this message translates to:
  /// **'Verification code is required'**
  String get verify_code_required;

  /// No description provided for @verify_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get verify_confirm;

  /// No description provided for @verify_error_block_account.
  ///
  /// In en, this message translates to:
  /// **'Your account has been locked because the number of attempts to send a code exceeds the specified number of times'**
  String get verify_error_block_account;

  /// No description provided for @verify_error_code_time_out.
  ///
  /// In en, this message translates to:
  /// **'Verification code has expired'**
  String get verify_error_code_time_out;

  /// No description provided for @verify_error_wrong_code.
  ///
  /// In en, this message translates to:
  /// **'You entered the wrong code, please check and try again!'**
  String get verify_error_wrong_code;

  /// No description provided for @verify_input_code_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code'**
  String get verify_input_code_hint;

  /// No description provided for @verify_resend_code_caption.
  ///
  /// In en, this message translates to:
  /// **'Did not get the code?'**
  String get verify_resend_code_caption;

  /// No description provided for @verify_sign_in_another.
  ///
  /// In en, this message translates to:
  /// **'Sign in with a different account'**
  String get verify_sign_in_another;

  /// No description provided for @complete_transaction.
  ///
  /// In en, this message translates to:
  /// **'Complete 2 steps below to finish your transaction'**
  String get complete_transaction;

  /// No description provided for @transfer_common.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer_common;

  /// No description provided for @transfer_title_status_info.
  ///
  /// In en, this message translates to:
  /// **'Status Information'**
  String get transfer_title_status_info;

  /// No description provided for @transfer_status_incomplete.
  ///
  /// In en, this message translates to:
  /// **'Incomplete'**
  String get transfer_status_incomplete;

  /// No description provided for @transfer_content_status_processed.
  ///
  /// In en, this message translates to:
  /// **'Your transaction request is being processed.'**
  String get transfer_content_status_processed;

  /// No description provided for @transfer_content_status_incomplete.
  ///
  /// In en, this message translates to:
  /// **'You have not confirmed your transaction request.'**
  String get transfer_content_status_incomplete;

  /// No description provided for @transfer_transaction_question_cancel.
  ///
  /// In en, this message translates to:
  /// **'Do you want to cancel this transaction?'**
  String get transfer_transaction_question_cancel;

  /// No description provided for @transfer_title_step_1.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get transfer_title_step_1;

  /// No description provided for @transfer_title_step_2.
  ///
  /// In en, this message translates to:
  /// **'Recipient'**
  String get transfer_title_step_2;

  /// No description provided for @transfer_title_step_3.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get transfer_title_step_3;

  /// No description provided for @transfer_title_step_4.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get transfer_title_step_4;

  /// No description provided for @transfer_warning_empty_recipients.
  ///
  /// In en, this message translates to:
  /// **'Empty banks Account'**
  String get transfer_warning_empty_recipients;

  /// No description provided for @transfer_warning_empty_banks.
  ///
  /// In en, this message translates to:
  /// **'Empty banks'**
  String get transfer_warning_empty_banks;

  /// No description provided for @transfer_menu.
  ///
  /// In en, this message translates to:
  /// **'Transaction menu'**
  String get transfer_menu;

  /// No description provided for @transfer_cancel_transaction.
  ///
  /// In en, this message translates to:
  /// **'Cancel transaction'**
  String get transfer_cancel_transaction;

  /// No description provided for @transfer_warning_deleted.
  ///
  /// In en, this message translates to:
  /// **'Incomplete transactions will be deleted after 24 hours'**
  String get transfer_warning_deleted;

  /// No description provided for @transfer_detail_item_id.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID'**
  String get transfer_detail_item_id;

  /// No description provided for @transfer_detail_item_time.
  ///
  /// In en, this message translates to:
  /// **'Transaction time'**
  String get transfer_detail_item_time;

  /// No description provided for @transfer_detail_item_recipient_name.
  ///
  /// In en, this message translates to:
  /// **'Recipient name'**
  String get transfer_detail_item_recipient_name;

  /// No description provided for @transfer_detail_item_recipient_type.
  ///
  /// In en, this message translates to:
  /// **'Recipient type'**
  String get transfer_detail_item_recipient_type;

  /// No description provided for @transfer_detail_item_bank_account.
  ///
  /// In en, this message translates to:
  /// **'Bank account'**
  String get transfer_detail_item_bank_account;

  /// No description provided for @transfer_detail_item_bank_name.
  ///
  /// In en, this message translates to:
  /// **'Bank name'**
  String get transfer_detail_item_bank_name;

  /// No description provided for @transfer_detail_item_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get transfer_detail_item_email;

  /// No description provided for @transfer_detail_item_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get transfer_detail_item_phone;

  /// No description provided for @transfer_detail_item_des.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get transfer_detail_item_des;

  /// No description provided for @transfer_detail_item_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get transfer_detail_item_status;

  /// No description provided for @transfer_detail_item_amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get transfer_detail_item_amount;

  /// No description provided for @transfer_detail_item_exchange.
  ///
  /// In en, this message translates to:
  /// **'Exchange rate'**
  String get transfer_detail_item_exchange;

  /// No description provided for @transfer_detail_item_total.
  ///
  /// In en, this message translates to:
  /// **'Total to receiver'**
  String get transfer_detail_item_total;

  /// No description provided for @transfer_field_choose_country.
  ///
  /// In en, this message translates to:
  /// **'Choose receiver’s country'**
  String get transfer_field_choose_country;

  /// No description provided for @transfer_warning_step_amount.
  ///
  /// In en, this message translates to:
  /// **'Exchange rate might fluctuate during process'**
  String get transfer_warning_step_amount;

  /// No description provided for @transfer_warning_err_step_amount_1.
  ///
  /// In en, this message translates to:
  /// **'Your account balance is insufficient for this transaction. Please send money to your Haloki account.'**
  String get transfer_warning_err_step_amount_1;

  /// No description provided for @transfer_des_regulations.
  ///
  /// In en, this message translates to:
  /// **'Description must be an alphanumeric string with at most 150 characters and must not contain any special characters.'**
  String get transfer_des_regulations;

  /// No description provided for @transfer_label_btn_save_recipient.
  ///
  /// In en, this message translates to:
  /// **'Save this recipient for another transaction'**
  String get transfer_label_btn_save_recipient;

  /// No description provided for @transfer_label_recipient_bank_name.
  ///
  /// In en, this message translates to:
  /// **'Recipient bank name'**
  String get transfer_label_recipient_bank_name;

  /// No description provided for @transfer_label_recipient_bank_number.
  ///
  /// In en, this message translates to:
  /// **'Recipient bank account number'**
  String get transfer_label_recipient_bank_number;

  /// No description provided for @transfer_label_recipient_save.
  ///
  /// In en, this message translates to:
  /// **'Saved recipients'**
  String get transfer_label_recipient_save;

  /// No description provided for @transfer_label_transaction_amount.
  ///
  /// In en, this message translates to:
  /// **'Transaction amount'**
  String get transfer_label_transaction_amount;

  /// No description provided for @transfer_amount.
  ///
  /// In en, this message translates to:
  /// **'Transfer amount'**
  String get transfer_amount;

  /// No description provided for @transfer_label_bank_number.
  ///
  /// In en, this message translates to:
  /// **'bank account number'**
  String get transfer_label_bank_number;

  /// No description provided for @transfer_recipient_info.
  ///
  /// In en, this message translates to:
  /// **'Recipient information'**
  String get transfer_recipient_info;

  /// No description provided for @transfer_successful_cancellation.
  ///
  /// In en, this message translates to:
  /// **'Successful cancellation'**
  String get transfer_successful_cancellation;

  /// No description provided for @transfer_text_notifier_cancellation.
  ///
  /// In en, this message translates to:
  /// **'You have cancelled successfully this transaction. Your money would be returned to your Haloki account.'**
  String get transfer_text_notifier_cancellation;

  /// No description provided for @transfer_text_notifier_done.
  ///
  /// In en, this message translates to:
  /// **'You had transferred successfully {transferAmount} (equal {equalAmount}) to'**
  String transfer_text_notifier_done(String transferAmount, String equalAmount);

  /// No description provided for @transfer_text_notifier_transferring.
  ///
  /// In en, this message translates to:
  /// **'Your request for transferring to'**
  String get transfer_text_notifier_transferring;

  /// No description provided for @transfer_text_err_description_format.
  ///
  /// In en, this message translates to:
  /// **'Description contains only characters (a-z) or digits'**
  String get transfer_text_err_description_format;

  /// No description provided for @transfer_text_err_description_length.
  ///
  /// In en, this message translates to:
  /// **'Description is not more than 150 characters'**
  String get transfer_text_err_description_length;

  /// No description provided for @transfer_time_done.
  ///
  /// In en, this message translates to:
  /// **'at {time} has been confirmed'**
  String transfer_time_done(String time);

  /// No description provided for @transfer_fee.
  ///
  /// In en, this message translates to:
  /// **'Fee'**
  String get transfer_fee;

  /// No description provided for @transfer_delete_transaction.
  ///
  /// In en, this message translates to:
  /// **'Delete transaction'**
  String get transfer_delete_transaction;

  /// No description provided for @transfer_transaction_question_delete.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this transaction?'**
  String get transfer_transaction_question_delete;

  /// No description provided for @transfer_error_transfer_amount.
  ///
  /// In en, this message translates to:
  /// **'Transfer amount must be greater than 0'**
  String get transfer_error_transfer_amount;

  /// No description provided for @transfer_select_bank.
  ///
  /// In en, this message translates to:
  /// **'Select bank'**
  String get transfer_select_bank;

  /// No description provided for @transfer_detail_recipient_account_type.
  ///
  /// In en, this message translates to:
  /// **'Recipient account type'**
  String get transfer_detail_recipient_account_type;

  /// No description provided for @transaction_fee.
  ///
  /// In en, this message translates to:
  /// **'Transaction fee'**
  String get transaction_fee;

  /// No description provided for @transfer_dialog_changes_transaction.
  ///
  /// In en, this message translates to:
  /// **'There have been some changes in your transaction. Do you still want to continue?'**
  String get transfer_dialog_changes_transaction;

  /// No description provided for @transfer_error_2018.
  ///
  /// In en, this message translates to:
  /// **'Currency not support'**
  String get transfer_error_2018;

  /// No description provided for @transfer_error_2010.
  ///
  /// In en, this message translates to:
  /// **'The input amount must be greater than the minimum fee. Please input a larger amount'**
  String get transfer_error_2010;

  /// No description provided for @transfer_error_3002.
  ///
  /// In en, this message translates to:
  /// **'Account not available'**
  String get transfer_error_3002;

  /// No description provided for @transfer_error_3011.
  ///
  /// In en, this message translates to:
  /// **'Haloki account not verified'**
  String get transfer_error_3011;

  /// No description provided for @transfer_error_3012.
  ///
  /// In en, this message translates to:
  /// **'Haloki account is blocked'**
  String get transfer_error_3012;

  /// No description provided for @transfer_error_3005.
  ///
  /// In en, this message translates to:
  /// **'Balance not enough'**
  String get transfer_error_3005;

  /// No description provided for @transaction_history_title_transaction_history.
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get transaction_history_title_transaction_history;

  /// No description provided for @transaction_history_title_tab_send_money.
  ///
  /// In en, this message translates to:
  /// **'Send money'**
  String get transaction_history_title_tab_send_money;

  /// No description provided for @transaction_history_title_tab_transfer_money.
  ///
  /// In en, this message translates to:
  /// **'Transfer money'**
  String get transaction_history_title_tab_transfer_money;

  /// No description provided for @transaction_history_title_status_information.
  ///
  /// In en, this message translates to:
  /// **'Status information'**
  String get transaction_history_title_status_information;

  /// No description provided for @transaction_history_title_transaction_information.
  ///
  /// In en, this message translates to:
  /// **'Transaction information'**
  String get transaction_history_title_transaction_information;

  /// No description provided for @transaction_history_title_transaction_id.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID'**
  String get transaction_history_title_transaction_id;

  /// No description provided for @transaction_history_title_transaction_time.
  ///
  /// In en, this message translates to:
  /// **'Transaction time'**
  String get transaction_history_title_transaction_time;

  /// No description provided for @transaction_history_title_recipient_name.
  ///
  /// In en, this message translates to:
  /// **'Recipient name'**
  String get transaction_history_title_recipient_name;

  /// No description provided for @transaction_history_title_bank_account_number.
  ///
  /// In en, this message translates to:
  /// **'Bank account number'**
  String get transaction_history_title_bank_account_number;

  /// No description provided for @transaction_history_title_recipient_type_account.
  ///
  /// In en, this message translates to:
  /// **'Recipient account type'**
  String get transaction_history_title_recipient_type_account;

  /// No description provided for @transaction_history_title_bank_name.
  ///
  /// In en, this message translates to:
  /// **'Bank name'**
  String get transaction_history_title_bank_name;

  /// No description provided for @transaction_history_title_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get transaction_history_title_description;

  /// No description provided for @transaction_history_title_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get transaction_history_title_status;

  /// No description provided for @transaction_history_title_transaction_amount.
  ///
  /// In en, this message translates to:
  /// **'Transaction amount'**
  String get transaction_history_title_transaction_amount;

  /// No description provided for @transaction_history_title_amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get transaction_history_title_amount;

  /// No description provided for @transaction_history_title_connected_bank_account.
  ///
  /// In en, this message translates to:
  /// **'Connected bank account (ACH) fee'**
  String get transaction_history_title_connected_bank_account;

  /// No description provided for @transaction_history_title_our_fee.
  ///
  /// In en, this message translates to:
  /// **'Our fee'**
  String get transaction_history_title_our_fee;

  /// No description provided for @transaction_history_title_total_fee.
  ///
  /// In en, this message translates to:
  /// **'Total fees'**
  String get transaction_history_title_total_fee;

  /// No description provided for @transaction_history_title_total_haloki_acc.
  ///
  /// In en, this message translates to:
  /// **'Total to Haloki account'**
  String get transaction_history_title_total_haloki_acc;

  /// No description provided for @transaction_history_title_transfer_amount.
  ///
  /// In en, this message translates to:
  /// **'Transfer amount'**
  String get transaction_history_title_transfer_amount;

  /// No description provided for @transaction_history_title_exchange_rate.
  ///
  /// In en, this message translates to:
  /// **'Exchange rate'**
  String get transaction_history_title_exchange_rate;

  /// No description provided for @transaction_history_title_total_to_receiver.
  ///
  /// In en, this message translates to:
  /// **'Total to receiver'**
  String get transaction_history_title_total_to_receiver;

  /// No description provided for @transaction_history_title_no_transaction_yet.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet'**
  String get transaction_history_title_no_transaction_yet;

  /// No description provided for @transaction_history_title_transaction_detail.
  ///
  /// In en, this message translates to:
  /// **'Transaction detail'**
  String get transaction_history_title_transaction_detail;

  /// No description provided for @transaction_history_title_filter_send_money.
  ///
  /// In en, this message translates to:
  /// **'Filter send money'**
  String get transaction_history_title_filter_send_money;

  /// No description provided for @transaction_history_title_filter_transfer_money.
  ///
  /// In en, this message translates to:
  /// **'Filter transfer money'**
  String get transaction_history_title_filter_transfer_money;

  /// No description provided for @transaction_history_title_status_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get transaction_history_title_status_all;

  /// No description provided for @transaction_history_title_status_processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get transaction_history_title_status_processing;

  /// No description provided for @transaction_history_title_status_success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get transaction_history_title_status_success;

  /// No description provided for @transaction_history_title_status_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get transaction_history_title_status_cancel;

  /// No description provided for @transaction_history_title_status_denied.
  ///
  /// In en, this message translates to:
  /// **'Declined'**
  String get transaction_history_title_status_denied;

  /// No description provided for @transaction_history_title_status_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get transaction_history_title_status_failed;

  /// No description provided for @transaction_history_title_action_btn_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get transaction_history_title_action_btn_retry;

  /// No description provided for @transaction_history_filter_title_date_to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get transaction_history_filter_title_date_to;

  /// No description provided for @transaction_history_filter_title_date_from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get transaction_history_filter_title_date_from;

  /// No description provided for @transaction_history_title_action_btn_filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get transaction_history_title_action_btn_filter;

  /// No description provided for @transaction_history_title_action_btn_reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get transaction_history_title_action_btn_reset;

  /// No description provided for @transaction_history_title_action_btn_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get transaction_history_title_action_btn_close;

  /// No description provided for @transaction_history_define_processing.
  ///
  /// In en, this message translates to:
  /// **'Transaction has been confirmed. We are processing your transaction.'**
  String get transaction_history_define_processing;

  /// No description provided for @transaction_history_define_success.
  ///
  /// In en, this message translates to:
  /// **'Transaction has been completed successfully.'**
  String get transaction_history_define_success;

  /// No description provided for @transaction_history_define_cancel.
  ///
  /// In en, this message translates to:
  /// **'You have cancelled this transaction. All funds will be reversed.'**
  String get transaction_history_define_cancel;

  /// No description provided for @transaction_history_define_denied.
  ///
  /// In en, this message translates to:
  /// **'Your transaction request has been declined. Please view transaction details or contact our customer service for further information.'**
  String get transaction_history_define_denied;

  /// No description provided for @transaction_history_define_failed.
  ///
  /// In en, this message translates to:
  /// **'Transaction has failed. All funds will be reversed. Please view transaction details or contact our customer support for further information.'**
  String get transaction_history_define_failed;

  /// No description provided for @transaction_history_title_filter_reward.
  ///
  /// In en, this message translates to:
  /// **'Filter reward'**
  String get transaction_history_title_filter_reward;

  /// No description provided for @transaction_history_reward.
  ///
  /// In en, this message translates to:
  /// **'Reward'**
  String get transaction_history_reward;

  /// No description provided for @transaction_empty_des_common.
  ///
  /// In en, this message translates to:
  /// **'Start transacting with your Haloki. All transactions made will be displayed here'**
  String get transaction_empty_des_common;

  /// No description provided for @transaction_history_reward_title.
  ///
  /// In en, this message translates to:
  /// **'No Reward Yet'**
  String get transaction_history_reward_title;

  /// No description provided for @reward_information.
  ///
  /// In en, this message translates to:
  /// **'Reward information'**
  String get reward_information;

  /// No description provided for @transaction_reward_detail.
  ///
  /// In en, this message translates to:
  /// **'Reward Detail'**
  String get transaction_reward_detail;

  /// No description provided for @sign_title_welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Haloki'**
  String get sign_title_welcome;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get sign_in;

  /// No description provided for @sign_enter_email_or_number.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get sign_enter_email_or_number;

  /// No description provided for @sign_enter_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get sign_enter_password;

  /// No description provided for @sign_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get sign_forgot_password;

  /// No description provided for @sign_do_not_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get sign_do_not_have_an_account;

  /// No description provided for @error_common_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Username or password incorrect'**
  String get error_common_sign_in;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get sign_up;

  /// No description provided for @sign_up_title.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get sign_up_title;

  /// No description provided for @sign_up_first_name.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get sign_up_first_name;

  /// No description provided for @sign_up_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get sign_up_last_name;

  /// No description provided for @sign_confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get sign_confirm_password;

  /// No description provided for @sign_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get sign_back;

  /// No description provided for @sign_text_policy.
  ///
  /// In en, this message translates to:
  /// **'By tapping Sign Up, you confirm that you are over 18 and you agree to our '**
  String get sign_text_policy;

  /// No description provided for @sign_term_of_Service.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get sign_term_of_Service;

  /// No description provided for @sign_data_policy.
  ///
  /// In en, this message translates to:
  /// **'Data Policy'**
  String get sign_data_policy;

  /// No description provided for @sign_cookies_policy.
  ///
  /// In en, this message translates to:
  /// **'Cookies Policy'**
  String get sign_cookies_policy;

  /// No description provided for @sign_and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get sign_and;

  /// No description provided for @sign_community_standards.
  ///
  /// In en, this message translates to:
  /// **'Community Standards'**
  String get sign_community_standards;

  /// No description provided for @sign_in_error_login_message.
  ///
  /// In en, this message translates to:
  /// **'The login information provided does not match any accounts. Please try again'**
  String get sign_in_error_login_message;

  /// No description provided for @sign_in_error_login_negative.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get sign_in_error_login_negative;

  /// No description provided for @sign_up_account_blocked.
  ///
  /// In en, this message translates to:
  /// **'This account has been blocked! We noticed some unusual activities on your account. To help protect you from fraud or abuse, we\'ve temporarily blocked this account.'**
  String get sign_up_account_blocked;

  /// No description provided for @sign_up_birthday_format.
  ///
  /// In en, this message translates to:
  /// **'%3s–%2s–%1s'**
  String get sign_up_birthday_format;

  /// No description provided for @sign_up_notify_account_exist.
  ///
  /// In en, this message translates to:
  /// **'The account already exists, please use another phone number or email.'**
  String get sign_up_notify_account_exist;

  /// No description provided for @sign_up_password_length_error.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get sign_up_password_length_error;

  /// No description provided for @sign_up_password_length_more_128_error.
  ///
  /// In en, this message translates to:
  /// **'The maximum limit of Password is 128 characters'**
  String get sign_up_password_length_more_128_error;

  /// No description provided for @sign_up_first_name_Invalid_error.
  ///
  /// In en, this message translates to:
  /// **'Invalid first name'**
  String get sign_up_first_name_Invalid_error;

  /// No description provided for @sign_up_last_name_Invalid_error.
  ///
  /// In en, this message translates to:
  /// **'Invalid last name'**
  String get sign_up_last_name_Invalid_error;

  /// No description provided for @sign_up_login_handler_button0.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get sign_up_login_handler_button0;

  /// No description provided for @validate_empty.
  ///
  /// In en, this message translates to:
  /// **'Field required'**
  String get validate_empty;

  /// No description provided for @validate_confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password does not match'**
  String get validate_confirm_password;

  /// No description provided for @validate_format.
  ///
  /// In en, this message translates to:
  /// **'Invalid format'**
  String get validate_format;

  /// No description provided for @validate_format_email.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get validate_format_email;

  /// No description provided for @validate_password.
  ///
  /// In en, this message translates to:
  /// **'This password is too easy to guess'**
  String get validate_password;

  /// No description provided for @validate_email_require.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get validate_email_require;

  /// No description provided for @validate_password_require.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get validate_password_require;

  /// No description provided for @validate_confirm_password_require.
  ///
  /// In en, this message translates to:
  /// **'Confirm password is required'**
  String get validate_confirm_password_require;

  /// No description provided for @validate_last_name_require.
  ///
  /// In en, this message translates to:
  /// **'Last name is required'**
  String get validate_last_name_require;

  /// No description provided for @validate_first_name_require.
  ///
  /// In en, this message translates to:
  /// **'First name is required'**
  String get validate_first_name_require;

  /// No description provided for @validate_email_require_for_search.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get validate_email_require_for_search;

  /// No description provided for @error_unauthorized_message.
  ///
  /// In en, this message translates to:
  /// **'Your login session has expired. Please log in again'**
  String get error_unauthorized_message;

  /// No description provided for @error_unauthorized_title.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed'**
  String get error_unauthorized_title;

  /// No description provided for @error_unauthorized_content_message.
  ///
  /// In en, this message translates to:
  /// **'The login information provided does not match any accounts. Please try again'**
  String get error_unauthorized_content_message;

  /// No description provided for @error_code_network_connection.
  ///
  /// In en, this message translates to:
  /// **'SocketException: Network connection error'**
  String get error_code_network_connection;

  /// No description provided for @error_common.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again'**
  String get error_common;

  /// No description provided for @error_network_title.
  ///
  /// In en, this message translates to:
  /// **'Network error'**
  String get error_network_title;

  /// No description provided for @error_network_content_message.
  ///
  /// In en, this message translates to:
  /// **'Network connection is interrupted. Please check your internet connection.'**
  String get error_network_content_message;

  /// No description provided for @error_password_inconrect.
  ///
  /// In en, this message translates to:
  /// **'Current password is incorrect.'**
  String get error_password_inconrect;

  /// No description provided for @error_message_sign_up.
  ///
  /// In en, this message translates to:
  /// **'The account already exists. Please use another email'**
  String get error_message_sign_up;

  /// No description provided for @error_title_sign_up.
  ///
  /// In en, this message translates to:
  /// **'Failed to sign up'**
  String get error_title_sign_up;

  /// No description provided for @error_acc_inconrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect account name or password.'**
  String get error_acc_inconrect;

  /// No description provided for @error_message_acc_blocked.
  ///
  /// In en, this message translates to:
  /// **'This account has been blocked! We noticed some unusual activities on your account. To help protect you from fraud or abuse, we\'ve temporarily blocked this account.'**
  String get error_message_acc_blocked;

  /// No description provided for @message_error_network_connection.
  ///
  /// In en, this message translates to:
  /// **'The connection is being interrupted. Please check the connection again'**
  String get message_error_network_connection;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get enter_password;

  /// No description provided for @setting_update_password_fail.
  ///
  /// In en, this message translates to:
  /// **'Failed to update password. Please try again later'**
  String get setting_update_password_fail;

  /// No description provided for @setting_account_password.
  ///
  /// In en, this message translates to:
  /// **'Account password'**
  String get setting_account_password;

  /// No description provided for @setting_account_password_description.
  ///
  /// In en, this message translates to:
  /// **'It’s a good idea to use a password that you don’t use else where'**
  String get setting_account_password_description;

  /// No description provided for @setting_email_verify.
  ///
  /// In en, this message translates to:
  /// **'The email address Haloki will use to verify your activities.'**
  String get setting_email_verify;

  /// No description provided for @setting_email_verify_description.
  ///
  /// In en, this message translates to:
  /// **'Email for verification'**
  String get setting_email_verify_description;

  /// No description provided for @setting_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get setting_delete_account;

  /// No description provided for @setting_delete_account_description.
  ///
  /// In en, this message translates to:
  /// **'When you delete your Haloki account, you won’t be able to restore or access your Haloki account.'**
  String get setting_delete_account_description;

  /// No description provided for @setting_delete_account_learn_more.
  ///
  /// In en, this message translates to:
  /// **'Learn more about what happens when I delete my account.'**
  String get setting_delete_account_learn_more;

  /// No description provided for @setting_change_pass_success.
  ///
  /// In en, this message translates to:
  /// **'You have successfully changed your password'**
  String get setting_change_pass_success;

  /// No description provided for @setting_change_pass_incorrect_pass.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password'**
  String get setting_change_pass_incorrect_pass;

  /// No description provided for @setting_change_pass_same_pas.
  ///
  /// In en, this message translates to:
  /// **'New password is the same as old password '**
  String get setting_change_pass_same_pas;

  /// No description provided for @setting_change_pass_wrong_pass.
  ///
  /// In en, this message translates to:
  /// **'Confirm password is wrong'**
  String get setting_change_pass_wrong_pass;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again later'**
  String get something_went_wrong;

  /// No description provided for @setting_changed_pass.
  ///
  /// In en, this message translates to:
  /// **'Password changed'**
  String get setting_changed_pass;

  /// No description provided for @setting_change_pass.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get setting_change_pass;

  /// No description provided for @setting_change_pass_fail.
  ///
  /// In en, this message translates to:
  /// **'Failed to change password'**
  String get setting_change_pass_fail;

  /// No description provided for @setting_updated_info.
  ///
  /// In en, this message translates to:
  /// **'Information updated'**
  String get setting_updated_info;

  /// No description provided for @setting_updated_info_success.
  ///
  /// In en, this message translates to:
  /// **'Your information has been successfully updated'**
  String get setting_updated_info_success;

  /// No description provided for @setting_current_pass.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get setting_current_pass;

  /// No description provided for @setting_enter_pass.
  ///
  /// In en, this message translates to:
  /// **'Enter password here'**
  String get setting_enter_pass;

  /// No description provided for @setting_new_pass.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get setting_new_pass;

  /// No description provided for @setting_confirm_pass.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get setting_confirm_pass;

  /// No description provided for @delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get delete_account;

  /// No description provided for @complete_two_step_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Complete 2 steps below to delete your account'**
  String get complete_two_step_delete_account;

  /// No description provided for @password_incorrect.
  ///
  /// In en, this message translates to:
  /// **'The password is incorrect'**
  String get password_incorrect;

  /// No description provided for @account_delete_title.
  ///
  /// In en, this message translates to:
  /// **'Account deleted'**
  String get account_delete_title;

  /// No description provided for @account_delete_content.
  ///
  /// In en, this message translates to:
  /// **'You have deleted your account successfully.'**
  String get account_delete_content;

  /// No description provided for @validate_max_length.
  ///
  /// In en, this message translates to:
  /// **'The maximum length of the {fieldName} is {number} characters.'**
  String validate_max_length(String fieldName, int number);

  /// No description provided for @setting_verified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get setting_verified;

  /// No description provided for @delete_account_zero.
  ///
  /// In en, this message translates to:
  /// **'Important notices when you delete your account:'**
  String get delete_account_zero;

  /// No description provided for @delete_account_line_one.
  ///
  /// In en, this message translates to:
  /// **'When you finish the account deletion process, you will [-not-] be able to sign in using this account.'**
  String get delete_account_line_one;

  /// No description provided for @delete_account_line_two.
  ///
  /// In en, this message translates to:
  /// **'You will [-not-] be able to reopen your deleted account.'**
  String get delete_account_line_two;

  /// No description provided for @delete_account_not.
  ///
  /// In en, this message translates to:
  /// **'Not'**
  String get delete_account_not;

  /// No description provided for @delete_account_center_help.
  ///
  /// In en, this message translates to:
  /// **'Support center'**
  String get delete_account_center_help;

  /// No description provided for @delete_account_line_three.
  ///
  /// In en, this message translates to:
  /// **'Please ensure that you have cancelled any unwanted processing transaction before deleting your account.'**
  String get delete_account_line_three;

  /// No description provided for @delete_account_line_four.
  ///
  /// In en, this message translates to:
  /// **'To have your [-haloki-] balance refunded, please submit a refund request. For more information about refunding your [-haloki-] balance, please visit [-help-] and look for Cancellation and Refund topic.'**
  String get delete_account_line_four;

  /// No description provided for @delete_account_line_five.
  ///
  /// In en, this message translates to:
  /// **'If you want to open a different [-haloki-] account, you will be able to use the same credential as your deleted account.'**
  String get delete_account_line_five;

  /// No description provided for @find_your_account.
  ///
  /// In en, this message translates to:
  /// **'Find your account'**
  String get find_your_account;

  /// No description provided for @please_enter_email.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email to search your account.'**
  String get please_enter_email;

  /// No description provided for @enter_email.
  ///
  /// In en, this message translates to:
  /// **'Enter email'**
  String get enter_email;

  /// No description provided for @cannot_find_account.
  ///
  /// In en, this message translates to:
  /// **'Your account hasn\'t exist. Please check later !'**
  String get cannot_find_account;

  /// No description provided for @confirm_your_account.
  ///
  /// In en, this message translates to:
  /// **'Confirm your account'**
  String get confirm_your_account;

  /// No description provided for @send_otp_recover.
  ///
  /// In en, this message translates to:
  /// **'We will send you a confirmation code before you reset a new password'**
  String get send_otp_recover;

  /// No description provided for @confirm_via_email.
  ///
  /// In en, this message translates to:
  /// **'Confirm via email'**
  String get confirm_via_email;

  /// No description provided for @enter_your_code.
  ///
  /// In en, this message translates to:
  /// **'Enter the code we sent to'**
  String get enter_your_code;

  /// No description provided for @not_yet_received_code.
  ///
  /// In en, this message translates to:
  /// **'You have not received a confirmation code yet?'**
  String get not_yet_received_code;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get reset_password;

  /// No description provided for @please_enter_password.
  ///
  /// In en, this message translates to:
  /// **'Please enter a new password'**
  String get please_enter_password;

  /// No description provided for @enter_new_password.
  ///
  /// In en, this message translates to:
  /// **'Enter new password'**
  String get enter_new_password;

  /// No description provided for @re_enter_new_password.
  ///
  /// In en, this message translates to:
  /// **'Re-enter new password'**
  String get re_enter_new_password;

  /// No description provided for @account_recovered_title.
  ///
  /// In en, this message translates to:
  /// **'Account recovered'**
  String get account_recovered_title;

  /// No description provided for @account_recovered_content.
  ///
  /// In en, this message translates to:
  /// **'You have recovered your account successfully.'**
  String get account_recovered_content;

  /// No description provided for @account_edit_information.
  ///
  /// In en, this message translates to:
  /// **'Edit information'**
  String get account_edit_information;

  /// No description provided for @account_verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get account_verify;

  /// No description provided for @account_account_information.
  ///
  /// In en, this message translates to:
  /// **'Account information'**
  String get account_account_information;

  /// No description provided for @account_warning_none_verify.
  ///
  /// In en, this message translates to:
  /// **'Your account information has not been verified. Please verify your information to be able to link bank account.'**
  String get account_warning_none_verify;

  /// No description provided for @account_warning_process_verify.
  ///
  /// In en, this message translates to:
  /// **'Your account information is being processed. Please wait while we verify the account.'**
  String get account_warning_process_verify;

  /// No description provided for @account_warning_invalid_verify.
  ///
  /// In en, this message translates to:
  /// **'Your account information is invalid. Please check your provided details or contact our customer support.'**
  String get account_warning_invalid_verify;

  /// No description provided for @account_warning_valid_verify.
  ///
  /// In en, this message translates to:
  /// **'Your account information has been verified.'**
  String get account_warning_valid_verify;

  /// No description provided for @account_warning_none_account.
  ///
  /// In en, this message translates to:
  /// **'You have not verified your account information. Please verify your details before linking Bank Account.'**
  String get account_warning_none_account;

  /// No description provided for @account_text_button_link_bank.
  ///
  /// In en, this message translates to:
  /// **'Link bank account'**
  String get account_text_button_link_bank;

  /// No description provided for @account_header_personal_detail.
  ///
  /// In en, this message translates to:
  /// **'Personal details'**
  String get account_header_personal_detail;

  /// No description provided for @account_header_verify_your_information.
  ///
  /// In en, this message translates to:
  /// **'Verify your information'**
  String get account_header_verify_your_information;

  /// No description provided for @account_header_residential_address.
  ///
  /// In en, this message translates to:
  /// **'Residential address'**
  String get account_header_residential_address;

  /// No description provided for @account_header_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Contact information'**
  String get account_header_contact_information;

  /// No description provided for @account_header_id_Documentation.
  ///
  /// In en, this message translates to:
  /// **'ID Documentation'**
  String get account_header_id_Documentation;

  /// No description provided for @account_front_card.
  ///
  /// In en, this message translates to:
  /// **'Front of ID card'**
  String get account_front_card;

  /// No description provided for @account_back_card.
  ///
  /// In en, this message translates to:
  /// **'Back of ID card'**
  String get account_back_card;

  /// No description provided for @account_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get account_edit;

  /// No description provided for @account_verify_account_information.
  ///
  /// In en, this message translates to:
  /// **'Verify account information'**
  String get account_verify_account_information;

  /// No description provided for @account_field_phone_code.
  ///
  /// In en, this message translates to:
  /// **'Phone code'**
  String get account_field_phone_code;

  /// No description provided for @account_field_phone_num.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get account_field_phone_num;

  /// No description provided for @account_field_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get account_field_email;

  /// No description provided for @account_field_doc_type.
  ///
  /// In en, this message translates to:
  /// **'Document type'**
  String get account_field_doc_type;

  /// No description provided for @account_field_social_num.
  ///
  /// In en, this message translates to:
  /// **'Social security number'**
  String get account_field_social_num;

  /// No description provided for @account_field_date_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get account_field_date_of_birth;

  /// No description provided for @account_field_street_address.
  ///
  /// In en, this message translates to:
  /// **'Street address'**
  String get account_field_street_address;

  /// No description provided for @account_field_apartment_number.
  ///
  /// In en, this message translates to:
  /// **'Apartment number'**
  String get account_field_apartment_number;

  /// No description provided for @account_field_city.
  ///
  /// In en, this message translates to:
  /// **'City/Region'**
  String get account_field_city;

  /// No description provided for @account_field_postal_code.
  ///
  /// In en, this message translates to:
  /// **'Postal code'**
  String get account_field_postal_code;

  /// No description provided for @account_field_state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get account_field_state;

  /// No description provided for @account_field_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get account_field_country;

  /// No description provided for @account_image_empty.
  ///
  /// In en, this message translates to:
  /// **'No Image'**
  String get account_image_empty;

  /// No description provided for @account_id_verification.
  ///
  /// In en, this message translates to:
  /// **'ID Verification'**
  String get account_id_verification;

  /// No description provided for @account_verification_log.
  ///
  /// In en, this message translates to:
  /// **'Verification log'**
  String get account_verification_log;

  /// No description provided for @account_id_type.
  ///
  /// In en, this message translates to:
  /// **'ID type'**
  String get account_id_type;

  /// No description provided for @account_label_field_middle_name.
  ///
  /// In en, this message translates to:
  /// **'Middle name'**
  String get account_label_field_middle_name;

  /// No description provided for @account_notifier_err_edit_information.
  ///
  /// In en, this message translates to:
  /// **'Please check the information again'**
  String get account_notifier_err_edit_information;

  /// No description provided for @account_cancel_edit_information.
  ///
  /// In en, this message translates to:
  /// **'Cancel edit information'**
  String get account_cancel_edit_information;

  /// No description provided for @account_cancel_edit_information_content.
  ///
  /// In en, this message translates to:
  /// **'All unsaved information will be lost. Are you sure you want to leave?'**
  String get account_cancel_edit_information_content;

  /// No description provided for @account_select_country.
  ///
  /// In en, this message translates to:
  /// **'Select country'**
  String get account_select_country;

  /// No description provided for @account_select_state.
  ///
  /// In en, this message translates to:
  /// **'Select state'**
  String get account_select_state;

  /// No description provided for @account_select_doctype.
  ///
  /// In en, this message translates to:
  /// **'Select document type'**
  String get account_select_doctype;

  /// No description provided for @account_social_security_number.
  ///
  /// In en, this message translates to:
  /// **'Invalid social security number'**
  String get account_social_security_number;

  /// No description provided for @send_money.
  ///
  /// In en, this message translates to:
  /// **'Send money'**
  String get send_money;

  /// No description provided for @send_money_header_title.
  ///
  /// In en, this message translates to:
  /// **'The cheap, fast way to send money abroad'**
  String get send_money_header_title;

  /// No description provided for @send_money_link_bank_account_warn.
  ///
  /// In en, this message translates to:
  /// **'No bank account has been linked or your link has been expired. Please link your bank accounts before send money'**
  String get send_money_link_bank_account_warn;

  /// No description provided for @send_money_error_3000.
  ///
  /// In en, this message translates to:
  /// **'You have exceeded your annual transaction limit of 1000 USD per year.'**
  String get send_money_error_3000;

  /// No description provided for @send_money_error_3005.
  ///
  /// In en, this message translates to:
  /// **'You do not have the required amount for the transaction. Please set a smaller amount or choose a different account for this transaction.'**
  String get send_money_error_3005;

  /// No description provided for @send_money_error_3019.
  ///
  /// In en, this message translates to:
  /// **'The linked bank account does not exist or could not be accessed. Please contact your bank customer support for more details.'**
  String get send_money_error_3019;

  /// No description provided for @send_money_error_3001.
  ///
  /// In en, this message translates to:
  /// **'The sending amount must be from {min} to {max}'**
  String send_money_error_3001(String min, String max);

  /// No description provided for @send_money_error_2010.
  ///
  /// In en, this message translates to:
  /// **'The sending amount is smaller than the minimum fee. Please choose a larger amount to send.'**
  String get send_money_error_2010;

  /// No description provided for @send_money_information.
  ///
  /// In en, this message translates to:
  /// **'Send money information'**
  String get send_money_information;

  /// No description provided for @send_money_amount_desciption_validate_rule.
  ///
  /// In en, this message translates to:
  /// **'*Description must be an alphanumeric string with at most 150 characters and must not contain any special characters.'**
  String get send_money_amount_desciption_validate_rule;

  /// No description provided for @send_money_request_review_term.
  ///
  /// In en, this message translates to:
  /// **'By clicking Confirm, you authorize Haloki to debit the bank account specified above for any amount owed for charges arising from your use of Haloki’s services and/or purchase of products from Haloki, pursuant to Haloki’s website and terms, until this authorization is revoked. You may amend or cancel this authorization at any time by providing notice to Haloki with 30 (thirty) days notice.'**
  String get send_money_request_review_term;

  /// No description provided for @transaction_menu.
  ///
  /// In en, this message translates to:
  /// **'Transaction menu'**
  String get transaction_menu;

  /// No description provided for @bank_name_required.
  ///
  /// In en, this message translates to:
  /// **'Bank name is required'**
  String get bank_name_required;

  /// No description provided for @link_bank_account.
  ///
  /// In en, this message translates to:
  /// **'Link bank account'**
  String get link_bank_account;

  /// No description provided for @bank_account_required.
  ///
  /// In en, this message translates to:
  /// **'Bank account is required'**
  String get bank_account_required;

  /// No description provided for @connected_bank_account_fee.
  ///
  /// In en, this message translates to:
  /// **'Connected bank account (ACH) fee'**
  String get connected_bank_account_fee;

  /// No description provided for @contains_special_characters.
  ///
  /// In en, this message translates to:
  /// **'Contains special characters'**
  String get contains_special_characters;

  /// No description provided for @must_be_less_than_150_characters.
  ///
  /// In en, this message translates to:
  /// **'Must be less than 150 characters'**
  String get must_be_less_than_150_characters;

  /// No description provided for @amount_descriptions.
  ///
  /// In en, this message translates to:
  /// **'You will receive {amount} to your Haloki account within the next 5 business days.'**
  String amount_descriptions(String amount);

  /// No description provided for @confirmation_body.
  ///
  /// In en, this message translates to:
  /// **'Your request for sending money from your bank account {bankAccount} to Haloki account has been confirmed. We will be processing your transaction within 5 business days.'**
  String confirmation_body(String bankAccount);

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get total_amount;

  /// No description provided for @balance_not_enough_err.
  ///
  /// In en, this message translates to:
  /// **'Your available balance is not enough. Please choose another bank account.'**
  String get balance_not_enough_err;

  /// No description provided for @our_fees.
  ///
  /// In en, this message translates to:
  /// **'Our fee'**
  String get our_fees;

  /// No description provided for @total_fees.
  ///
  /// In en, this message translates to:
  /// **'Total fees'**
  String get total_fees;

  /// No description provided for @total_to_haloki_account.
  ///
  /// In en, this message translates to:
  /// **'Total to Haloki account'**
  String get total_to_haloki_account;

  /// No description provided for @fee_change.
  ///
  /// In en, this message translates to:
  /// **'Fee change'**
  String get fee_change;

  /// No description provided for @fee_change_content.
  ///
  /// In en, this message translates to:
  /// **'There has been a change in the transaction fee total from {before} to {after}. You will receive {amount} to your Haloki account. \n\n Do you want to continue? '**
  String fee_change_content(String before, String after, String amount);

  /// No description provided for @sending_amount_is_required.
  ///
  /// In en, this message translates to:
  /// **'Sending amount is required'**
  String get sending_amount_is_required;

  /// No description provided for @send_money_error_3000_per_year.
  ///
  /// In en, this message translates to:
  /// **'You have exceeded your annual transaction limit of {limit} per year.'**
  String send_money_error_3000_per_year(String limit);

  /// No description provided for @send_money_error_3000_per_day.
  ///
  /// In en, this message translates to:
  /// **'You have exceeded your annual transaction limit of {limit} per day.'**
  String send_money_error_3000_per_day(String limit);

  /// No description provided for @bank_account.
  ///
  /// In en, this message translates to:
  /// **'Bank account'**
  String get bank_account;

  /// No description provided for @bank_accounts.
  ///
  /// In en, this message translates to:
  /// **'Bank accounts'**
  String get bank_accounts;

  /// No description provided for @bank_account_detail.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Detail'**
  String get bank_account_detail;

  /// No description provided for @bank_account_name.
  ///
  /// In en, this message translates to:
  /// **'Bank account name'**
  String get bank_account_name;

  /// No description provided for @bank_account_number.
  ///
  /// In en, this message translates to:
  /// **'Bank account number'**
  String get bank_account_number;

  /// No description provided for @remove_bank_account.
  ///
  /// In en, this message translates to:
  /// **'Remove bank account'**
  String get remove_bank_account;

  /// No description provided for @remove_bank_account_prompt_dialog_content.
  ///
  /// In en, this message translates to:
  /// **'Remove your bank account from Haloki. You would be required to link bank account again if you want to make more transactions from this account. Do you want to continue?'**
  String get remove_bank_account_prompt_dialog_content;

  /// No description provided for @bank_account_verifying_warn.
  ///
  /// In en, this message translates to:
  /// **'Your account information are being verified.\nPlease wait while we verify.'**
  String get bank_account_verifying_warn;

  /// No description provided for @bank_account_link_bank_warn.
  ///
  /// In en, this message translates to:
  /// **'Link your bank account to start making transaction.'**
  String get bank_account_link_bank_warn;

  /// No description provided for @add_bank_account.
  ///
  /// In en, this message translates to:
  /// **'Add bank account'**
  String get add_bank_account;

  /// No description provided for @bank_account_not_verify_warn.
  ///
  /// In en, this message translates to:
  /// **'You have not verified your account information. Please verify your details before linking Bank Account.'**
  String get bank_account_not_verify_warn;

  /// No description provided for @remove_bank_prompt_dialog_content.
  ///
  /// In en, this message translates to:
  /// **'Remove your bank from Haloki. You would be required to link bank again if you want to make more transactions from this bank. Do you want to continue?'**
  String get remove_bank_prompt_dialog_content;

  /// No description provided for @you_have_remove_bank_successfully.
  ///
  /// In en, this message translates to:
  /// **'You have removed bank \tsuccessfully'**
  String get you_have_remove_bank_successfully;

  /// No description provided for @remove_bank_success.
  ///
  /// In en, this message translates to:
  /// **'Remove bank successfully'**
  String get remove_bank_success;

  /// No description provided for @not_verify.
  ///
  /// In en, this message translates to:
  /// **'Not verify'**
  String get not_verify;

  /// No description provided for @not_verified.
  ///
  /// In en, this message translates to:
  /// **'Not verified'**
  String get not_verified;

  /// No description provided for @re_connect.
  ///
  /// In en, this message translates to:
  /// **'Re-connect'**
  String get re_connect;

  /// No description provided for @bank_not_verify_warn.
  ///
  /// In en, this message translates to:
  /// **'Your bank hasn\'t been verified. Please verify to connect this bank.'**
  String get bank_not_verify_warn;

  /// No description provided for @bank_expired_warn.
  ///
  /// In en, this message translates to:
  /// **'Your link has expired. Please re-connect to use this bank'**
  String get bank_expired_warn;

  /// No description provided for @remove_bank.
  ///
  /// In en, this message translates to:
  /// **'Remove bank'**
  String get remove_bank;

  /// No description provided for @permission_denied_title.
  ///
  /// In en, this message translates to:
  /// **'Permission denied'**
  String get permission_denied_title;

  /// No description provided for @permission_denied_content.
  ///
  /// In en, this message translates to:
  /// **'Camera access needed. Go to settings, tap permissions, and tap allow'**
  String get permission_denied_content;

  /// No description provided for @go_to_setting_text_button.
  ///
  /// In en, this message translates to:
  /// **'Go to settings'**
  String get go_to_setting_text_button;

  /// No description provided for @dismiss_text_button.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss_text_button;

  /// No description provided for @plaid_failure_title.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get plaid_failure_title;

  /// No description provided for @plaid_link_failure.
  ///
  /// In en, this message translates to:
  /// **'Plaid item not found'**
  String get plaid_link_failure;

  /// No description provided for @plaid_invalid_token.
  ///
  /// In en, this message translates to:
  /// **'Invalid Plaid access token'**
  String get plaid_invalid_token;

  /// No description provided for @plaid_account_not_available.
  ///
  /// In en, this message translates to:
  /// **'We are unable to find your Haloki Account. Please contact customer support for more details.'**
  String get plaid_account_not_available;

  /// No description provided for @plaid_exchange_token_not_available.
  ///
  /// In en, this message translates to:
  /// **'exchange token not available'**
  String get plaid_exchange_token_not_available;

  /// No description provided for @plaid_link_token_not_available.
  ///
  /// In en, this message translates to:
  /// **'This link bank is unavailable or has been removed. You will need to re-link this bank before you could make transaction request using its bank account.'**
  String get plaid_link_token_not_available;

  /// No description provided for @haloki_transaction_send_money_transaction_request.
  ///
  /// In en, this message translates to:
  /// **'Your transaction request ID: {zero} for sending money from {one} to Haloki account has been confirmed. We will be processing your transaction within 5 business days.'**
  String haloki_transaction_send_money_transaction_request(String zero, String one);

  /// No description provided for @haloki_transaction_send_money_transaction_completed_success.
  ///
  /// In en, this message translates to:
  /// **'Your transaction ID: {zero} for sending money from {one} to Haloki account has been successful.'**
  String haloki_transaction_send_money_transaction_completed_success(String zero, String one);

  /// No description provided for @haloki_transaction_send_money_transaction_completed_failure.
  ///
  /// In en, this message translates to:
  /// **'Your transaction ID: {zero} for sending money from {one} to Haloki account has failed. Please view transaction details or contact our support team for more information.'**
  String haloki_transaction_send_money_transaction_completed_failure(String zero, String one);

  /// No description provided for @haloki_transaction_transfer_transaction_request.
  ///
  /// In en, this message translates to:
  /// **'Your request ID: {zero} for transferring to {one} is being processed.'**
  String haloki_transaction_transfer_transaction_request(String zero, String one);

  /// No description provided for @haloki_transaction_transfer_transaction_completed_success.
  ///
  /// In en, this message translates to:
  /// **'Your transaction ID: {zero} for transferring to {one} has been successful.'**
  String haloki_transaction_transfer_transaction_completed_success(String zero, String one);

  /// No description provided for @haloki_transaction_transfer_transaction_declined.
  ///
  /// In en, this message translates to:
  /// **'Your transaction ID: {zero} for transferring to {one} has been declined. Please view the transaction detail or contact our support team for more information.'**
  String haloki_transaction_transfer_transaction_declined(String zero, String one);

  /// No description provided for @haloki_transaction_transfer_transaction_cancelled.
  ///
  /// In en, this message translates to:
  /// **'You had cancelled the transfer request ID: {zero} to {one}.'**
  String haloki_transaction_transfer_transaction_cancelled(String zero, String one);

  /// No description provided for @haloki_information_verification_kyc_sucess.
  ///
  /// In en, this message translates to:
  /// **'Your account information has been verified. Start linking your bank account to make transaction.'**
  String get haloki_information_verification_kyc_sucess;

  /// No description provided for @haloki_information_link_bank_account_expired.
  ///
  /// In en, this message translates to:
  /// **'Your link to {zero} has expired. Please re-connect to use this bank.'**
  String haloki_information_link_bank_account_expired(String zero);

  /// No description provided for @notification_message_network_error_default.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect'**
  String get notification_message_network_error_default;

  /// No description provided for @notification_refresh_title_error_default.
  ///
  /// In en, this message translates to:
  /// **'Please try again later.'**
  String get notification_refresh_title_error_default;

  /// No description provided for @notification_message_error_default.
  ///
  /// In en, this message translates to:
  /// **'An unknown error'**
  String get notification_message_error_default;
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
