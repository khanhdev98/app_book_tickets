import 'package:flutter/material.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
import '../../core/enums/setting_privacy.dart';
import '../../resource/gen/assets.gen.dart';

typedef OnPrivacyByCallBack = Function(SettingUserPrivacy? contentPrivacy);

class ContentPrivacy extends StatefulWidget {
  final OnPrivacyByCallBack? privacyCallBack;
  final SettingUserPrivacy? defaultPrivacy;

  const ContentPrivacy({
    Key? key,
    this.defaultPrivacy,
    this.privacyCallBack,
  }) : super(key: key);

  @override
  State<ContentPrivacy> createState() => _ContentPrivacyState();
}

class _ContentPrivacyState extends State<ContentPrivacy> {
  SettingUserPrivacy? _privacy;

  OnPrivacyByCallBack? get callback => widget.privacyCallBack;

  @override
  void initState() {
    super.initState();
    _privacy = widget.defaultPrivacy;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,),//HaloSize.paddingXS),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _content(
            SettingUserPrivacy.public,
            leadingIcon: SettingUserAssets
                .lib.resource.assets.images.settingPublic
                .image(),
            title: "Công khai",
          ),
          _content(
            SettingUserPrivacy.onlyMe,
            leadingIcon: SettingUserAssets
                .lib.resource.assets.images.settingOnlyMe
                .image(),
            title: "Chỉ mình tôi",
          ),
        ],
      ),
    );
  }

  Widget _content(
    SettingUserPrivacy value, {
    required Widget leadingIcon,
    String? title,
  }) =>
      Row(
        children: [
          Row(
            children: [
              leadingIcon,
              // HaloSpacing.normal,
              Text(title ?? ""),
            ],
          ),
          const Spacer(),
          Radio<SettingUserPrivacy>(
            value: value,
            groupValue: _privacy,
            onChanged: (value) {
              setState(() {
                _privacy = value;
                callback?.call(_privacy);
              });
            },
          ),
        ],
      );
}
