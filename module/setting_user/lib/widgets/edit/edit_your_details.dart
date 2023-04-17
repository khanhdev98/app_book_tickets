// import 'package:flutter/material.dart';
// import 'package:setting_user/core/data/profile_user_model.dart';
// import 'package:setting_user/core/enums/act_update.dart';
// import 'package:setting_user/core/extensions/ext_string_to_privacy.dart';
// import 'package:widget/halo_date_picker/show_bottom_date_picker.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
// import 'package:theme/gen/assets.gen.dart';
// import 'package:flutter_core/core.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../core/enums/setting_gender.dart';
// import '../../cubits/update_profile_cubit.dart';
// import '../common/button_cancel_save.dart';
// import '../common/choose_privacy.dart';
// import '../common/scaffold_setting_user.dart';
// import '../input_form_field/halo_field_label.dart';
// import '../input_form_field/halo_form_field.dart';
//
// class EditYourDetails extends StatefulWidget {
//   final ProfileUserModel? profileUserModel;
//
//   const EditYourDetails({
//     Key? key,
//     this.profileUserModel,
//   }) : super(key: key);
//
//   @override
//   State<EditYourDetails> createState() => _EditYourDetailsState();
// }
//
// class _EditYourDetailsState extends State<EditYourDetails> {
//   final TextEditingController _birthdayController = TextEditingController();
//
//   UpdateProfileCubit get _updateProfileCubit => BlocProvider.of(context);
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   String _birthDayConfig = "";
//
//   @override
//   void initState() {
//     DateTime _dateData =
//         DateTime.parse(widget.profileUserModel?.birthday?.date ?? "");
//     _birthdayController.text = HaloDateTime(_dateData).yyyyMMdd;
//     _birthDayConfig =
//         DateTime.parse(widget.profileUserModel?.birthday?.date ?? "")
//             .formattersConfig();
//     _updateProfileCubit.selectedGender(_initGender);
//     _updateProfileCubit.selectedPrivacy(
//       privacyBirthday: widget.profileUserModel?.gender?.scope.toPrivacy,
//       privacyGender: widget.profileUserModel?.birthday?.scope.toPrivacy,
//     );
//
//     super.initState();
//   }
//
//   SettingUserGender get _initGender {
//     if (widget.profileUserModel?.gender?.type == SettingUserGender.male.value) {
//       return SettingUserGender.male;
//     } else if (widget.profileUserModel?.gender?.type ==
//         SettingUserGender.female.value) {
//       return SettingUserGender.female;
//     }
//     return SettingUserGender.other;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ScaffoldSettingUser(
//       titleAppbar: "Chỉnh sửa chi tiết bản thân",
//       child: BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
//         listener: (context, state) {
//           if (state.isSave == true) {
//             const int timeDelay = 500;
//             Future.delayed(const Duration(milliseconds: timeDelay))
//                 .then((value) => Navigator.pop(context));
//           }
//         },
//         bloc: _updateProfileCubit,
//         builder: (context, state) {
//           return Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 HaloTextFormField(
//                   labelText: HaloFieldLabel.type(
//                       type: FieldType.date, context: context),
//                   isRequired: true,
//                   controller: _birthdayController,
//                   validator: (value) {
//                     if (state.codeError == 4012) {
//                       return "Ngày sinh không hợp lệ";
//                     }
//                     return null;
//                   },
//                   autoValidateMode: AutovalidateMode.always,
//                   onTap: () => _selectedBirthday(),
//                   suffixIcon: MyAssets.icons.common.icCalendar.image(),
//                 ),
//                 HaloSpacing.normal,
//                 ChoosePrivacy(
//                   privacyCallBack: (p0) =>
//                       _updateProfileCubit.selectedPrivacy(privacyBirthday: p0),
//                   settingUserPrivacy:
//                       widget.profileUserModel?.gender?.scope.toPrivacy,
//                 ),
//                 HaloSpacing.normal,
//                 const Divider(),
//                 _genderSelectedView(),
//                 HaloSpacing.normal,
//                 ChoosePrivacy(
//                   settingUserPrivacy:
//                       widget.profileUserModel?.birthday?.scope.toPrivacy,
//                   privacyCallBack: (p0) =>
//                       _updateProfileCubit.selectedPrivacy(privacyGender: p0),
//                 ),
//                 HaloSpacing.normal,
//                 ButtonCancelSave(
//                   onPressedCancel: () => Navigator.pop(context),
//                   onPressedSave: () => _onSave(),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Future<void> _selectedBirthday() => showBottomBirthDatePicker(
//         context,
//         "Chọn ngày sinh",
//         DateTime.parse(_birthDayConfig),
//         DateTime(1900),
//         DateTime(2100),
//       ).then((value) {
//         _updateProfileCubit.reset();
//         if (value != null) {
//           _birthDayConfig = value.formattersConfig();
//           _birthdayController.text = HaloDateTime(value.toString()).yyyyMMdd;
//         }
//       });
//
//   Widget _genderSelectedView() => Row(
//         children: [
//           const Expanded(
//             child: Text('Giới tính : '),
//           ),
//           Expanded(
//             child: RadioListTile<SettingUserGender>(
//               contentPadding: EdgeInsets.zero,
//               dense: true,
//               visualDensity: const VisualDensity(
//                 horizontal: VisualDensity.minimumDensity,
//                 vertical: VisualDensity.minimumDensity,
//               ),
//               value: SettingUserGender.male,
//               groupValue: _updateProfileCubit.state.settingUserGender,
//               onChanged: (SettingUserGender? value) =>
//                   _updateProfileCubit.selectedGender(value),
//               title: const Text('Nam'),
//             ),
//           ),
//           Expanded(
//             child: RadioListTile<SettingUserGender>(
//               contentPadding: EdgeInsets.zero,
//               dense: true,
//               visualDensity: const VisualDensity(
//                 horizontal: VisualDensity.minimumDensity,
//                 vertical: VisualDensity.minimumDensity,
//               ),
//               value: SettingUserGender.female,
//               groupValue: _updateProfileCubit.state.settingUserGender,
//               onChanged: (SettingUserGender? value) =>
//                   _updateProfileCubit.selectedGender(value),
//               title: const Text('Nữ'),
//             ),
//           ),
//           Expanded(
//             child: RadioListTile<SettingUserGender>(
//               contentPadding: EdgeInsets.zero,
//               dense: true,
//               visualDensity: const VisualDensity(
//                 horizontal: VisualDensity.minimumDensity,
//                 vertical: VisualDensity.minimumDensity,
//               ),
//               value: SettingUserGender.other,
//               groupValue: _updateProfileCubit.state.settingUserGender,
//               onChanged: (SettingUserGender? value) =>
//                   _updateProfileCubit.selectedGender(value),
//               title: const Text('Khác'),
//             ),
//           ),
//         ],
//       );
//
//   void _onSave() {
//     if (_formKey.currentState?.validate() == true) {
//       _updateProfileCubit.updateProfile(
//         profileUserModel: ProfileUserModel(
//           act: ActUpdate.updateBirthdayGender.value,
//           birthday: Birthday(
//             scope: _updateProfileCubit.state.privacyBirthday?.value,
//             date: _birthDayConfig,
//           ),
//           gender: Gender(
//             scope: _updateProfileCubit.state.privacyGender?.value,
//             type: _updateProfileCubit.state.settingUserGender?.value,
//           ),
//         ),
//       );
//     }
//   }
// }
