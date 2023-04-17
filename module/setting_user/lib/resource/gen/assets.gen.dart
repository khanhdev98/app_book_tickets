/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  $LibResourceGen get resource => const $LibResourceGen();
}

class $LibResourceGen {
  const $LibResourceGen();

  $LibResourceAssetsGen get assets => const $LibResourceAssetsGen();
}

class $LibResourceAssetsGen {
  const $LibResourceAssetsGen();

  $LibResourceAssetsImagesGen get images => const $LibResourceAssetsImagesGen();
}

class $LibResourceAssetsImagesGen {
  const $LibResourceAssetsImagesGen();

  /// File path: lib/resource/assets/images/check_done.png
  AssetGenImage get checkDone =>
      const AssetGenImage('lib/resource/assets/images/check_done.png');

  /// File path: lib/resource/assets/images/edit.png
  AssetGenImage get edit =>
      const AssetGenImage('lib/resource/assets/images/edit.png');

  /// File path: lib/resource/assets/images/edit_error.png
  AssetGenImage get editError =>
      const AssetGenImage('lib/resource/assets/images/edit_error.png');

  /// File path: lib/resource/assets/images/setting_friend.png
  AssetGenImage get settingFriend =>
      const AssetGenImage('lib/resource/assets/images/setting_friend.png');

  /// File path: lib/resource/assets/images/setting_only_me.png
  AssetGenImage get settingOnlyMe =>
      const AssetGenImage('lib/resource/assets/images/setting_only_me.png');

  /// File path: lib/resource/assets/images/setting_public.png
  AssetGenImage get settingPublic =>
      const AssetGenImage('lib/resource/assets/images/setting_public.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [checkDone, edit, editError, settingFriend, settingOnlyMe, settingPublic];
}

class SettingUserAssets {
  SettingUserAssets._();

  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package = 'setting_user',
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => 'packages/setting_user/$_assetName';
}
