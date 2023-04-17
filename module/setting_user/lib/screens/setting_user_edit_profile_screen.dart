// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_core/core.dart';
// import 'package:setting_user/core/data/profile_user_model.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
// import 'package:widget/common/dialog/halo_dialog.dart';
// import '../../di/routers.dart';
// import '../../widgets/edit_profile/card_info.dart';
// import '../../widgets/edit_profile/model/card_info_v2.dart';
// import '../core/data/user_name_model.dart';
// import '../core/enums/act_update.dart';
// import '../core/lang/generate/halo_localizations.dart';
// import '../core/until/common_transform.dart';
// import '../core/until/edit_profile_until.dart';
// import '../cubits/update_profile_cubit.dart';
// import '../resource/gen/assets.gen.dart';
// import '../widgets/common/edit_profile_error_page.dart';
//
// class SettingUserEditProfileScreen extends StatefulWidget {
//   const SettingUserEditProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SettingUserEditProfileScreen> createState() => _SettingUserEditProfileScreenState();
// }
//
// class _SettingUserEditProfileScreenState extends State<SettingUserEditProfileScreen> {
//   UpdateProfileCubit get bloc => context.read<UpdateProfileCubit>();
//
//   @override
//   void initState() {
//
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       bloc.getUserProfile();
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(Str.of(context).setting_user_edit_profile_appbar_title),
//         leading: IconButton(
//           onPressed: () => Navigator.of(context).pop(),
//           icon: HaloIcons.close,
//         ),
//         elevation: 1,
//         shadowColor: context.colorScheme.shadow,
//       ),
//       body: SingleChildScrollView(
//         child: BlocBuilder<UpdateProfileCubit, UpdateProfileState>(buildWhen: (previous, current) {
//           if (current.failure != null) {
//             checkFailureEditProfile(current.failure, context);
//           }
//           return previous != current;
//         }, builder: (context, state) {
//           if (state.codeError == 2004) {
//           double appBarHeight = AppBar().preferredSize.height;
//             return EditProfileErrorPage(appBarHeight: appBarHeight);
//           }
//           return Column(
//             children: [
//               _personalDetail(context, state),
//               HaloSpacing.normal,
//               _infoContact(context, state),
//               HaloSpacing.normal,
//               _place(context, state),
//               HaloSpacing.normal,
//               _education(context, state),
//               HaloSpacing.normal,
//               _jobs(context, state),
//             ],
//           );
//         }),
//       ),
//     );
//   }
//
//   Widget _personalDetail(BuildContext context, UpdateProfileState state) {
//     return CardInfoItem(
//       cardInfo: CardInformation(
//           title: Text(Str.of(context).setting_user_edit_profile_personal_detail),
//           information: [
//             Information(
//               title: Str.of(context).setting_user_edit_profile_full_name,
//               content: state.userInfoModel?.name,
//               onAddOrEdit: () {
//                 Navigator.pushNamed(context, SettingUserRouters.editFullName,
//                     arguments: UserNameModel(
//                       firstname: state.userInfoModel?.firstName,
//                       lastname: state.userInfoModel?.lastName,
//                       middlename: state.userInfoModel?.middleName,
//                     )).then((value) {
//                       _getInfoUser(value);
//                 });
//               },
//             ),
//             Information(
//               title: Str.of(context).setting_user_edit_profile_nick_name,
//               content: state.userInfoModel?.about?.otherName,
//               onAddOrEdit: () {
//                 Navigator.pushNamed(context, SettingUserRouters.editNickName, arguments: state.userInfoModel?.about?.otherName
//                 ).then((value) {
//                   _getInfoUser(value);
//                 });
//               },
//             ),
//             Information(
//               title: Str.of(context).setting_user_edit_profile_introduce,
//               content: state.userInfoModel?.about?.introduce,
//               onAddOrEdit: () {
//                 Navigator.pushNamed(context, SettingUserRouters.introduce).then((value) {
//                   bloc.getUserProfile();
//                 });
//               },
//             ),
//             Information(
//               title: Str.of(context).setting_user_edit_profile_gender,
//               content: CommonTransForm.I.getGender(state.userInfoModel?.about?.gender?.type),
//               onAddOrEdit: () => goToEditYourDetails(state),
//             ),
//             Information(
//               title: Str.of(context).setting_user_edit_profile_birthday,
//               content: state.userInfoModel?.about?.birthday?.date.toDDMMYYYY(),
//               onAddOrEdit: () => goToEditYourDetails(state),
//             ),
//             Information(
//               title: Str.of(context).setting_user_edit_profile_favorite_quotes,
//               content: state.profileUserModel?.quote ?? state.userInfoModel?.about?.quote,
//               onAddOrEdit: () {
//                 Navigator.pushNamed(context, SettingUserRouters.editFavoriteQuotes, arguments: state.profileUserModel?.quote ?? state.userInfoModel?.about?.quote
//                 ).then((value) {
//                   if (value?.toString().isNotNullOrEmpty() == true) {
//                     bloc.emit(state.copyWith(
//                         profileUserModel: ProfileUserModel(
//                             quote:value.toString()
//                         )
//                     ));
//                   }
//                 });
//               },
//             ),
//           ]),
//     );
//   }
//
//   void _getInfoUser(Object? value) {
//     if (value?.toString().isNotNullOrEmpty() == true) {
//       bloc.getUserProfile();
//     }
//   }
//
//   Future<void> goToEditYourDetails(UpdateProfileState state) {
//     return Navigator.pushNamed(
//       context,
//       SettingUserRouters.editYourDetails,
//       arguments: ProfileUserModel(
//         gender: Gender(
//           type: state.userInfoModel?.about?.gender?.type,
//           scope: state.userInfoModel?.about?.gender?.scope
//         ),
//         birthday: Birthday(
//           date: state.userInfoModel?.about?.birthday?.date?.toString(),
//           scope: state.userInfoModel?.about?.birthday?.scope
//         ),
//       ),
//     ).then((value) {
//       bloc.getUserProfile();
//     });
//   }
//
//   Widget _infoContact(BuildContext context, UpdateProfileState state) {
//     List<InfoUserEdit> infoPhone = state.userInfoModel?.about?.phone?.map((value) {
//           return InfoUserEdit(
//               content: value,
//               onEdit: () {
//                 /// todo:
//               });
//         }).toList() ??
//         [];
//
//     return CardInfoItem(
//       cardInfo: CardInformation(
//           title: Text(Str.of(context).setting_user_edit_profile_contact),
//           information: [
//             Information(
//               title: Str.of(context).setting_user_edit_profile_email,
//               checkBoxValue: true,
//               onChangeCheckBox: (val) {},
//               content: state.userInfoModel?.about?.email,
//               isMail: true,
//               onAddOrEdit: () => _goToEditContactInfo(state)
//             ),
//             Information(
//               title: Str.of(context).setting_user_edit_profile_cell_phone,
//               content: state.userInfoModel?.about?.mainPhone,
//               checkBoxValue: true,
//               onChangeCheckBox: (val) {},
//               onAddOrEdit: () {
//                 Navigator.pushNamed(context, SettingUserRouters.editContactInfo).then((value) {
//                   bloc.getUserProfile();
//                 });
//               },
//             ),
//             ...infoPhone,
//             InfoUserTag(
//               title: Str.of(context).setting_user_edit_profile_phone,
//               onAdd: () {
//                 _goToEditContactInfo(state);
//               },
//             ),
//             Information(
//               title: Str.of(context).setting_user_edit_profile_address,
//               content: state.userInfoModel?.about?.address?.address,
//               checkBoxValue: true,
//               onChangeCheckBox: (val) {},
//               onAddOrEdit: () {
//                 _goToEditContactInfo(state);
//               },
//             ),
//           ]),
//     );
//   }
//   Future<void> _goToEditContactInfo(UpdateProfileState state) {
//     return Navigator.pushNamed(context, SettingUserRouters.editContactInfo,
//         arguments: ProfileUserModel(
//           mainPhone: state.userInfoModel?.about?.mainPhone,
//           phone: state.userInfoModel?.about?.phone,
//         )).then((value) {
//       bloc.getUserProfile();
//     });
//   }
//
//   Widget _place(BuildContext context, UpdateProfileState state) {
//     return CardInfoItem(
//       cardInfo: CardInformation(
//           title: Text(Str.of(context).setting_user_edit_profile_place_title),
//           information: [
//             Information(
//               title: Str.of(context).setting_user_edit_profile_place_current_place,
//               content: CommonTransForm.I
//                   .getEducationOrWork(state.userInfoModel?.about?.works)
//                   ?.currentCity
//                   ?.address,
//               checkBoxValue: true,
//               onChangeCheckBox: (val) {},
//               onAddOrEdit: () {},
//             ),
//             Information(
//               title: Str.of(context).setting_user_edit_profile_place_home_town,
//               content: CommonTransForm.I
//                   .getEducationOrWork(state.userInfoModel?.about?.works)
//                   ?.hometown
//                   ?.address,
//               checkBoxValue: true,
//               onChangeCheckBox: (val) {},
//               onAddOrEdit: () {
//                 bloc.getUserProfile();
//               },
//             ),
//           ]),
//     );
//   }
//
//   Widget _education(BuildContext context, UpdateProfileState state) {
//     List<InfoUserEdit>? infoEducation = state.userInfoModel?.about?.works?.map((value) {
//           return InfoUserEdit(
//               content: value.type == 1 || value.type == 2 ? value.name : null,
//               resumeType: CommonTransForm.I.getResumeType(value),
//               onEdit: () {
//                 /// todo:
//               });
//         }).toList() ??
//         [];
//
//     return CardInfoItem(
//       cardInfo: CardInformation(
//         title: Text(Str.of(context).setting_user_edit_profile_education),
//         information: [
//           ...infoEducation,
//           InfoUserTag(
//               title: Str.of(context).setting_user_edit_profile_university,
//               onAdd: () {
//                 Navigator.pushNamed(context, SettingUserRouters.university).then((value) {
//                   bloc.getUserProfile();
//                 });
//               }),
//           InfoUserTag(
//               title: Str.of(context).setting_user_edit_profile_high_school,
//               onAdd: () {
//                 Navigator.pushNamed(context, SettingUserRouters.highSchool).then((value) {
//                   bloc.getUserProfile();
//                 });
//               }),
//         ],
//       ),
//     );
//   }
//
//   Widget _jobs(BuildContext context, UpdateProfileState state) {
//     List<InfoUserEdit> infoWork = state.userInfoModel?.about?.works
//             ?.map((value) => InfoUserEdit(
//                 content: value.type == 0 ? value.position : null,
//                 resumeType: CommonTransForm.I.getResumeType(value),
//                 onEdit: () {}))
//             .toList() ??
//         [];
//     return CardInfoItem(
//       cardInfo: CardInformation(
//         title: Row(
//           children: [
//             Expanded(child: Text(Str.of(context).setting_user_edit_profile_jobs)),
//             TextButton(
//               onPressed: () {},
//               child: Text(Str.of(context).setting_uer_add),
//             )
//           ],
//         ),
//         information: [...infoWork],
//       ),
//     );
//   }
//
// }
