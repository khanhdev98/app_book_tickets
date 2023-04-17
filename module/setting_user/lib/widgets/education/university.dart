// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:setting_user/core/extensions/ext_int_to_bool.dart';
// import 'package:setting_user/core/extensions/ext_string_to_privacy.dart';
// import '../../core/data/profile_user_model.dart';
// import '../../core/enums/act_update.dart';
// import '../../core/enums/setting_privacy.dart';
// import '../../core/enums/type_information.dart';
// import '../../cubits/update_profile_cubit.dart';
// import '../common/education.dart';
//
// class University extends StatefulWidget {
//   final ProfileUserModel? profileUserModel;
//
//   const University({Key? key, this.profileUserModel}) : super(key: key);
//
//   @override
//   State<University> createState() => _UniversityState();
// }
//
// class _UniversityState extends State<University> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   final TextEditingController _nameSchoolController = TextEditingController();
//   final TextEditingController _provinceCityController = TextEditingController();
//   final TextEditingController _dateStartController = TextEditingController();
//   final TextEditingController _dateEndController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//
//   UpdateProfileCubit get _updateProfileCubit => BlocProvider.of(context);
//   @override
//   void initState() {
//     if (widget.profileUserModel?.work?.type == TypeInformation.college.value) {
//       _nameSchoolController.text = widget.profileUserModel?.work?.name ?? "";
//       _provinceCityController.text = widget.profileUserModel?.work?.address ?? "";
//       _dateStartController.text = widget.profileUserModel?.work?.from ?? "";
//       _dateEndController.text = widget.profileUserModel?.work?.to ?? "";
//       _descriptionController.text =
//           widget.profileUserModel?.work?.description ?? "";
//       _updateProfileCubit.selectedPrivacy(privacyGender: widget.profileUserModel?.work?.scope.toPrivacy);
//       _updateProfileCubit.checkTicked(widget.profileUserModel!.work!.isWork!.isCheck);
//     }
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
//       listener: (context, state) {
//         if (state.isSave == true) {
//           const int timeDelay = 500;
//           Future.delayed(const Duration(milliseconds: timeDelay))
//               .then((value) => Navigator.pop(context));
//         }
//       },
//       builder: (context, state) {
//         return Form(
//           key: _formKey,
//           child: EducationOrWork(
//             titleAppBar: "Trường đại học",
//             labelNameSchool: "Tên trường đại học",
//             nameSchoolCompanyController: _nameSchoolController,
//             provinceCityController: _provinceCityController,
//             dateStartController: _dateStartController,
//             dateEndController: _dateEndController,
//             descriptionController: _descriptionController,
//             settingUserPrivacy: _updateProfileCubit.state.privacyGender,
//             privacyCallBack: (p0) =>
//                 _updateProfileCubit.selectedPrivacy(privacyGender: p0),
//             valueCheckbox: _updateProfileCubit.state.isTicked,
//             onChangedCheckbox: (value) =>
//                 _updateProfileCubit.checkTicked(value!),
//             onPressedCancel: () => Navigator.pop(context),
//             onPressedSave: () {
//               if (_formKey.currentState!.validate() == true) {
//                 _updateProfileCubit.updateProfile(
//                   profileUserModel: ProfileUserModel(
//                     act: ActUpdate.updateWorkEducation.value,
//                     work: Work(
//                       name: _nameSchoolController.text,
//                       address: _provinceCityController.text,
//                       scope: _updateProfileCubit.state.privacyGender?.value,
//                       type: TypeInformation.college.value,
//                       isWork: _updateProfileCubit.state.isWork,
//                       description: _descriptionController.text,
//                       from: _dateStartController.text.replaceAll("/", "-"),
//                       to: _dateEndController.text.replaceAll("/", "-"),
//                     ),
//                   ),
//                 );
//               }
//             },
//           ),
//         );
//       },
//     );
//   }
// }
