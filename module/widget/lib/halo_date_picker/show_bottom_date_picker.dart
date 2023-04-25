import 'package:flutter/material.dart';
import 'package:widget/halo_date_picker/snapping_bottom_sheet/snapping_bottom_sheet.dart';
import 'widget/birthdate_picker.dart';
import 'widget/calendar_single_date_picker.dart' as halo_single_picker;
import 'widget/date_range_picker.dart' as halo_picker;

Future<DateTime?> showBottomBirthDatePicker(
  BuildContext context,
  String title,
  DateTime? initBirthDate,
  DateTime? minBirthDate,
  DateTime? maxBirthDate,
) async {
  return await SnappingBottomSheet.showSnappingBottomSheet(
    context,
    title,
    BirthDatePicker(
      maximumDate: maxBirthDate,
      minimumDate: minBirthDate,
      initialDateTime: initBirthDate,
      onDateTimeChanged: (birthDate) {
        Navigator.of(context).pop(birthDate);
      },
    ),
  );
}

Future<DateTime?> showHaloDatePicker(
  BuildContext context,
  DateTime initDate,
  DateTime minDate,
  DateTime maxDate, {
  String? helpText,
  String? fieldHintText,
  String? dateSelectedHintText,
}) async {
  return await halo_single_picker.showDateSinglePicker(
      isSingle: true,
      context: context,
      initialDate: initDate,
      firstDate: minDate,
      helpText: helpText,
      fieldStartHintText: fieldHintText,
      lastDate: maxDate);
}

Future<DateTimeRange?> showHaloDateRangePicker(
    BuildContext context, DateTimeRange? initDate, DateTime minDate, DateTime maxDate,
    {bool isSameDays = true,
    String? helpText,
    String? fieldStartHintText,
    String? fieldEndHintText,
    String? dateStartSelectedHintText,
    String? dateEndSelectedHintText}) async {
  return await halo_picker.showDateRangePicker(
      isSameDays: isSameDays,
      context: context,
      initialDateRange: initDate,
      firstDate: minDate,
      helpText: helpText,
      fieldEndHintText: fieldEndHintText,
      fieldStartHintText: fieldStartHintText,
      dateStartSelectedHintText: dateStartSelectedHintText,
      dateEndSelectedHintText: dateEndSelectedHintText,
      lastDate: maxDate);
}
