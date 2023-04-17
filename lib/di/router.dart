import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/di/route_module.dart';
import 'package:untitled2/presentation/auth/sign_in/login_page.dart';
import 'package:untitled2/presentation/tickets/bloc/tickets_tab_bloc.dart';
import 'package:untitled2/presentation/tickets/screen/bottom_bar.dart';
import 'package:untitled2/presentation/tickets/screen/home_screen.dart';
import 'package:untitled2/presentation/tickets/screen/profile_screen.dart';
import 'package:untitled2/presentation/tickets/screen/search_screen.dart';
import 'package:widget/page_route/pop_scope_dismiss_route.dart';

import '../presentation/tickets/screen/tickets_tab_page.dart';
// import 'package:widget/setting/setting_dashboard.dart';

class AppRouters implements RouterModule {
  AppRouters._();

  static final AppRouters _instance = AppRouters._();

  factory AppRouters() => _instance;

  static const String home = '/home';
  static const String login = '/login';
  static const String tabHome = '/tabHome';
  static const String tabSearch = '/tabSearch';
  static const String tabTicket = '/tabTicket';
  static const String tabProfile = '/tabProfile';
  static const String tabSetting = '/tabSetting';

  @override
  List<String> routers = [home, tabHome, tabSearch, tabTicket, tabProfile, tabSetting];

  @override
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return popScopeDismissRoute(
          settings: settings,
          child: () {
            return BlocProvider<TicketsTabBloc>(
              create: (_) => TicketsTabBloc(),
              child: const BottomBar(),
            );
          },
        );
      case login:
        return popScopeDismissRoute(
          settings: settings,
          child: () {
            return const LoginPage();
          },
        );
      case tabHome:
        return popScopeDismissRoute(
          settings: settings,
          child: () {
            return const HomeScreen();
          },
        );
      case tabSearch:
        return popScopeDismissRoute(
          settings: settings,
          child: () {
            return const SearchScreen();
          },
        );
      case tabTicket:
        return popScopeDismissRoute(
          settings: settings,
          child: () {
            return const TicketTabPage();
          },
        );
      case tabProfile:
        return popScopeDismissRoute(
          settings: settings,
          child: () {
            return const ProfileScreen();
          },
        );
      case tabSetting:
        return popScopeDismissRoute(
          settings: settings,
          child: () {
            return Container();
          },
        );
    }
    return null;
  }
}
