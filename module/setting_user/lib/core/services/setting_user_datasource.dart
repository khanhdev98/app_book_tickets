// import 'package:dio/dio.dart';
// import 'package:flutter_core/core.dart';
// import 'package:injectable/injectable.dart';
// import 'package:retrofit/http.dart';
// import 'package:modules_share/share_module.dart';
// import '../data/user_info_model.dart';
// import '../data/profile_user_model.dart';
// import '../data/user_name_model.dart';
//
//
//
// part 'setting_user_datasource.g.dart';
//
//
// @RestApi()
// @injectable
// abstract class SettingUserDataSource {
//   factory SettingUserDataSource(Dio dio) = _SettingUserDataSource;
//
//   @factoryMethod
//   factory SettingUserDataSource.create() {
//     return SettingUserDataSource(AppInjector.I.get<AppClient>().getOtaClient());
//   }
//
//
//   @POST("usr/users/socUsrProfUpd/v2")
//   Future<MongoEntity<ProfileUserModel?>> updateProfileUser(
//       {@Body(nullToAbsent: true) ProfileUserModel? param});
//   @POST("usr/sets/usrSets/v1")
//   Future<MongoEntity<UserNameModel?>> updateUserName(
//       {@Body(nullToAbsent: true) UserNameModel? param});
//   @GET("esSoc/usr/socUsrInf/v1")
//   Future<MongoEntity<UserInfoModel?>> getProfileUser({
//     @Query('detail') num? detail,
//     @Query('u') String? u,
// });
// }
