import 'package:confict/untils/app_color.dart';
import 'package:confict/untils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:widget/tickets_page/dot_widget.dart';
import 'package:widget/tickets_page/double_row_widget.dart';

import '../../../di/router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppSpacing.large,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSpacing.normal,
                  Container(
                    width: AppLayout.getWidth(100),
                    height: AppLayout.getHeight(100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        color: context.surfaceColor,
                        image: const DecorationImage(
                          scale: 3,
                          // fit: BoxFit.contain,
                          image: AssetImage(
                            "assets/images/flight/img_flight_search_loading.png",
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: AppLayout.getHeight(100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Book Tickets",
                                style: context.headlineMedium?.bold,
                              ),
                              Text(
                                "New York",
                                style: context.bodyMedium?.disable,
                              ),
                            ],
                          ),
                          AppSpacing.xSmall,
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: context.surfaceGray),
                            child: Text(
                              "Premium status",
                              style: context.bodyMedium?.secondary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Edit"),
              ),
            ],
          ),
          AppSpacing.large,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.bgColor,
              ),
              child: Row(
                children: [
                  AppSpacing.normal,
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.surfaceColor,
                        ),
                      ),
                      const Icon(Icons.add_alert_outlined)
                    ],
                  ),
                  AppSpacing.normal,
                  Column(
                    children: [
                      Text(
                        "You've got a new award",
                        style: context.titleLarge?.onPrimary.bold,
                      ),
                      Text("You have 150 flights in a year", style: context.bodyMedium?.onPrimary),
                    ],
                  )
                ],
              ),
            ),
          ),
          AppSpacing.xLarge,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Accumulated miles",
              style: context.titleLarge?.bold,
            ),
          ),
          AppSpacing.xLarge,
          const Center(
            child: Text("192802",
                style: TextStyle(letterSpacing: 1.5, fontSize: 34, fontWeight: FontWeight.bold)),
          ),
          AppSpacing.large,
          Row(
            children: [
              Text(
                "Miles accrued",
                style: context.bodyMedium?.disable,
              ),
              Text("23 May 2022", style: context.bodyMedium?.disable),
            ],
          ),
          const DoubleRowWidget(
            firstRowOne: "23 042",
            firstRowTwo: "Airline CO",
            secondRowOne: "Miles",
            secondRowTwo: "Received from",
          ),
          AppSpacing.small,
          const DotWidget(),
          AppSpacing.small,
          const DoubleRowWidget(
            firstRowOne: "24 342",
            firstRowTwo: "McDonal's",
            secondRowOne: "Miles",
            secondRowTwo: "Received from",
          ),
          AppSpacing.small,
          const DotWidget(),
          AppSpacing.small,
          const DoubleRowWidget(
            firstRowOne: "52 543",
            firstRowTwo: "Exuma",
            secondRowOne: "Miles",
            secondRowTwo: "Received from",
          ),
          const DotWidget(),
          AppSpacing.small,
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRouters.tabSetting);
            },
            child: const Text("How to get more miles", style: TextStyle(color: AppColor.bgColor)),
          ),
          AppSpacing.small,
        ],
      ),
    );
  }
}
