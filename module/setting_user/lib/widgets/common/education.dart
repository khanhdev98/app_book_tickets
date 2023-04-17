// import 'package:flutter/material.dart';
// import 'package:flutter_core/core.dart';
// import 'package:setting_user/widgets/common/button_cancel_save.dart';
// import 'package:setting_user/widgets/common/scaffold_setting_user.dart';
// // import 'package:theme/gen/assets.gen.dart';
// // import 'package:theme/material3/m3_theme_lib.dart';
// // import 'package:widget/halo_date_picker/show_bottom_date_picker.dart';
// // import 'package:widget/input_form_field/field/halo_form_field.dart';
// // import 'package:widget/input_form_field/field/halo_validator.dart';
// // import 'package:widget/keyboard/halo_key_board_bottom.dart';
// // import 'package:widget/keyboard/key_board.dart';
// // import 'package:widget/keyboard/key_board_config.dart';
//
// import '../../core/enums/setting_privacy.dart';
// import '../common/choose_privacy.dart';
//
// class EducationOrWork extends StatefulWidget {
//   final String titleAppBar;
//   final String labelNameSchool;
//   final String? titleCheckBox;
//   final String? validate;
//   final TextEditingController? nameSchoolCompanyController;
//   final TextEditingController? provinceCityController;
//   final TextEditingController? dateStartController;
//   final TextEditingController? dateEndController;
//   final TextEditingController? descriptionController;
//   final TextEditingController? positionController;
//   final bool? valueCheckbox;
//   final void Function(bool?)? onChangedCheckbox;
//   final void Function()? onPressedCancel;
//   final void Function()? onPressedSave;
//   final Function(SettingUserPrivacy?)? privacyCallBack;
//   final bool isShowPosition;
//   final SettingUserPrivacy? settingUserPrivacy;
//
//   const EducationOrWork({
//     Key? key,
//     required this.titleAppBar,
//     required this.labelNameSchool,
//     this.nameSchoolCompanyController,
//     this.provinceCityController,
//     this.dateStartController,
//     this.dateEndController,
//     this.descriptionController,
//     this.valueCheckbox,
//     this.onChangedCheckbox,
//     this.onPressedSave,
//     this.onPressedCancel,
//     this.privacyCallBack,
//     this.titleCheckBox,
//     this.positionController,
//     this.validate,
//     this.isShowPosition = false,
//     this.settingUserPrivacy,
//   }) : super(key: key);
//
//   @override
//   State<EducationOrWork> createState() => _EducationOrWorkState();
// }
//
// class _EducationOrWorkState extends State<EducationOrWork> {
//   FocusNode nameSchoolNode = FocusNode();
//   FocusNode provinceCityNode = FocusNode();
//   FocusNode descriptionNode = FocusNode();
//
//   @override
//   Widget build(BuildContext context) {
//     final focusNode = <FocusNode>[
//       nameSchoolNode,
//       provinceCityNode,
//       descriptionNode
//     ];
//     return ScaffoldSettingUser(
//       titleAppbar: widget.titleAppBar,
//       child: HaloKeyboardActions(
//         enable: true,
//         disableScroll: true,
//         config: carKeyboardActionsConfig(context, focusNode),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               HaloTextFormField(
//                 labelText: widget.labelNameSchool,
//                 controller: widget.nameSchoolCompanyController,
//                 focusNode: nameSchoolNode,
//                 validator: (value) {
//                   if (widget.nameSchoolCompanyController?.text.isEmpty == true) {
//                     return widget.validate ?? "Nhập tên trường";
//                   }
//                   return null;
//                 },
//               ),
//               if (widget.isShowPosition) _fieldPosition(),
//               HaloSpacing.normal,
//               HaloTextFormField(
//                 labelText: "Tỉnh/Thành phố",
//                 focusNode: provinceCityNode,
//                 isRequired: true,
//                 controller: widget.provinceCityController,
//                 validator: (value) {
//                   if (widget.provinceCityController?.text.isEmpty == true) {
//                     return "Nhập tỉnh/ thành phố";
//                   }
//                   return null;
//                 },
//               ),
//               HaloSpacing.normal,
//               HaloTextFormField(
//                 labelText: "Ngày bắt đầu",
//                 isRequired: true,
//                 controller: widget.dateStartController,
//                 onTap: () => _chooseDate(
//                     callback: (dateStart) =>
//                         widget.dateStartController?.text = dateStart ?? ""),
//                 suffixIcon: MyAssets.icons.common.icCalendar.image(),
//                 validator: (value) {
//                   if (widget.dateStartController?.text.isEmpty == true) {
//                     return "Vui lòng chọn khoảng thời gian bắt đầu";
//                   }
//                   return null;
//                 },
//               ),
//               HaloSpacing.normal,
//               HaloTextFormField(
//                 labelText: "Ngày kết thúc",
//                 isRequired: true,
//                 controller: widget.dateEndController,
//                 onTap: () => _chooseDate(
//                     callback: (dateEnd) =>
//                         widget.dateEndController?.text = dateEnd ?? ""),
//                 suffixIcon: MyAssets.icons.common.icCalendar.image(),
//                 validator: (value) {
//                   if (widget.dateEndController?.text.isEmpty == true) {
//                     return "Vui lòng chọn khoảng thời gian kết thúc";
//                   }
//                   return null;
//                 },
//               ),
//               CheckboxListTile(
//                 contentPadding: EdgeInsets.zero,
//                 visualDensity: const VisualDensity(
//                   horizontal: VisualDensity.minimumDensity,
//                 ),
//                 value: widget.valueCheckbox,
//                 onChanged: widget.onChangedCheckbox,
//                 controlAffinity: ListTileControlAffinity.leading,
//                 title: Text(
//                   widget.titleCheckBox ?? 'Đã tốt nghiệp',
//                   style: context.bodyMedium,
//                 ),
//               ),
//               HaloTextFormField(
//                 focusNode: descriptionNode,
//                 labelText: "Nội dung mô tả",
//                 controller: widget.descriptionController,
//               ),
//               HaloSpacing.normal,
//               ChoosePrivacy(
//                 privacyCallBack: widget.privacyCallBack,
//                 settingUserPrivacy: widget.settingUserPrivacy,
//               ),
//               HaloSpacing.normal,
//               ButtonCancelSave(
//                 onPressedCancel: widget.onPressedCancel,
//                 onPressedSave: widget.onPressedSave,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _fieldPosition() => Column(
//         children: [
//           HaloSpacing.normal,
//           HaloTextFormField(
//             labelText: "Chức vụ",
//             controller: widget.positionController,
//           ),
//         ],
//       );
//
//   Future<void> _chooseDate({Function(String?)? callback}) {
//     FocusScope.of(context).unfocus();
//     const timeDelay = 100;
//     //delay dismiss keyboard when show showBottomBirthDatePicker
//     return Future.delayed(const Duration(milliseconds: timeDelay))
//         .then((value) => showBottomBirthDatePicker(
//               context,
//               "Chọn ngày sinh",
//               DateTime.parse(DateTime.now().toString()),
//               DateTime(1900),
//               DateTime(2100),
//             ).then((dateChoose) {
//               if (dateChoose != null) {
//                 callback?.call(
//                     HaloDateTime(dateChoose.toString()).format("yyyy-MM-dd"));
//               }
//               return null;
//             }));
//   }
// }
//
// HaloKeyboardActionsConfig carKeyboardActionsConfig(
//     BuildContext context, List<FocusNode> focusNode) {
//   return HaloKeyboardActionsConfig(
//     keyboardActionsPlatform: HaloKeyboardActionsPlatform.ALL,
//     keyboardBarColor: context.surfaceGray,
//     nextFocus: true,
//     actions: List.generate(
//       focusNode.length,
//       (index) => HaloKeyboardActionsItem(
//         focusNode: focusNode[index],
//         toolbarButtons: [
//           (node) {
//             return GestureDetector(
//               onTap: () {
//                 FocusScope.of(context).unfocus();
//               },
//               child: Padding(
//                 padding: EdgeInsets.all(HaloSize.paddingXS),
//                 child: Text(
//                   "Xong",
//                   style: context.labelLarge?.primary,
//                 ),
//               ),
//             );
//           }
//         ],
//       ),
//     ),
//   );
// }
