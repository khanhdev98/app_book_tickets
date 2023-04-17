// import 'package:flutter/material.dart';
// import 'package:flutter_core/core.dart';
// import 'package:setting_user/core/data/profile_user_model.dart';
// // import 'package:theme/gen/assets.gen.dart';
// // import 'package:theme/material3/m3_theme_lib.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../core/enums/act_update.dart';
// import '../../cubits/update_profile_cubit.dart';
// import '../../di/routers.dart';
// import '../common/button_cancel_save.dart';
// import '../common/scaffold_setting_user.dart';
// import '../input_form_field/halo_form_field.dart';
// import '../input_form_field/halo_validator.dart';
//
// class EditContactInformation extends StatefulWidget {
//   final ProfileUserModel? profileUserModel;
//
//   const EditContactInformation({
//     Key? key,
//     this.profileUserModel,
//   }) : super(key: key);
//
//   @override
//   State<EditContactInformation> createState() => _EditContactInformationState();
// }
//
// class _EditContactInformationState extends State<EditContactInformation> {
//   UpdateProfileCubit get _updateProfileCubit => BlocProvider.of(context);
//   final TextEditingController _mainPhoneCtrl = TextEditingController();
//   List<TextEditingController> phoneNumbersCtrl =
//       List.generate(100, (index) => TextEditingController());
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final FocusNode _focusNodeMainPhone = FocusNode();
//
//   List<String?>? get phoneNumbers => _updateProfileCubit.state.phoneNumbers;
//
//   @override
//   void initState() {
//     _initPhoneNumber();
//     super.initState();
//   }
//
//   void _initPhoneNumber() {
//     _mainPhoneCtrl.text = widget.profileUserModel?.mainPhone ?? "";
//     _updateProfileCubit.addPhoneNumber([...?widget.profileUserModel?.phone]);
//     for (int i = 0; i < widget.profileUserModel!.phone!.length; i++) {
//       phoneNumbersCtrl[i].text =
//           widget.profileUserModel?.phone?[i].toString() ?? "";
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ScaffoldSettingUser(
//       titleAppbar: "Chỉnh sửa thông tin liên hệ",
//       child: BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
//         listener: (context, state) {
//           if (state.isSave == true) {
//             const int timeDelay = 500;
//             Future.delayed(const Duration(milliseconds: timeDelay))
//                 .then((value) => Navigator.pop(context));
//           }
//         },
//         builder: (context, state) {
//           return SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _mainPhone(),
//                   HaloSpacing.xLarge,
//                   _phoneNumbersAdded(),
//                   _addNumberPhone(),
//                   HaloSpacing.xLarge,
//                   ButtonCancelSave(
//                     onPressedCancel: () => Navigator.pop(context),
//                     onPressedSave: () => _onSave(),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   void _onSave() {
//     _focusNodeMainPhone.unfocus();
//     if (_formKey.currentState!.validate() == true) {
//       _updateProfileCubit.updateProfile(
//         profileUserModel: ProfileUserModel(
//           act: ActUpdate.updateInfoContact.value,
//           mainPhone: _mainPhoneCtrl.text,
//           phone: phoneNumbers,
//         ),
//       );
//     }
//   }
//
//   Widget _mainPhone() => HaloTextFormField(
//         controller: _mainPhoneCtrl,
//         focusNode: _focusNodeMainPhone,
//         //keyboardType: TextInputType.number,
//         labelText: "Di động",
//         validator: (value) {
//           if (value?.isEmpty == true || value == null) {
//             return HaloValidator.validate(
//               context: context,
//               type: FieldType.phone,
//               text: value,
//               isRequired: true,
//             );
//           } else if (!value.isNumber()) {
//             return "Chỉ cho phép chữ số";
//           }
//           return null;
//         },
//       );
//
//   Widget _phoneNumbersAdded() => ListView.builder(
//         shrinkWrap: true,
//         itemCount: phoneNumbers?.length,
//         padding: EdgeInsets.zero,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.only(bottom: HaloSize.padding),
//             child: HaloTextFormField(
//               controller: phoneNumbersCtrl[index],
//               labelText: "Di động",
//               suffixIcon: _deletePhoneNumber(index),
//               onChanged: (value) {
//                 phoneNumbers?[index] = value;
//                 //phones[index] = value;
//               },
//             ),
//           );
//         },
//       );
//
//   Widget _deletePhoneNumber(int index) => GestureDetector(
//         onTap: () {
//           setState(() {
//             phoneNumbers?.removeAt(index);
//             phoneNumbersCtrl.removeAt(index);
//           });
//         },
//         child: Container(
//           height: 40,
//           width: 40,
//           margin: EdgeInsets.all(HaloSize.paddingXS),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(color: context.colorScheme.outline),
//           ),
//           child: MyAssets.icons.common.icDelete.image(),
//         ),
//       );
//
//   Widget _addNumberPhone() => InkWell(
//         onTap: () {
//           _focusNodeMainPhone.unfocus();
//           Navigator.pushNamed(context, SettingUserRouters.addNumberPhone)
//               .then((value) {
//             if (value != null) {
//               setState(() {
//                 phoneNumbers?.add(value.toString());
//               });
//               if (_mainPhoneCtrl.text.isEmpty) {
//                 _mainPhoneCtrl.text = phoneNumbers?[0].toString() ?? "";
//               }
//               for (int i = 1; i < phoneNumbers!.length; i++) {
//                 phoneNumbersCtrl[i].text = phoneNumbers?[i].toString() ?? "";
//               }
//             }
//           });
//         },
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             MyAssets.icons.common.icUpNumber.image(color: context.primaryColor),
//             HaloSpacing.xSmall,
//             Text(
//               "Thêm số điện thoại khác",
//               style: context.bodyMedium?.bold.primary,
//             )
//           ],
//         ),
//       );
// }
