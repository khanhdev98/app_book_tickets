// import 'package:flutter/material.dart';
// import 'package:theme/gen/assets.gen.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
//
// import 'common/button_cancel_save.dart';
// import 'common/choose_privacy.dart';
// import 'common/scaffold_setting_user.dart';
// import 'input_form_field/halo_form_field.dart';
//
//
// class CurrentLivingPlace extends StatelessWidget {
//   const CurrentLivingPlace({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ScaffoldSettingUser(
//       titleAppbar: "Nơi sống hiện tại",
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           HaloTextFormField(
//             labelText: "Nhập nơi sống hiện tại của bạn",
//             prefixIcon: MyAssets.icons.common.icLocation.image(),
//           ),
//           HaloSpacing.normal,
//           const ChoosePrivacy(),
//           HaloSpacing.normal,
//           ButtonCancelSave(
//             onPressedCancel: () {},
//             onPressedSave: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
