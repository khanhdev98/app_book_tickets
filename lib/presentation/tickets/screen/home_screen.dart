import 'package:confict/untils/app_info_list.dart';
import 'package:confict/untils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:untitled2/presentation/tickets/screen/ticket_view.dart';
import 'package:widget/tickets_page/header_double_text.dart';

import 'hotel_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FocusNode focusNode = FocusNode();
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(() {
      focusNode.unfocus();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _controller,
        children: [
          Padding(
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
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
                    width: AppLayout.getWidth(60),
                    height: AppLayout.getHeight(60),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
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
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      color: context.surfaceColor),
                  child: TextField(
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      prefixIcon: const Icon(FluentSystemIcons.ic_fluent_search_regular),
                      hintText: 'Search',
                      hintStyle: context.bodyMedium,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                AppSpacing.xxLarge,
                const HeaderDoubleText(
                  headerText: "UpComing Flights",
                  textButton: "View all",
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: AppLayout.getHeight(16)),
            child: Row(
                children: ticketList.map((ticketItem) => TicketView(ticket: ticketItem)).toList()),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16)),
            child: const HeaderDoubleText(
              headerText: "Hotels",
              textButton: "View all",
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: AppLayout.getHeight(16)),
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
