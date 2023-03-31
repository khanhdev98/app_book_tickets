import 'package:intl/intl.dart';

extension FormatNum on num? {
  String? get decimalPattern {
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
    return myFormat.format(this);
  }
}

extension FormatInt on int {
  DateTime toDateFromMilliseconds() {
    return DateTime.fromMillisecondsSinceEpoch(this);
  }
}
