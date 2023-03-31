import 'package:flutter/material.dart';
import 'package:theme/material3/themes_data.dart';
import 'package:untitled2/di/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter app',
      themeMode: ThemeMode.light,
      theme: AppThemes.haloLightTheme,
      darkTheme: AppThemes.haloLightTheme,
      onGenerateRoute: (settings) {
        return AppRouters().generateRoute(settings);
      },
      initialRoute: AppRouters.login,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const ErrorPage(),
      ),
    );
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('error'));
  }
}
