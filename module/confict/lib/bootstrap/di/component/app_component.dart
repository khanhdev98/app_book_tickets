import 'dart:async';

import '../../env/env.dart';
import '../injectable/app_injector.dart';
import '../module/inject_module.dart';

/// This is just a wrapper class that iterate throught the injection modules
/// and add each dependency into the injection container.
class AppInjectionComponent {
  AppInjectionComponent._();

  static final AppInjectionComponent _instance = AppInjectionComponent._();

  factory AppInjectionComponent() => _instance;

  Future<void> registerModules({required List<InjectionModule> modules}) async {
    for (final module in modules) {
      await module.dependencies(
        injector: AppInjector.I,
        env: AppInjector.I.get<Env>(),
      );
    }
  }
}
