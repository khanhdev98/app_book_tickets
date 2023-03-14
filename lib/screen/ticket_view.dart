import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/untils/app_layout.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import '../untils/app_color.dart';
import '../widget/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = AppLayout.getSize(context);
    return SizedBox(
      width: _size.width*0.85,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            // container blue
            Container(
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(21), topLeft: Radius.circular(21)),
                color: AppColor.bgColor,
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"], style: context.titleLarge?.onPrimary),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
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
                                                  BoxDecoration(color: context.surfaceColor)),
                                        )),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: 1.5,
                            child: Icon(Icons.local_airport_outlined, color: context.surfaceColor),
                          ),
                        ],
                      )),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(ticket["to"]["code"], style: context.titleLarge?.onPrimary),
                    ],
                  ),
                  const SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: AutoSizeText(
                          ticket["from"]["name"],
                          style: context.bodyMedium?.onPrimary,
                          maxLines: 2,
                        ),
                      ),
                      Text(
                        ticket["flying_time"],
                        style: context.bodyMedium?.onPrimary.bold,
                      ),
                      SizedBox(
                        width: 100,
                        child: AutoSizeText(
                          ticket["to"]["name"],
                          style: context.bodyMedium?.onPrimary,
                          textAlign: TextAlign.end,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Container red

            Container(
              color: AppColor.redColor,
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: context.backgroundColor,
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)))),
                      ),
                    ],
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              ((constraints.constrainWidth()) / 15).floor(), (index) =>
                              SizedBox(
                                width: 5, height: 1, child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: context.surfaceColor
                                ),
                              ),
                              )),
                        );
                      }
                    ),
                  )),
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: context.backgroundColor,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)))),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(
              decoration: const BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
                color: AppColor.redColor,
              ),
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket["date"], style: context.titleMedium?.onPrimary,),
                          Text("Date", style: context.titleMedium?.onPrimary,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket["departure_time"], style: context.appBarTitle?.onPrimary.bold,),
                          Text("Departure time", style: context.titleMedium?.onPrimary),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket["number"].toString(), style: context.titleMedium?.onPrimary,),
                          Text("Number", style: context.titleMedium?.onPrimary,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
