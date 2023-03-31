import 'package:auto_size_text/auto_size_text.dart';
import 'package:confict/untils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:untitled2/presentation/tickets/bloc/tickets_state.dart';
import 'package:untitled2/presentation/tickets/bloc/tickets_tab_bloc.dart';
import 'package:untitled2/presentation/tickets/widget/double_button_widget.dart';
import 'package:widget/tickets_page/app_icon_text.dart';
import 'package:widget/tickets_page/header_double_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "what are\nyou looking for?",
              style: context.headlineMedium?.bold,
            ),
          ),
          AppSpacing.large,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DoubleButtonWidget(
              textFirst: 'Airline Tickets',
              textSecond: 'Hotels',
            ),
          ),
          AppSpacing.large,
          BlocBuilder<TicketsTabBloc, TicketState>(builder: (context, state) {
            if (state is TicketDisplayTicket1) {
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: AppIconText(hintText: "Departure", icon: Icons.flight_takeoff_rounded),
                  ),
                  AppSpacing.normal,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: AppIconText(hintText: "Arrival", icon: Icons.flight_land_rounded),
                  ),
                  AppSpacing.xLarge,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xD91130CE)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 14))),
                        onPressed: () {},
                        child: Text(
                          "Find tickets",
                          style: context.buttonText?.onPrimary,
                        ),
                      ),
                    ),
                  ),
                  AppSpacing.xLarge,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: HeaderDoubleText(
                      headerText: "UpComing Flights",
                      textButton: "View all",
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(420),
                    child: Row(
                      children: [
                        AppSpacing.normal,
                        Container(
                            width: _size.width * 0.44,
                            padding: EdgeInsets.symmetric(
                                horizontal: AppLayout.getHeight(16),
                                vertical: AppLayout.getHeight(18)),
                            decoration: BoxDecoration(
                                color: context.surfaceColor,
                                borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: AppLayout.getHeight(200),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/hotel/hotel_null_image.png"))),
                                ),
                                AppSpacing.small,
                                AutoSizeText(
                                  "20% discount on business class tickets from Airline On International",
                                  style: context.appBarTitle?.copyWith(
                                      color: context.onSurfaceVariant, fontWeight: FontWeight.w500),
                                  maxLines: 6,
                                ),
                              ],
                            )),
                        AppSpacing.normal,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(children: [
                              Container(
                                  width: _size.width * 0.44,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppLayout.getHeight(16),
                                      vertical: AppLayout.getHeight(18)),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF3AB8B8),
                                      borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade200,
                                            blurRadius: 20,
                                            spreadRadius: 5)
                                      ]),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Discount \nfor survey",
                                        style: context.headlineSmall
                                            ?.copyWith(color: context.onSurfaceVariant)
                                            .bold
                                            .onPrimary,
                                        maxLines: 2,
                                      ),
                                      AutoSizeText(
                                        "Take the survey about our services and get discount",
                                        style: context.bodyLarge
                                            ?.copyWith(
                                                color: context.onSurfaceVariant,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17)
                                            .onPrimary,
                                        maxLines: 6,
                                      ),
                                    ],
                                  )),
                              Positioned(
                                right: -45,
                                top: -40,
                                child: Container(
                                  padding: const EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 20, color: const Color(0xFF189999)),
                                  ),
                                ),
                              ),
                            ]),
                            AppSpacing.normal,
                            Container(
                                width: _size.width * 0.45,
                                height: 200,
                                padding: EdgeInsets.only(
                                  top: AppLayout.getHeight(18),
                                ),
                                decoration: BoxDecoration(
                                    color: const Color(0xFFEC6545),
                                    borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade200,
                                          blurRadius: 20,
                                          spreadRadius: 5)
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      "Take love",
                                      style: context.headlineSmall?.onPrimary.bold,
                                    ),
                                    AppSpacing.normal,
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(text: "😍", style: TextStyle(fontSize: 28)),
                                        TextSpan(text: "🥰", style: TextStyle(fontSize: 40)),
                                        TextSpan(text: "😘", style: TextStyle(fontSize: 28)),
                                      ]),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: AppIconText(hintText: "Search Hotels", icon: Icons.hotel),
                  ),
                  AppSpacing.xLarge,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xD91130CE)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 14))),
                        onPressed: () {},
                        child: Text(
                          "Find Hotels",
                          style: context.buttonText?.onPrimary,
                        ),
                      ),
                    ),
                  ),
                  AppSpacing.xLarge,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: HeaderDoubleText(
                      headerText: "UpComing Hotels",
                      textButton: "View all",
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(420),
                    child: Row(
                      children: [
                        AppSpacing.normal,
                        Container(
                            width: _size.width * 0.44,
                            padding: EdgeInsets.symmetric(
                                horizontal: AppLayout.getHeight(16),
                                vertical: AppLayout.getHeight(18)),
                            decoration: BoxDecoration(
                                color: context.surfaceColor,
                                borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: AppLayout.getHeight(200),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/hotel/hotel_null_image.png"))),
                                ),
                                AppSpacing.small,
                                AutoSizeText(
                                  "20% discount on business class tickets from Airline On International",
                                  style: context.appBarTitle?.copyWith(
                                      color: context.onSurfaceVariant, fontWeight: FontWeight.w500),
                                  maxLines: 6,
                                ),
                              ],
                            )),
                        AppSpacing.normal,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(children: [
                              Container(
                                  width: _size.width * 0.44,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppLayout.getHeight(16),
                                      vertical: AppLayout.getHeight(18)),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF3AB8B8),
                                      borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade200,
                                            blurRadius: 20,
                                            spreadRadius: 5)
                                      ]),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Discount \nfor survey",
                                        style: context.headlineSmall
                                            ?.copyWith(color: context.onSurfaceVariant)
                                            .bold
                                            .onPrimary,
                                        maxLines: 2,
                                      ),
                                      AutoSizeText(
                                        "Take the survey about our services and get discount",
                                        style: context.bodyLarge
                                            ?.copyWith(
                                                color: context.onSurfaceVariant,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17)
                                            .onPrimary,
                                        maxLines: 6,
                                      ),
                                    ],
                                  )),
                              Positioned(
                                right: -45,
                                top: -40,
                                child: Container(
                                  padding: const EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 20, color: const Color(0xFF189999)),
                                  ),
                                ),
                              ),
                            ]),
                            AppSpacing.normal,
                            Container(
                                width: _size.width * 0.45,
                                height: 200,
                                padding: EdgeInsets.only(
                                  top: AppLayout.getHeight(18),
                                ),
                                decoration: BoxDecoration(
                                    color: const Color(0xFFEC6545),
                                    borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade200,
                                          blurRadius: 20,
                                          spreadRadius: 5)
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      "Take love",
                                      style: context.headlineSmall?.onPrimary.bold,
                                    ),
                                    AppSpacing.normal,
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(text: "😍", style: TextStyle(fontSize: 28)),
                                        TextSpan(text: "🥰", style: TextStyle(fontSize: 40)),
                                        TextSpan(text: "😘", style: TextStyle(fontSize: 28)),
                                      ]),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          }),
          AppSpacing.xLarge,
        ],
      ),
    );
  }
}
