// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_core/core.dart';
// import 'package:flutter/material.dart';
// import 'package:setting_user/widgets/add/add_phone_number.dart';
// import 'package:setting_user/widgets/edit/edit_work.dart';
// import 'package:setting_user/widgets/education/high_school.dart';
// import 'package:setting_user/widgets/education/university.dart';
// import 'package:setting_user/widgets/introduce_yourself.dart';
// import '../core/data/profile_user_model.dart';
// import '../core/data/user_name_model.dart';
// import '../cubits/update_profile_cubit.dart';
// import '../widgets/edit/edit_contact_information.dart';
// import '../widgets/edit/edit_favorite_quotes.dart';
// import '../widgets/edit/edit_full_name.dart';
// import '../widgets/edit/edit_nick_name.dart';
// import '../widgets/edit/edit_your_details.dart';
// import '../cubits/update_profile_cubit.dart';
// import '../screens/setting_user_edit_profile_screen.dart';
//
// class SettingUserRouters extends RouterModule {
//   SettingUserRouters._();
//
//   static final SettingUserRouters _instance = SettingUserRouters._();
//
//   static SettingUserRouters get I => _instance;
//   static const String home = '/setting';
//   static const String editNickName = '/editNickName';
//   static const String editFullName = '/editFullName';
//   static const String editYourDetails  ='/editYourDetails';
//   static const String introduce  ='/introduce';
//   static const String editContactInfo  ='/editContactInfo';
//   static const String addNumberPhone  ='/addNumberPhone';
//   static const String highSchool  ='/highSchool';
//   static const String university  ='/university';
//   static const String editWork  ='/editWork';
//   static const String editFavoriteQuotes  ='/editFavoriteQuotes';
//
//
//   @override
//   List<String> routers = [
//     home,
//     editNickName,
//     editFullName,
//     editYourDetails,
//     introduce,
//     editContactInfo,
//     addNumberPhone,
//     highSchool,
//     university,
//     editWork,
//     editFavoriteQuotes
//   ];
//
//   @override
//   Route? generateRoute(RouteSettings settings) {
//     if (routers.contains(settings.name)) {
//       switch (settings.name) {
//         case home:
//           return materialPageRoute(
//               settings: settings,
//               builder: (_) => MultiBlocProvider(
//                     providers: [
//                       BlocProvider<UpdateProfileCubit>(
//                           create: (context) => AppInjector.I.get<UpdateProfileCubit>())
//                     ],
//                     child: const SettingUserEditProfileScreen(),
//                   ));
//         case editNickName:
//           final _arguments = settings.arguments as String?;
//           return materialPageRoute(
//               settings: settings,
//               builder: (_) => MultiBlocProvider(
//                 providers: [
//                   BlocProvider<UpdateProfileCubit>(
//                       create: (context) => AppInjector.I.get<UpdateProfileCubit>())
//                 ],
//                 child: EditNickName(
//                   nickNameSaved: _arguments,
//                 ),
//               ),
//               );
//         case editFullName:
//           final _arguments = settings.arguments as UserNameModel?;
//           return materialPageRoute(
//               settings: settings,
//               builder: (_) =>  MultiBlocProvider(
//                 providers: [
//                   BlocProvider<UpdateProfileCubit>(
//                       create: (context) => AppInjector.I.get<UpdateProfileCubit>())
//                 ],
//                 child: EditFullName(
//                   userNameModel: _arguments,
//                 ),
//               ));
//         case editYourDetails:
//           return materialPageRoute(
//             settings: settings,
//             builder: (_) => BlocProvider<UpdateProfileCubit>(
//               create: (context) => AppInjector.I.instance.get<UpdateProfileCubit>(),
//               child: EditYourDetails(profileUserModel: settings.arguments as ProfileUserModel?),
//             ),
//           );
//         case introduce:
//           return materialPageRoute(
//             settings: settings,
//             builder: (context) => BlocProvider<UpdateProfileCubit>(
//               create: (context) => AppInjector.I.instance.get<UpdateProfileCubit>(),
//               child: const IntroduceYourself(),
//             ),
//           );
//         case editContactInfo:
//           return materialPageRoute(
//             settings: settings,
//             builder: (context) => BlocProvider<UpdateProfileCubit>(
//               create: (context) => AppInjector.I.instance.get<UpdateProfileCubit>(),
//               child: EditContactInformation(profileUserModel: settings.arguments as ProfileUserModel?),
//             ),
//           );
//         case addNumberPhone:
//           return materialPageRoute(
//             settings: settings,
//             builder: (context) => const AddPhoneNumber(),
//           );
//         case highSchool:
//           return materialPageRoute(
//             settings: settings,
//             builder: (context) => BlocProvider<UpdateProfileCubit>(
//               create: (context) => AppInjector.I.instance.get<UpdateProfileCubit>(),
//               child: HighSchool(
//                   profileUserModel: settings.arguments as ProfileUserModel?,
//               ),
//             ),
//           );
//         case university:
//           return materialPageRoute(
//             settings: settings,
//             builder: (context) => BlocProvider<UpdateProfileCubit>(
//               create: (context) => AppInjector.I.instance.get<UpdateProfileCubit>(),
//               child: University(
//                 profileUserModel: settings.arguments as ProfileUserModel?,
//               ),
//             ),
//           );
//         case editWork:
//           return materialPageRoute(
//             settings: settings,
//             builder: (context) => BlocProvider<UpdateProfileCubit>(
//               create: (context) => AppInjector.I.instance.get<UpdateProfileCubit>(),
//               child: EditWork(
//                 profileUserModel: settings.arguments as ProfileUserModel?,
//               ),
//             ),
//           );
//         case editFavoriteQuotes:
//           final _arguments = settings.arguments as String?;
//           return materialPageRoute(
//             settings: settings,
//             builder: (context) => BlocProvider<UpdateProfileCubit>(
//               create: (context) => AppInjector.I.instance.get<UpdateProfileCubit>(),
//               child: EditFavoriteQuotes(
//                 favoriteQuoteSaved: _arguments,
//               ),
//             ),
//           );
//       }
//     } else {
//       return null;
//     }
//     return null;
//   }
// }
//
// materialPageRoute({
//   required Widget Function(BuildContext) builder,
//   required RouteSettings settings,
// }) {
//   return MaterialPageRoute(
//     settings: settings,
//     builder: builder,
//   );
// }
