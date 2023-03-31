import 'package:auto_size_text/auto_size_text.dart';
import 'package:confict/untils/app_color.dart';
import 'package:confict/untils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:widget/tickets_page/form_header_tickets.dart';
import 'package:widget/tickets_page/form_time_flight_tickets.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = AppLayout.getSize(context);
    return SizedBox(
      width: _size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // container blue
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(AppLayout.getHeight(21)),
                    topLeft: Radius.circular(AppLayout.getHeight(21))),
                color: AppColor.bgColor,
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: FormHeaderTickets(
                countryCodeStart: ticket["from"]["code"],
                countryCodeEnd: ticket["to"]["code"],
                countryNameStart: ticket["from"]["name"],
                countryNameEnd: ticket["to"]["name"],
                flyingTime: ticket["flying_time"],
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
                        height: AppLayout.getHeight(20),
                        width: AppLayout.getWidth(10),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: context.backgroundColor,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(AppLayout.getHeight(10)),
                                    bottomRight: Radius.circular(AppLayout.getHeight(10))))),
                      ),
                    ],
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(12)),
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
                                    decoration: BoxDecoration(color: context.surfaceColor),
                                  ),
                                )),
                      );
                    }),
                  )),
                  Row(
                    children: [
                      SizedBox(
                        height: AppLayout.getHeight(20),
                        width: AppLayout.getWidth(10),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: context.backgroundColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(AppLayout.getHeight(10)),
                                    bottomLeft: Radius.circular(AppLayout.getHeight(10))))),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21))),
                color: AppColor.redColor,
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(16), vertical: AppLayout.getHeight(10)),
              child: FormTimeFlightTickets(
                departureTime: ticket["departure_time"],
                number: ticket["number"].toString(),
                numberDate: ticket["date"],
              ),
            )
          ],
        ),
      ),
    );
  }
}
