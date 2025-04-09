/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/calendar.png
  AssetGenImage get calendar =>
      const AssetGenImage('assets/icons/calendar.png');

  /// File path: assets/icons/car.png
  AssetGenImage get car => const AssetGenImage('assets/icons/car.png');

  /// File path: assets/icons/checker.png
  AssetGenImage get checker => const AssetGenImage('assets/icons/checker.png');

  /// File path: assets/icons/customer.png
  AssetGenImage get customer =>
      const AssetGenImage('assets/icons/customer.png');

  /// File path: assets/icons/dark-4x.png
  AssetGenImage get dark4x => const AssetGenImage('assets/icons/dark-4x.png');

  /// File path: assets/icons/dark_icon.png
  AssetGenImage get darkIcon =>
      const AssetGenImage('assets/icons/dark_icon.png');

  /// File path: assets/icons/datetime.png
  AssetGenImage get datetime =>
      const AssetGenImage('assets/icons/datetime.png');

  /// File path: assets/icons/folder.png
  AssetGenImage get folder => const AssetGenImage('assets/icons/folder.png');

  $AssetsIconsLauncherGen get launcher => const $AssetsIconsLauncherGen();

  /// File path: assets/icons/light_icon.png
  AssetGenImage get lightIcon =>
      const AssetGenImage('assets/icons/light_icon.png');

  /// File path: assets/icons/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/icons/logo.png');

  /// File path: assets/icons/previous_done.png
  AssetGenImage get previousDone =>
      const AssetGenImage('assets/icons/previous_done.png');

  /// File path: assets/icons/tasks.png
  AssetGenImage get tasks => const AssetGenImage('assets/icons/tasks.png');

  /// File path: assets/icons/toilet.png
  AssetGenImage get toilet => const AssetGenImage('assets/icons/toilet.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// File path: assets/icons/user_profile.png
  AssetGenImage get userProfile =>
      const AssetGenImage('assets/icons/user_profile.png');

  /// File path: assets/icons/vegas_logo.webp
  AssetGenImage get vegasLogo =>
      const AssetGenImage('assets/icons/vegas_logo.webp');

  /// List of all assets
  List<AssetGenImage> get values => [
        calendar,
        car,
        checker,
        customer,
        dark4x,
        darkIcon,
        datetime,
        folder,
        lightIcon,
        logo,
        previousDone,
        tasks,
        toilet,
        user,
        userProfile,
        vegasLogo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.jpg
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.jpg');

  /// File path: assets/images/bg2.jpg
  AssetGenImage get bg2 => const AssetGenImage('assets/images/bg2.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [background, bg2];
}

class $AssetsIconsLauncherGen {
  const $AssetsIconsLauncherGen();

  /// File path: assets/icons/launcher/from_suwayomi.png
  AssetGenImage get fromSuwayomi =>
      const AssetGenImage('assets/icons/launcher/from_suwayomi.png');

  /// File path: assets/icons/launcher/sorayomi_icon.ico
  String get sorayomiIconIco => 'assets/icons/launcher/sorayomi_icon.ico';

  /// File path: assets/icons/launcher/sorayomi_icon.png
  AssetGenImage get sorayomiIconPng =>
      const AssetGenImage('assets/icons/launcher/sorayomi_icon.png');

  /// File path: assets/icons/launcher/sorayomi_preview_icon.png
  AssetGenImage get sorayomiPreviewIcon =>
      const AssetGenImage('assets/icons/launcher/sorayomi_preview_icon.png');

  /// List of all assets
  List<dynamic> get values =>
      [fromSuwayomi, sorayomiIconIco, sorayomiIconPng, sorayomiPreviewIcon];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
    String? package,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
