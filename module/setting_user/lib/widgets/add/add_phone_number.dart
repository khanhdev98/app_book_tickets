// import 'package:flutter/material.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
// import 'package:widget/input_form_field/field/field_phone/field_phonee_detect.dart';
// import '../common/scaffold_setting_user.dart';
//
// class AddPhoneNumber extends StatefulWidget {
//   const AddPhoneNumber({Key? key}) : super(key: key);
//
//   @override
//   State<AddPhoneNumber> createState() => _AddPhoneNumberState();
// }
//
// class _AddPhoneNumberState extends State<AddPhoneNumber> {
//   final _controllerFieldPhone = TextEditingController();
//   FocusNode? focusNode;
//   final _formKey = GlobalKey<FormState>();
//   final GlobalKey<HaloFieldPhoneDetectState> keyPhone = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return ScaffoldSettingUser(
//       titleAppbar: "Thêm số điện thoại",
//       child: Form(
//         key: _formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               "Xác nhận số điện thoại của bạn",
//               style: context.bodyMedium?.bold,
//             ),
//             HaloSpacing.small,
//             const Text(
//                 "Xác nhận số di động của bạn sẽ giúp bạn đặt lại mật khẩu của bạn nếu cần, tìm bạn bè, nhận cập nhật qua SMS và nhiều thông tin khác. Chỉ bạn mới nhìn thấy số của mình"),
//             HaloSpacing.normal,
//             HaloFieldPhoneDetect(
//               key: keyPhone,
//               focusNode: focusNode,
//               autofocus: true,
//               isRequired: false,
//               controller: _controllerFieldPhone,
//             ),
//             HaloSpacing.normal,
//             ElevatedButton(
//               child: const Text("Thêm số điện thoại"),
//               onPressed: () {
//                 if (_formKey.currentState!.validate() == true) {
//                   Navigator.pop(context, _controllerFieldPhone.text);
//                 }
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
