// part of 'update_profile_cubit.dart';
//
// @immutable
// class UpdateProfileState {
//   final ProfileUserModel? profileUserModel;
//   final SettingUserGender? settingUserGender;
//   final SettingUserPrivacy? privacyBirthday ;
//   final SettingUserPrivacy? privacyGender ;
//   final List<String?>? phoneNumbers;
//   final UserNameModel? userNameModel;
//   final UserInfoModel? userInfoModel;
//   final int? codeError;
//   final bool? isSave;
//   final bool isTicked;
//   final Failure? failure;
//
//   const UpdateProfileState({
//     this.profileUserModel,
//     this.settingUserGender,
//     this.privacyBirthday,
//     this.privacyGender,
//     this.userNameModel,
//     this.codeError,
//     this.isSave,
//     this.isTicked = false,
//     this.phoneNumbers,
//     this.userInfoModel,
//     this.failure,
//   });
//
//   int get isWork => isTicked == true
//       ? StatusWorkingGraduated.ticked.value
//       : StatusWorkingGraduated.notTicked.value;
//
//   UpdateProfileState copyWith({
//     ProfileUserModel? profileUserModel,
//     SettingUserGender? settingUserGender,
//     SettingUserPrivacy? privacyBirthday,
//     SettingUserPrivacy? privacyGender,
//     List<String?>? phoneNumbers,
//     UserNameModel? userNameModel,
//     int? codeError,
//     bool? isSave = false,
//     bool? isTicked,
//     UserInfoModel? userInfoModel,
//     Failure? failure
//   }) {
//     return UpdateProfileState(
//       profileUserModel: profileUserModel ?? this.profileUserModel,
//       settingUserGender: settingUserGender ?? this.settingUserGender,
//       privacyBirthday: privacyBirthday ?? this.privacyBirthday,
//       privacyGender: privacyGender ?? this.privacyGender,
//       userNameModel: userNameModel ?? this.userNameModel,
//       userInfoModel: userInfoModel ?? this.userInfoModel,
//       codeError: codeError ?? this.codeError,
//       isSave: isSave ?? this.isSave,
//       isTicked: isTicked ?? this.isTicked,
//       phoneNumbers: phoneNumbers ?? this.phoneNumbers,
//       failure: failure
//     );
//   }
// }
