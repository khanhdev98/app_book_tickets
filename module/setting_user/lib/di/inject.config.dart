// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// // **************************************************************************
// // InjectableConfigGenerator
// // **************************************************************************
//
// // ignore_for_file: no_leading_underscores_for_library_prefixes
// import 'package:get_it/get_it.dart' as _i1;
// import 'package:injectable/injectable.dart' as _i2;
// import 'package:modules_share/core/app_info_provider.dart' as _i7;
// import 'package:setting_user/core/repository/setting_user_repo_imp.dart' as _i5;
// import 'package:setting_user/core/services/setting_user_datasource.dart' as _i3;
// import 'package:setting_user/core/setting_user_repo.dart' as _i4;
// import 'package:setting_user/cubits/update_profile_cubit.dart'
//     as _i6; // ignore_for_file: unnecessary_lambdas
//
// // ignore_for_file: lines_longer_than_80_chars
// extension GetItInjectableX on _i1.GetIt {
//   // initializes the registration of main-scope dependencies inside of GetIt
//   _i1.GetIt init({
//     String? environment,
//     _i2.EnvironmentFilter? environmentFilter,
//   }) {
//     final gh = _i2.GetItHelper(
//       this,
//       environment,
//       environmentFilter,
//     );
//     gh.factory<_i3.SettingUserDataSource>(
//         () => _i3.SettingUserDataSource.create());
//     gh.singleton<_i4.SettingUserRepository>(
//         _i5.SettingUserRepoImp(gh<_i3.SettingUserDataSource>()));
//     gh.factory<_i6.UpdateProfileCubit>(() => _i6.UpdateProfileCubit(
//           gh<_i4.SettingUserRepository>(),
//           gh<_i7.ApplicationInfoProvider>(),
//         ));
//     return this;
//   }
// }
