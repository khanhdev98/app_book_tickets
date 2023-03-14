import 'package:flutter/material.dart';
import 'package:theme/material3/themes_data.dart';
import 'package:untitled2/screen/bottom_bar.dart';

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
      home: const BottomBar(),
    );
  }
}


