// import 'package:flutter_core/core.dart';
// import 'package:setting_user/di/inject.config.dart';
// import 'package:injectable/injectable.dart';
//
// class SettingUserInjectionModule extends InjectionModule {
//   SettingUserInjectionModule._();
//
//   static final SettingUserInjectionModule _instance =
//       SettingUserInjectionModule._();
//
//   static SettingUserInjectionModule get I => _instance;
//
//   @override
//   Future<void> dependencies({
//     required Injector injector,
//     required Env env,
//   }) async {
//     configureDependencies();
//   }
// }
//
// @InjectableInit(
//   initializerName: 'init', // default
//   preferRelativeImports: true, // default
//   asExtension: true, // default
// )
// void configureDependencies() => AppInjector.I.instance.init();
