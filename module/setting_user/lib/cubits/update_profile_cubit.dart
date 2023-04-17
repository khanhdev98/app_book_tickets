// import 'package:bloc/bloc.dart';
// import 'package:flutter_core/core.dart';
//
// import 'package:meta/meta.dart';
// import 'package:modules_share/core/app_info_provider.dart';
// import 'package:widget/export.dart';
// import 'package:setting_user/core/data/user_name_model.dart';
// import 'package:widget/loading/easy_loading.dart';
//
// import '../core/data/profile_user_model.dart';
// import '../core/data/user_info_model.dart';
// import '../core/enums/setting_gender.dart';
// import '../core/enums/setting_privacy.dart';
// import '../core/enums/status_working_graduated.dart';
// import '../core/setting_user_repo.dart';
//
// part 'update_profile_state.dart';
//
// @Injectable()
// class UpdateProfileCubit extends Cubit<UpdateProfileState> {
//   UpdateProfileCubit(this.settingUserRepository, this.applicationInfoProvider)
//       : super(const UpdateProfileState());
//   final ApplicationInfoProvider applicationInfoProvider;
//   final SettingUserRepository settingUserRepository;
//
//   Future<void> getUserProfile() async {
//     EasyLoading.show();
//     final token = await applicationInfoProvider.getToken();
//     settingUserRepository
//         .getProfileUser(detail: 1,u: token['pn100'])
//         .then(
//           (value) => value.fold((failure) {
//             EasyLoading.dismiss();
//         emit(state.copyWith(
//           failure: failure,
//         ));
//       }, (response) {
//          EasyLoading.dismiss();
//         if (response.isSuccess) {
//           emit(state.copyWith(
//             userInfoModel: response.getElement,
//             isSave: true,
//           ));
//         } else {
//           emit(state.copyWith(
//             codeError: response.getStatus.code,
//           ));
//         }
//       }),
//     ).whenComplete(() => EasyLoading.dismiss());
//   }
//
//   Future<void> updateProfile({ProfileUserModel? profileUserModel}) async {
//     EasyLoading.show();
//     await settingUserRepository.updateProfileUser(param: profileUserModel).then(
//           (value) => value.fold(
//             (failure) {
//               EasyLoading.dismiss();
//               // emit(UpdateProfileFailure(failure: failure));
//             },
//             (response) {
//               EasyLoading.dismiss();
//               if (response.isSuccess) {
//                 emit(state.copyWith(
//                   profileUserModel: response.getElement,
//                   isSave: true,
//                 ));
//               } else {
//                 emit(state.copyWith(
//                   codeError: response.getStatus.code,
//                 ));
//               }
//             },
//           ),
//         ).whenComplete(() => EasyLoading.dismiss());
//   }
//
//   void selectedPrivacy(
//       {SettingUserPrivacy? privacyBirthday,
//       SettingUserPrivacy? privacyGender}) {
//     emit(state.copyWith(
//       privacyBirthday: privacyBirthday,
//       privacyGender: privacyGender,
//     ));
//   }
//   void checkTicked(bool isTicked) {
//     emit(state.copyWith(
//      isTicked: isTicked
//     ));
//   }
//
//   void selectedGender(SettingUserGender? gender) {
//     emit(state.copyWith(
//         settingUserGender: gender
//     ));
//   }
//
//   void addPhoneNumber(List<String?>? phoneNumbers) {
//     emit(state.copyWith(
//       phoneNumbers: phoneNumbers,
//     ));
//   }
//
//
//   void reset() {
//     emit(state.copyWith(
//       codeError: 0,
//     ));
//   }
//
//   void updateUserName({UserNameModel? userNameModel}) {
//     EasyLoading.show();
//     settingUserRepository
//         .updateUserName(
//         param: userNameModel)
//         .then(
//           (value) => value.fold((failure) {
//             EasyLoading.dismiss();
//             emit(state.copyWith(
//               failure: failure,
//             ));
//       }, (response) {
//             EasyLoading.dismiss();
//         if (response.isSuccess && response.getElementNotNulls.isNotEmpty) {
//           emit(state.copyWith(
//             userNameModel: response.getElement,
//             isSave: true,
//           ));
//         } else {
//           emit(state.copyWith(
//             codeError: response.getStatus.code,
//           ));
//         }
//       }),
//     ).whenComplete(() => EasyLoading.dismiss());
//   }
// }
