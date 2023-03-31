import 'package:confict/untils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import '../bloc/tickets_tab_bloc.dart';

class DoubleButtonWidget extends StatefulWidget {
  final String textFirst;
  final String textSecond;

  const DoubleButtonWidget({Key? key, required this.textFirst, required this.textSecond})
      : super(key: key);

  @override
  State<DoubleButtonWidget> createState() => _DoubleButtonWidgetState();
}

class _DoubleButtonWidgetState extends State<DoubleButtonWidget> {
  TicketsTabBloc get bloc => BlocProvider.of(context);
  bool isActiveTabSecond = false;
  bool isActiveTabFirst = true;

  @override
  Widget build(BuildContext context) {
    var _size = AppLayout.getSize(context);
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
                color: context.surfaceColor.withOpacity(0.6),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isActiveTabSecond = false;
                      isActiveTabFirst = true;
                    });
                    bloc.fetchTicket(isActiveTabFirst: true, isActiveTabSecond: false);
                  },
                  child: Container(
                    width: _size.width * .44,
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      color: isActiveTabFirst == true ? context.surfaceColor : Colors.transparent,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppLayout.getHeight(50)),
                          topLeft: Radius.circular(AppLayout.getHeight(50))),
                    ),
                    child: Center(child: Text(widget.textFirst)),
                  ),
                ),
                FittedBox(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isActiveTabSecond = true;
                        isActiveTabFirst = false;
                      });
                      bloc.fetchTicket(isActiveTabFirst: false, isActiveTabSecond: true);
                    },
                    child: Container(
                      width: _size.width * .44,
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color:
                            isActiveTabSecond == true ? context.surfaceColor : Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(AppLayout.getHeight(50)),
                            topRight: Radius.circular(AppLayout.getHeight(50))),
                      ),
                      child: Center(child: Text(widget.textSecond)),
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
