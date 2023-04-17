import 'package:flutter_core/core.dart';

import 'data/profile_user_model.dart';
import 'data/user_info_model.dart';
import 'data/user_name_model.dart';



abstract class SettingUserRepository {
  Future<MongoResponse<ProfileUserModel?>> updateProfileUser({
    ProfileUserModel? param,
  });

  Future<MongoResponse<UserNameModel?>> updateUserName({
    UserNameModel? param,
  });

  Future<MongoResponse<UserInfoModel?>> getProfileUser({
  num? detail,
  String? u
});
}
