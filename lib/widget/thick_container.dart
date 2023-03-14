import 'package:flutter/cupertino.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(21)),
        border: Border.all(color: context.surfaceColor, width: 2.5)
      ),
    );
  }
}
