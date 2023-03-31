import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class FormTimeFlightTickets extends StatelessWidget {
  final String numberDate;
  final TextStyle? styleDate;
  final TextStyle? styleDeparture;
  final String departureTime;
  final String number;
  final TextStyle? styleNumber;
  final TextStyle? styleCommon;
  const FormTimeFlightTickets({Key? key, this.styleDate, required this.numberDate, this.styleDeparture, required this.departureTime, required this.number, this.styleNumber, this.styleCommon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  numberDate,
                  style: styleDate ?? context.titleMedium?.onPrimary,
                ),
                AppSpacing.xxSmall,
                Text(
                  "Date",
                  style: styleCommon ?? context.titleMedium?.onPrimary,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  departureTime,
                  style: styleDeparture ?? context.appBarTitle?.onPrimary.bold,
                ),
                AppSpacing.xxSmall,
                Text("Departure time", style: styleCommon ?? context.titleMedium?.onPrimary),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  number,
                  style: styleNumber ?? context.titleMedium?.onPrimary,
                ),
                AppSpacing.xxSmall,
                Text(
                  "Number",
                  style: styleCommon ?? context.titleMedium?.onPrimary,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
