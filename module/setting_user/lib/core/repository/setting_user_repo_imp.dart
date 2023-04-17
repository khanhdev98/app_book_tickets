// import 'dart:async';
//
// import 'package:flutter_core/core.dart';
// import 'package:injectable/injectable.dart';
// import 'package:setting_user/core/services/setting_user_datasource.dart';
//
// import '../data/profile_user_model.dart';
// import '../data/user_info_model.dart';
// import '../data/user_name_model.dart';
// import '../setting_user_repo.dart';
//
//
// @Singleton(as: SettingUserRepository)
// class SettingUserRepoImp extends SettingUserRepository {
//   final SettingUserDataSource _settingUserRepo;
//
//   SettingUserRepoImp(
//     this._settingUserRepo,
//   );
//
//   @override
//   Future<MongoResponse<ProfileUserModel?>> updateProfileUser(
//       {ProfileUserModel? param}) {
//     return runWithCatch(
//       () => _settingUserRepo.updateProfileUser(param: param),
//     );
//   }
//
//   @override
//   Future<MongoResponse<UserNameModel?>> updateUserName({UserNameModel? param}) {
//     return runWithCatch(
//           () => _settingUserRepo.updateUserName(param: param),
//     );
//   }
//
//   @override
//   Future<MongoResponse<UserInfoModel?>> getProfileUser({num? detail, String? u}) {
//     return runWithCatch(
//           () => _settingUserRepo.getProfileUser(detail: detail, u: u),
//     );
//   }
// }
