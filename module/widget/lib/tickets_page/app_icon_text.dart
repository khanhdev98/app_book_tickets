import 'package:confict/untils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/color/color_schemes.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class AppIconText extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const AppIconText({Key? key, required this.hintText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          color: context.surfaceColor
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          prefixIcon: Icon(icon, color: const Color(0xFFBFC2DF)),
          hintText: hintText,
          hintStyle: context.bodyMedium,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
