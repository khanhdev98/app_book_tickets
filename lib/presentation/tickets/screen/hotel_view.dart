import 'package:confict/untils/app_color.dart';
import 'package:confict/untils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = AppLayout.getSize(context);
    return Container(
        width: _size.width * 0.6,
        height: AppLayout.getHeight(350),
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(16), vertical: AppLayout.getHeight(18)),
        margin: EdgeInsets.only(
            top: AppLayout.getHeight(5),
            left: AppLayout.getHeight(16),
            bottom: AppLayout.getHeight(5)),
        decoration: BoxDecoration(
            color: AppColor.bgColor,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
            boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(200),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/hotel/${hotel["image"]}"))),
            ),
            AppSpacing.small,
            Text(
              hotel["place"],
              style: context.appBarTitle?.copyWith(color: AppColor.kakiColor).bold,
            ),
            AppSpacing.xxSmall,
            Text(
              hotel["destination"],
              style: context.titleMedium?.onPrimary,
            ),
            AppSpacing.xxSmall,
            Text(
              "\$${hotel["price"]}/night",
              style: context.headlineSmall?.copyWith(color: AppColor.kakiColor).bold,
            ),
          ],
        ));
  }
}
