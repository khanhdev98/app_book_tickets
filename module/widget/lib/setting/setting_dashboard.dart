import 'package:flutter/material.dart';

import '../page_appbar_text.dart';

class SettingDashBoard extends StatefulWidget {
  const SettingDashBoard({Key? key}) : super(key: key);

  @override
  State<SettingDashBoard> createState() => _SettingDashBoardState();
}

class _SettingDashBoardState extends State<SettingDashBoard> {
  List<String> cardPersonalDetails = [
    "Họ và tên",
    "Biệt danh",
    "Giới thiệu",
    "Giới tính",
    "Ngày sinh",
  ];
  @override
  Widget build(BuildContext context) {
    return PageScaffoldAppbarText(
      titleString: "Chỉnh sửa trang cá nhân",
      iconData: Icons.close,
      onLeadingAction: () {},
      action: TextButton(
        onPressed: () {},
        child: const Text("Lưu"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16,),
          _buildItem(title: "Chi tiết bản thân", startTexts: cardPersonalDetails),
          const SizedBox(height: 16,),
        ],
      ),

    );
  }

  Widget _buildItem({String title = "", required List<String> startTexts}) {
    return Card(
      margin: EdgeInsets.zero,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                _buildRow(startText: startTexts[0]),
                _buildRow(startText: startTexts[1]),
                _buildRow(startText: startTexts[2]),
                _buildRow(startText: startTexts[3]),
                _buildRow(startText: startTexts[4]),
              ],
            ),
          ),
        );
  }

  Widget _buildRow({String startText = ""}) {
    return Row(
                children: [
                  Text(startText),
                  Expanded(child: Container()),
                  TextButton(onPressed: () {}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.add),
                      SizedBox(width: 8,),
                      Text("Thêm")
                    ],
                  ))
                ],
              );
  }
}