// import 'package:content/content.dart';
// import 'package:flutter_core/core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:theme/navigator/navigator_global_key.dart';
//
// import 'halo_form_field.dart';
//
// class HaloValidator {
//   static final _regExpRemoveSpaceText = RegExp(r"(?! )\s+| \s+");
//
//   static String? validate(
//       {required BuildContext? context, required FieldType type, String? text, bool isRequired = true}) {
//     final textTrim = text?.trim().split(_regExpRemoveSpaceText).join(" ");
//
//     final contextSafe = context ?? NavigationService.navigatorKey.currentContext!;
//     bool isEmpty = textTrim.isNullOrEmpty();
//     if (!isEmpty || isRequired) {
//       switch (type) {
//         case FieldType.email:
//           return isEmpty
//               ? StringApp.of(contextSafe).flight_v2_widget_field_email_required
//               : ValidateUtils.isValidMail(textTrim)
//                   ? null
//                   : StringApp.of(contextSafe).flight_v2_widget_field_email_invalid;
//         case FieldType.firstName:
//           return isEmpty
//               ? StringApp.of(contextSafe).flight_v2_widget_field_fname_required
//               : ValidateUtils.isValidFirstNameUserContact(textTrim)
//                   ? null
//                   : StringApp.of(contextSafe).flight_v2_widget_field_fname_invalid;
//         case FieldType.address:
//           return ValidateUtils.isValidLength(textTrim)
//               ? null
//               : StringApp.of(contextSafe).flight_v2_widget_field_address_required;
//         case FieldType.country:
//           return ValidateUtils.isValidLength(textTrim)
//               ? null
//               : StringApp.of(contextSafe).flight_v2_widget_field_country_required;
//
//         case FieldType.city:
//           return ValidateUtils.isValidLength(textTrim)
//               ? null
//               : StringApp.of(contextSafe).flight_v2_widget_field_city_required;
//
//         case FieldType.date:
//           return ValidateUtils.isValidLength(textTrim)
//               ? null
//               : StringApp.of(contextSafe).flight_v2_widget_field_field_date_default_error;
//
//         case FieldType.lastName:
//           return isEmpty
//               ? StringApp.of(contextSafe).flight_v2_widget_field_lname_required
//               : ValidateUtils.isValidLastNameUserContact(textTrim)
//                   ? null
//                   : StringApp.of(contextSafe).flight_v2_widget_field_lname_invalid;
//
//         case FieldType.phone:
//           return isEmpty
//               ? StringApp.of(contextSafe).flight_v2_widget_field_phone_required
//               : StringApp.of(contextSafe).flight_v2_widget_field_phone_invalid;
//         case FieldType.middleName:
//           return isEmpty
//               ? StringApp.of(contextSafe).setting_user_field_middle_name_required
//               : ValidateUtils.isValidFirstNameUserContact(textTrim)
//               ? null
//               : StringApp.of(contextSafe).setting_user_field_middle_name_invalid;
//         case FieldType.onlyFirstName:
//           return isEmpty
//               ? StringApp.of(contextSafe).setting_user_field_first_name_required
//               : ValidateUtils.isValidFirstNameUserContact(textTrim)
//               ? null
//               : StringApp.of(contextSafe).setting_user_field_first_name_invalid;
//         case FieldType.pass:
//           return isEmpty
//               ? StringApp.of(contextSafe).setting_user_field_pass_required
//               : StringApp.of(contextSafe).setting_user_field_pass_invalid;
//
//         default:
//           return isEmpty ? "This field is required" : null;
//       }
//     }
//     return null;
//   }
// }
