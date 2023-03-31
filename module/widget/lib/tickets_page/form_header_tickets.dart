import 'package:auto_size_text/auto_size_text.dart';
import 'package:confict/untils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:widget/tickets_page/thick_container.dart';

class FormHeaderTickets extends StatelessWidget {
  final String countryCodeStart;
  final Color? colorThick;
  final String countryCodeEnd;
  final String countryNameStart;
  final String countryNameEnd;
  final String flyingTime;
  final TextStyle? styleCodeStart;
  final TextStyle? styleCodeEnd;
  final TextStyle? styleNameEnd;
  final TextStyle? styleNameStart;
  final TextStyle? styleFlyingTime;

  const FormHeaderTickets(
      {Key? key,
      required this.countryCodeStart,
      this.colorThick,
      required this.countryCodeEnd,
      required this.countryNameStart,
      required this.countryNameEnd,
      required this.flyingTime,
      this.styleCodeStart,
      this.styleCodeEnd, this.styleNameEnd, this.styleNameStart, this.styleFlyingTime,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(countryCodeStart, style: styleCodeStart ?? context.titleLarge?.onPrimary),
            Expanded(child: Container()),
            ThickContainer(color: colorThick ?? context.surfaceColor),
            Expanded(
                child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: AppLayout.getHeight(24),
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) => Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          ((constraints.constrainWidth()) / 6).floor(),
                          (index) => SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: colorThick ?? context.surfaceColor)),
                              )),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 1.5,
                  child:
                      Icon(Icons.local_airport_outlined, color: colorThick ?? context.surfaceColor),
                ),
              ],
            )),
            ThickContainer(
              color: colorThick ?? context.surfaceColor,
            ),
            Expanded(child: Container()),
            Text(countryCodeEnd, style: styleCodeEnd ?? context.titleLarge?.onPrimary),
          ],
        ),
        AppSpacing.xxSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: AppLayout.getWidth(100),
              child: AutoSizeText(
                countryNameStart,
                style: styleNameStart ?? context.bodyMedium?.onPrimary,
                maxLines: 2,
              ),
            ),
            Text(
              flyingTime,
              style: styleFlyingTime ?? context.bodyMedium?.onPrimary.bold,
            ),
            SizedBox(
              width: AppLayout.getWidth(100),
              child: AutoSizeText(
                countryNameEnd,
                style: styleNameEnd ?? context.bodyMedium?.onPrimary,
                textAlign: TextAlign.end,
                maxLines: 2,
              ),
            ),
          ],
        )
      ],
    );
  }
}
