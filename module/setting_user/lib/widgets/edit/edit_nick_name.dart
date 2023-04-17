// import 'package:flutter/material.dart';
// import 'package:theme/material3/color/color_schemes.dart';
// import 'package:theme/material3/widget/common_widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../core/data/profile_user_model.dart';
// import '../../core/lang/generate/halo_localizations.dart';
// import '../../cubits/update_profile_cubit.dart';
// import '../common/button_cancel_save.dart';
// import '../input_form_field/halo_form_field.dart';
// import '../input_form_field/halo_validator.dart';
//
// class EditNickName extends StatefulWidget {
//   final String? nickNameSaved;
//   const EditNickName({Key? key, this.nickNameSaved}) : super(key: key);
//
//   @override
//   State<EditNickName> createState() => _EditNickNameState();
// }
//
// class _EditNickNameState extends State<EditNickName> {
//   final TextEditingController _controller = TextEditingController();
//   UpdateProfileCubit get bloc => BlocProvider.of(context);
//
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       _controller.text = widget.nickNameSaved ?? "";
//       bloc.stream.listen((state) {
//         if (_controller.text != "") {
//           Navigator.pop(context, _controller.text);
//         }
//
//       });
//     });
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(Str.of(context).setting_user_edit_profile_nick_name),
//         leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: const Icon(Icons.arrow_back_ios),
//         ),
//         elevation: 1,
//         shadowColor: context.colorScheme.shadow,
//       ),
//       backgroundColor: context.surfaceColor,
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             HaloTextFormField(
//               labelText: Str.of(context).setting_user_edit_profile_label_nick_name,
//               controller: _controller,
//             ),
//             HaloSpacing.normal,
//             ButtonCancelSave(
//               onPressedCancel: () => Navigator.pop(context),
//               onPressedSave: () {
//                 bloc.updateProfile(
//                     profileUserModel: ProfileUserModel(
//                         otherName: _controller.text
//                     )
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
