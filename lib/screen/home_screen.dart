import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:untitled2/screen/ticket_view.dart';
import 'package:untitled2/untils/app_info_list.dart';

import 'hotel_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good morning",
                          style: context.bodyLarge?.copyWith(color: context.onSurfaceVariant)),
                      Text("Book Tickets", style: context.headlineSmall?.bold),
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: context.surfaceColor,
                        image: const DecorationImage(
                          scale: 5,
                          // fit: BoxFit.contain,
                          image: AssetImage(
                            "assets/images/flight/img_flight_search_loading.png",
                          ),
                        )),
                  )
                ]),
                AppSpacing.large,
                Container(
                  decoration: BoxDecoration(
                    color: context.surfaceColor,
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: context.primaryColor),
                      const Text("Search"),
                    ],
                  ),
                ),
                AppSpacing.xxLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("UpComing Flights", style: context.appBarTitle?.bold),
                    TextButton(onPressed: () {}, child: const Text("View all")),
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 16),
            child: Row(
                children: ticketList.map((ticketItem) => TicketView(ticket: ticketItem)).toList()),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: context.appBarTitle?.bold),
                TextButton(onPressed: () {}, child: const Text("View all")),
              ],
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                  children: hotelList
                      .map(
                        (hotelItem) => HotelView(
                          hotel: hotelItem,
                        ),
                      )
                      .toList())),
          AppSpacing.normal
        ],
      ),
    );
  }
}
