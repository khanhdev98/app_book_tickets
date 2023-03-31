import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class HeaderDoubleText extends StatelessWidget {
  final String headerText;
  final String textButton;
  const HeaderDoubleText({Key? key, required this.headerText, required this.textButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(headerText, style: context.appBarTitle?.bold),
        TextButton(onPressed: () {}, child: Text(textButton)),
      ],
    );
  }
}
