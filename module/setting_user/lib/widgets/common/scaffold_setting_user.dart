import 'package:flutter/material.dart';
// import 'package:theme/material3/m3_theme_lib.dart';

class ScaffoldSettingUser extends StatefulWidget {
  final Widget? child;
  final String titleAppbar;

  const ScaffoldSettingUser({Key? key, this.child, required this.titleAppbar})
      : super(key: key);

  @override
  State<ScaffoldSettingUser> createState() => _ScaffoldSettingUserState();
}

class _ScaffoldSettingUserState extends State<ScaffoldSettingUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titleAppbar),
      ),
      // backgroundColor: context.,
      body: Padding(
        padding: EdgeInsets.all(16),//HaloPadding.all,
        child: widget.child,
      ),
    );
  }
}
