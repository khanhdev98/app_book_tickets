// import 'package:flutter/material.dart';
// // import 'package:theme/gen/assets.gen.dart';
// // import 'package:theme/material3/m3_theme_lib.dart';
// // import 'package:widget/calendar/snap.dart';
//
// import '../../core/enums/setting_privacy.dart';
// import '../../resource/gen/assets.gen.dart';
// import 'content_privacy.dart';
//
// class ChoosePrivacy extends StatefulWidget {
//   final Function(SettingUserPrivacy?)? privacyCallBack;
//   final SettingUserPrivacy? settingUserPrivacy;
//
//   const ChoosePrivacy({
//     Key? key,
//     this.privacyCallBack,
//     this.settingUserPrivacy,
//   }) : super(key: key);
//
//   @override
//   State<ChoosePrivacy> createState() => _ChoosePrivacyState();
// }
//
// class _ChoosePrivacyState extends State<ChoosePrivacy> {
//   SettingUserPrivacy? _privacy = SettingUserPrivacy.public;
//
//   @override
//   void initState() {
//     _privacy = widget.settingUserPrivacy;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: BorderRadius.circular(16),
//       onTap: () => SnappingBottomSheet.showSnappingBottomSheet(
//         context,
//         "Chọn quyền riêng tư",
//         ContentPrivacy(
//           defaultPrivacy: widget.settingUserPrivacy,
//           privacyCallBack: (contentPrivacy) {
//             widget.privacyCallBack?.call(contentPrivacy);
//             setState(() {
//               _privacy = contentPrivacy;
//             });
//           },
//         ),
//         isPadding: false,
//       ),
//       child: Container(
//         padding: EdgeInsets.all(HaloSize.paddingXXS),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(color: context.colorScheme.outline),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             _iconPrivacy(type: _privacy),
//             HaloSpacing.xxSmall,
//             Text(_contentPrivacy(type: _privacy) ?? ""),
//             HaloSpacing.xxSmall,
//             MyAssets.icons.common.icArrowDropDown.image()
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _iconPrivacy({SettingUserPrivacy? type}) {
//     switch (type) {
//       case SettingUserPrivacy.public:
//         return SettingUserAssets.lib.resource.assets.images.settingPublic
//             .image();
//       case SettingUserPrivacy.onlyMe:
//         return SettingUserAssets.lib.resource.assets.images.settingOnlyMe
//             .image();
//       default:
//     }
//
//     return const SizedBox();
//   }
//
//   String? _contentPrivacy({SettingUserPrivacy? type}) {
//     if (type == SettingUserPrivacy.public) {
//       return "Công khai";
//     } else if (type == SettingUserPrivacy.onlyMe) {
//       return "Chỉ mình tôi";
//     } else {
//       return "";
//     }
//   }
// }
