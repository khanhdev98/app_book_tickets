// import 'package:flutter/material.dart';
// import 'package:setting_user/widgets/common/scaffold_setting_user.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
//
// class Address extends StatefulWidget {
//   const Address({Key? key}) : super(key: key);
//
//   @override
//   State<Address> createState() => _AddressState();
// }
//
// class _AddressState extends State<Address> {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController _usernameController = TextEditingController();
//     return ScaffoldSettingUser(
//       titleAppbar: "Địa chỉ",
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             _searchPlaces(_usernameController),
//             const Divider(),
//             HaloSpacing.small,
//             SizedBox(
//               height: MediaQuery.of(context).size.height,
//               child: ListView.builder(
//                 itemCount: 10,
//                 itemBuilder: (context, index) => ListTile(
//                   contentPadding: EdgeInsets.zero,
//                   leading: Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                         color: context.backgroundColor,
//                         borderRadius: BorderRadius.circular(36)),
//                     child: Image.asset(
//                       IconPaths.location,
//                       fit: BoxFit.fitHeight,
//                       color: context.onSurfaceColor,
//                     ),
//                   ),
//                   trailing: Checkbox(
//                     onChanged: (value) {},
//                     value: true,
//                   ),
//                   title: Text(
//                     "TP HCM, Việt Nam",
//                     style: context.labelLarge,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _searchPlaces(TextEditingController _usernameController) {
//     return TextFormField(
//       autofocus: true,
//       onChanged: (text) {},
//       decoration: textFieldCircleBorder(context.colorScheme).copyWith(
//         contentPadding: EdgeInsets.zero,
//         prefixIcon: SizedBox(
//           width: 22,
//           height: 22,
//           child: Image.asset(
//             PathIcons.icCarSearch,
//             color: context.colorScheme.onBackground,
//           ),
//         ),
//         suffixIcon: _usernameController.text.isEmpty
//             ? null
//             : IconButton(
//           onPressed: () {
//             setState(() {
//               _usernameController.clear();
//             });
//           },
//           icon:
//           HaloIcons.cancel.apply(iconColor: context.onSurfaceVariant),
//         ),
//         hintText: "Tìm kiếm địa điểm",
//       ),
//     );
//   }
// }
