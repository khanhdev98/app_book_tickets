import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class DoubleRowWidget extends StatelessWidget {
  final String firstRowOne;
  final String firstRowTwo;
  final String secondRowOne;
  final String secondRowTwo;

  const DoubleRowWidget(
      {Key? key,
      required this.firstRowOne,
      required this.firstRowTwo,
      required this.secondRowOne,
      required this.secondRowTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                firstRowOne,
                style: context.titleMedium,
              ),
              Text(
                firstRowTwo,
                style: context.titleMedium,
              ),
            ],
          ),
        ),
        AppSpacing.xxSmall,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                secondRowOne,
                style: context.bodyMedium?.disable,
              ),
              Text(
                secondRowTwo,
                style: context.bodyMedium?.disable,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
