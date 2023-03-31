import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class ThickDoubleContainer extends StatelessWidget {
  const ThickDoubleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: context.onSurfaceVariant)
            )
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: context.onSurfaceVariant)
            )
        ),
      ],
    );
  }
}
