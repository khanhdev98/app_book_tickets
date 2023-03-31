import 'package:confict/untils/app_color.dart';
import 'package:confict/untils/app_info_list.dart';
import 'package:confict/untils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:untitled2/presentation/tickets/screen/ticket_view.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:widget/tickets_page/dot_widget.dart';
import 'package:widget/tickets_page/form_header_tickets.dart';
import 'package:widget/tickets_page/form_time_flight_tickets.dart';
import 'package:widget/tickets_page/thick_double_container.dart';

import '../bloc/tickets_state.dart';
import '../bloc/tickets_tab_bloc.dart';
import '../widget/double_button_widget.dart';

class TicketTabPage extends StatefulWidget {
  const TicketTabPage({Key? key}) : super(key: key);

  @override
  State<TicketTabPage> createState() => _TicketTabPageState();
}

class _TicketTabPageState extends State<TicketTabPage> {
  TicketsTabBloc get bloc => BlocProvider.of(context);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _size = AppLayout.getSize(context);
    return Scaffold(
      body: ListView(
        children: [
          AppSpacing.xxLarge,
          AppSpacing.large,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Tickets",
              style: context.headlineMedium?.bold,
            ),
          ),
          AppSpacing.large,
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: DoubleButtonWidget(
                textFirst: 'Upcoming',
                textSecond: 'Previous',
              )),
          AppSpacing.large,
          BlocBuilder<TicketsTabBloc, TicketState>(
            builder: (context, state) {
              if (state is TicketDisplayTicket1) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: context.surfaceColor,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: FormHeaderTickets(
                                      colorThick: AppColor.bgColor,
                                      countryCodeStart: "NYC",
                                      countryCodeEnd: "LDN",
                                      countryNameStart: "New York",
                                      countryNameEnd: "London",
                                      flyingTime: "8H 30M",
                                      styleCodeEnd: context.titleLarge,
                                      styleCodeStart: context.titleLarge,
                                      styleFlyingTime: context.titleLarge?.bold,
                                      styleNameEnd: context.bodyMedium?.disable,
                                      styleNameStart: context.bodyMedium?.disable,
                                    ),
                                  ),
                                  AppSpacing.normal,
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                                    child: FormTimeFlightTickets(
                                        departureTime: "08:00 AM",
                                        number: "23",
                                        numberDate: "1 May",
                                        styleDate: context.titleMedium,
                                        styleDeparture: context.titleMedium,
                                        styleNumber: context.titleMedium,
                                        styleCommon: context.bodyMedium?.disable),
                                  ),
                                  const DotWidget(
                                    padding: 16,
                                  ),
                                  AppSpacing.large,
                                  _doubleRowWidget(context,
                                      firstRowOne: "Flutter Dash",
                                      firstRowTwo: "5221 321335",
                                      secondRowOne: "Passenger",
                                      secondRowTwo: "Passport"),
                                  AppSpacing.large,
                                  const DotWidget(
                                    padding: 16,
                                  ),
                                  AppSpacing.large,
                                  _doubleRowWidget(context,
                                      firstRowOne: "0055 354 15422",
                                      firstRowTwo: "B2SG28",
                                      secondRowOne: "Number of E-ticket",
                                      secondRowTwo: "Booking code"),
                                  AppSpacing.large,
                                  const DotWidget(
                                    padding: 16,
                                  ),
                                  AppSpacing.large,
                                  _doubleRowWidget(context,
                                      firstRowOne: "VISA ***2462",
                                      firstRowTwo: "\$258.25",
                                      secondRowOne: "Payment method",
                                      secondRowTwo: "Price"),
                                  AppSpacing.large,
                                  AppDivider.horizontal,
                                  AppSpacing.large,
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: BarcodeWidget(
                                        data: "https://github.com/khanhdev98",
                                        barcode: Barcode.code128(),
                                        drawText: false,
                                        color: context.onSurfaceColor,
                                        width: double.infinity,
                                        height: 70,
                                      ),
                                    ),
                                  ),
                                  AppSpacing.large,
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 90),
                          child: Row(
                            children: const [
                              ThickDoubleContainer(),
                              Expanded(child: DotWidget()),
                              ThickDoubleContainer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.xxLarge,
                    TicketView(ticket: ticketList[0]),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: context.surfaceColor,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: FormHeaderTickets(
                                      colorThick: AppColor.bgColor,
                                      countryCodeStart: "DK",
                                      countryCodeEnd: "SH",
                                      countryNameStart: "DhaKa",
                                      countryNameEnd: "Shanghai",
                                      flyingTime: "9H  15M",
                                      styleCodeEnd: context.titleLarge,
                                      styleCodeStart: context.titleLarge,
                                      styleFlyingTime: context.titleLarge?.bold,
                                      styleNameEnd: context.bodyMedium?.disable,
                                      styleNameStart: context.bodyMedium?.disable,
                                    ),
                                  ),
                                  AppSpacing.normal,
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                                    child: FormTimeFlightTickets(
                                        departureTime: "08:30 AM",
                                        number: "50",
                                        numberDate: "2 Days",
                                        styleDate: context.titleMedium,
                                        styleDeparture: context.titleMedium,
                                        styleNumber: context.titleMedium,
                                        styleCommon: context.bodyMedium?.disable),
                                  ),
                                  const DotWidget(
                                    padding: 16,
                                  ),
                                  AppSpacing.large,
                                  _doubleRowWidget(context,
                                      firstRowOne: "Flutter Dash",
                                      firstRowTwo: "2564 566451",
                                      secondRowOne: "Passenger",
                                      secondRowTwo: "Passport"),
                                  AppSpacing.large,
                                  const DotWidget(
                                    padding: 16,
                                  ),
                                  AppSpacing.large,
                                  _doubleRowWidget(context,
                                      firstRowOne: "5414 588 2474",
                                      firstRowTwo: "B5FA45",
                                      secondRowOne: "Number of E-ticket",
                                      secondRowTwo: "Booking code"),
                                  AppSpacing.large,
                                  const DotWidget(
                                    padding: 16,
                                  ),
                                  AppSpacing.large,
                                  _doubleRowWidget(context,
                                      firstRowOne: "VISA ***1859",
                                      firstRowTwo: "\$999.99",
                                      secondRowOne: "Payment method",
                                      secondRowTwo: "Price"),
                                  AppSpacing.large,
                                  AppDivider.horizontal,
                                  AppSpacing.large,
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: BarcodeWidget(
                                        data: "https://github.com/khanhdev98",
                                        barcode: Barcode.code128(),
                                        drawText: false,
                                        color: context.onSurfaceColor,
                                        width: double.infinity,
                                        height: 70,
                                      ),
                                    ),
                                  ),
                                  AppSpacing.large,
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 90),
                          child: Row(
                            children: const [
                              ThickDoubleContainer(),
                              Expanded(child: DotWidget()),
                              ThickDoubleContainer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.xxLarge,
                    TicketView(ticket: ticketList[1]),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _doubleRowWidget(BuildContext context,
      {String firstRowOne = "",
      String firstRowTwo = "",
      String secondRowOne = "",
      String secondRowTwo = ""}) {
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
