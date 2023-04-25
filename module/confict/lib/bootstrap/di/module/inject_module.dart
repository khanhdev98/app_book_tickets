import 'dart:async';

import '../../env/env.dart';
import '../injectable/injector.dart';
abstract class InjectionModule {
  Future<void> dependencies({
    required Injector injector,
    required Env env,
  });
}
