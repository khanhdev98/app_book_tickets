// import 'package:flutter/material.dart';
// import 'package:setting_user/core/data/profile_user_model.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../core/enums/act_update.dart';
// import '../cubits/update_profile_cubit.dart';
// import 'common/button_cancel_save.dart';
// import 'common/scaffold_setting_user.dart';
// import 'input_form_field/halo_form_field.dart';
//
// class IntroduceYourself extends StatefulWidget {
//   const IntroduceYourself({Key? key}) : super(key: key);
//
//   @override
//   State<IntroduceYourself> createState() => _IntroduceYourselfState();
// }
//
// class _IntroduceYourselfState extends State<IntroduceYourself> {
//   final TextEditingController _controller = TextEditingController();
//
//   UpdateProfileCubit get _updateProfileCubit => context.read<UpdateProfileCubit>();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return ScaffoldSettingUser(
//       titleAppbar: "Giới thiệu",
//       child: BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
//         bloc: _updateProfileCubit,
//         listener: (context, state) {
//           if (state.isSave == true) {
//             const int timeDelay = 500;
//             Future.delayed(const Duration(milliseconds: timeDelay))
//                 .then((value) => Navigator.pop(context));
//           }
//         },
//         builder: (context, state) {
//           return Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 HaloTextFormField(
//                   labelText: "Nhập mô tả về bản thân",
//                   controller: _controller,
//                   // autoValidateMode: AutovalidateMode.onUserInteraction,
//                   // validator: (value) {
//                   //   if (value == null || value.isEmpty) {
//                   //     return "Mô tả là bắt buộc";
//                   //   }
//                   //   return null;
//                   // },
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
//   void _onSave() {
//     if (_formKey.currentState!.validate() == true) {
//       _updateProfileCubit.updateProfile(
//           profileUserModel: ProfileUserModel(
//         act: ActUpdate.updateInfoContact.value,
//         introduce: _controller.text,
//       ));
//     }
//   }
// }
