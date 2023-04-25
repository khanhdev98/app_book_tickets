import 'package:flutter/material.dart';

import 'inject_module.dart';
import 'router_module.dart';

/// Presentation layer for resolver
abstract class Resolver {
  InjectionModule get injectModule;

  RouterModule? get routerModule => null;

  LocalizationsDelegate? get localeDelegate => null;
}
