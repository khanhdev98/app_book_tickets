import 'package:confict/untils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class DotWidget extends StatelessWidget {
  final double? padding;
  const DotWidget({Key? key, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? AppLayout.getHeight(16)),
      child:
      LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              ((constraints.constrainWidth()) / 15).floor(),
                  (index) => SizedBox(
                width: AppLayout.getWidth(5),
                height: AppLayout.getHeight(1),
                child: DecoratedBox(
                  decoration: BoxDecoration(color: context.outlineColor),
                ),
              )),
        );
      }),
    );
  }
}
