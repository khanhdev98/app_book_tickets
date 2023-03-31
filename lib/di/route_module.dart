import 'package:flutter/material.dart';

abstract class RouterModule {
  abstract List<String> routers;

  Route<dynamic>? generateRoute(RouteSettings settings);
}