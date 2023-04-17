import 'package:flutter/material.dart';

import '../../core/lang/generate/halo_localizations.dart';
import '../../resource/gen/assets.gen.dart';

class EditProfileErrorPage extends StatelessWidget {
  const EditProfileErrorPage({
    super.key,
    required this.appBarHeight,
  });

  final double appBarHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - appBarHeight,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SettingUserAssets.lib.resource.assets.images.editError.image(),
          Text(Str.of(context).setting_user_edit_profile_message_error),
        ],
      ),
    );
  }
}