// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_core/core.dart';
// import 'package:setting_user/core/data/user_name_model.dart';
// import 'package:theme/material3/color/color_schemes.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
// import 'package:theme/material3/widget/common_widgets.dart';
// import 'package:widget/common/dialog/halo_dialog.dart';
// import 'package:widget/export.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../core/lang/generate/halo_localizations.dart';
// import '../../core/until/edit_profile_until.dart';
// import '../../cubits/update_profile_cubit.dart';
// import '../common/button_cancel_save.dart';
// import '../input_form_field/halo_form_field.dart';
// import '../input_form_field/halo_validator.dart';
//
// class EditFullName extends StatefulWidget {
//   final UserNameModel? userNameModel;
//   const EditFullName({Key? key, this.userNameModel}) : super(key: key);
//
//   @override
//   State<EditFullName> createState() => _EditFullNameState();
// }
//
// class _EditFullNameState extends State<EditFullName> {
//
//   final TextEditingController _controllerFirstName = TextEditingController();
//   final TextEditingController _controllerMiddleName = TextEditingController();
//   final TextEditingController _controllerLastName = TextEditingController();
//   final TextEditingController _controllerPass = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//   bool isShowPass = false;
//
//   UpdateProfileCubit get bloc => BlocProvider.of(context);
//
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       UserNameModel? result = widget.userNameModel;
//       // set text
//       _controllerFirstName.text = result?.firstname ?? "";
//       _controllerMiddleName.text = result?.middlename ?? "";
//       _controllerLastName.text = result?.lastname ?? "";
//
//       bloc.stream.listen((state) {
//         if (state.failure != null) {
//           checkFailureEditProfile(state.failure, context);
//         }else if (state.codeError == 4011) {
//             HaloDialog.showDialog(context,
//                 content: Text(Str.of(context).setting_user_field_pass_invalid),
//                 title: Str.of(context).setting_user_title_error,
//                 actionPress: () {
//                   Navigator.pop(context);
//                 },
//                 barrierDismissible: false
//             );
//         } else {
//           Navigator.pop(context, result?.copyWith(
//             firstname: _controllerFirstName.text,
//             lastname: _controllerLastName.text,
//             middlename: _controllerMiddleName.text,
//             password: _controllerPass.text,
//           ));
//         }
//       });
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(Str.of(context).setting_user_edit_profile_edit_name_appbar),
//         leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: const Icon(Icons.arrow_back_ios),
//         ),
//         elevation: 1,
//         shadowColor: context.colorScheme.shadow,
//       ),
//       backgroundColor: context.surfaceColor,
//       body: Padding(
//         padding: HaloPadding.all,
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 HaloTextFormField(
//                   labelText: Str.of(context).setting_user_first_name,
//                   controller: _controllerFirstName,
//                 ),
//                 HaloSpacing.normal,
//                 HaloTextFormField(
//                   labelText: Str.of(context).setting_user_middle_name,
//                   controller: _controllerMiddleName,
//                 ),
//                 HaloSpacing.normal,
//                 HaloTextFormField(
//                   labelText: Str
//                       .of(context)
//                       .setting_user_last_name,
//                   controller: _controllerLastName,),
//                 HaloSpacing.normal,
//                 HaloTextFormField(
//                   labelText: Str
//                       .of(context)
//                       .setting_user_pass,
//                   controller: _controllerPass,
//                   obscureText: !isShowPass,
//                   suffixIcon: InkWell(
//                       onTap: () {
//                         setState(() {
//                           isShowPass = !isShowPass;
//                         });
//                       },
//                       child: isShowPass ? HaloIcons.visibility : HaloIcons.visibilityOff,
//                   ),
//                 ),
//
//                 HaloSpacing.normal,
//                 ButtonCancelSave(
//                   onPressedCancel: () => Navigator.pop(context),
//                   onPressedSave: () {
//                     bloc.updateUserName(
//                         userNameModel: UserNameModel(
//                           firstname: _controllerFirstName.text,
//                           middlename: _controllerMiddleName.text,
//                           lastname: _controllerLastName.text,
//                           password: StringUtils.md5(_controllerPass.text),
//                         )
//                     );
//                   },
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
