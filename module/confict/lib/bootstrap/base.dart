import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app_cache/cache.dart';
import 'device.dart';
import 'di/injectable/app_injector.dart';
import 'di/module/inject_module.dart';
import 'di/module/reslover.dart';
import 'di/module/router_module.dart';
import 'env/env.dart';

abstract class FeatureBootStrap {}

abstract class BaseBootStrap {
  List<InjectionModule> injectionModules();

  List<Resolver> featureResolvers();

  Widget application();

  /// ==============================================================================================
  final List<LocalizationsDelegate> localizationDelegates = [];

  final List<RouterModule> routerModules = [];

  final List<String> routes = [];

  /// ==============================================================================================
  ///
  Future run(
      Env env, {
        bool isEncrypt = false,
        String? defaultLocale,
      }) async {
    env.extras.addAll({'isEncript' : isEncrypt.toString()});

    /// First init env file
    WidgetsFlutterBinding.ensureInitialized();

    /// First init env file
    /// This method will read the .env file and configuration all application keys that the application needs.
    /// For case exception when initialization => throw exceptions
    await DeviceInfo.I.invoke();

    /// First init env file
    await AppInjector.I.reset(dispose: true);

    /// First init env file
    // if (!AppInjector.I.isRegistered<Logger>()) {
    //   Debug().logger.also((self) {
    //     AppInjector.I.helper.singleton<Logger>(self);
    //   });
    //
    // }

    /// First init env file
    // if (!AppInjector.I.isRegistered<Cache>()) {
    //   await AppInjector.I.helper.singletonAsync<Cache>(
    //         () => isEncrypt ? CacheEncrypt.invoke() : CacheNoneEncrypt.invoke(),
    //     preResolve: true,
    //   );
    // }

    /// Nếu là trong môi trường dev thì appInstalled sẽ được set trong env
    if(env.isFlavorDev) {
      await AppInjector.I.get<Cache>().writeBool(
        'appInstalled',
        env.appInstalled,
      );
    }

    /// Register DateTimeFormatter
    // if (!AppInjector.I.isRegistered<DateTimeFormatter>()) {
    //   AppInjector.I.helper.factory<DateTimeFormatter>(() => DateTimeFormatter());
    // }

    /// First init env file
    if (!AppInjector.I.isRegistered<Env>()) {
      AppInjector.I.helper.singleton<Env>(env);
    }

    /// First init env file
    Intl.defaultLocale = defaultLocale ?? AppInjector.I.get<Env>().defaultLocale;

    /// First init env file




    for (var injectModule in injectionModules()) {
      await injectModule.let((self) {
        return self.dependencies(
          env: AppInjector.I.get<Env>(),
          injector: AppInjector.I,
        );
      });
    }

    /// First init env file
    for (var resolver in featureResolvers()) {
      resolver
        ..localeDelegate?.also((self) {
          localizationDelegates.add(self);
        })
        ..routerModule?.also((self) {
          routerModules.add(self);
          routes.addAll(self.routers);
        });

      /// register dependencies
      await resolver.injectModule.let((self) {
        return self.dependencies(
          env: AppInjector.I.get<Env>(),
          injector: AppInjector.I,
        );
      });
    }
    runZoned(() => runApp(application()));
  }
}
