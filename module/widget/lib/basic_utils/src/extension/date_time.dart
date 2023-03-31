import 'package:intl/intl.dart';

extension Format on DateTime? {
  bool isSameDate(DateTime? other) {
    if (this == null && other == null) return true;

    return this?.year == other?.year && this?.month == other?.month && this?.day == other?.day;
  }

  int diffInDays(DateTime? other) {
    if (this == null && other == null) return -1;

    final date1 = this ?? DateTime.now();
    final date2 = other ?? DateTime.now();

    return ((date1.difference(date2) - Duration(hours: date1.hour) + Duration(hours: date2.hour)).inHours /
        24)
        .round();
  }

  String toFormat(String format) {
    if (this == null) {
      return "";
    }

    DateFormat formatter = DateFormat(format);

    return formatter.format(this!);
  }

  String toHHmmEEEEddMMyyyy() {
    if (this == null) {
      return "";
    }
    final DateFormat dateFormat = DateFormat('HH:mm, EEEE, dd/MM/yyyy');
    return dateFormat.format(this!);
  }

  String toDDMMYYYY({String? errorMessage}) {
    if (this == null) {
      return errorMessage ?? '';
    }
    final DateFormat dateFormat = DateFormat('dd/MM/yyyy');
    return dateFormat.format(this!);
  }

  String toYYYYMMDD({String? errorMessage}) {
    if (this == null) {
      return errorMessage ?? '';
    }
    final DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    return dateFormat.format(this!);
  }

  String toIsoStringWithZ() {
    if (this == null) return '';
    return this!.toIso8601String() + 'Z';
  }

  String toddMM() {
    if (this == null) {
      return "";
    }
    final DateFormat dateFormat = DateFormat('dd/MM');
    return dateFormat.format(this!);
  }
}
