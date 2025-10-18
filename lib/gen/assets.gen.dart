// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Sun.svg
  SvgGenImage get sun => const SvgGenImage('assets/icons/Sun.svg');

  /// File path: assets/icons/ar_icon.png
  AssetGenImage get arIcon => const AssetGenImage('assets/icons/ar_icon.png');

  /// File path: assets/icons/email.svg
  SvgGenImage get email => const SvgGenImage('assets/icons/email.svg');

  /// File path: assets/icons/en_icon.png
  AssetGenImage get enIcon => const AssetGenImage('assets/icons/en_icon.png');

  /// File path: assets/icons/eye.svg
  SvgGenImage get eye => const SvgGenImage('assets/icons/eye.svg');

  /// File path: assets/icons/google_icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/icons/google_icon.png');

  /// File path: assets/icons/heart_selected.svg
  SvgGenImage get heartSelected =>
      const SvgGenImage('assets/icons/heart_selected.svg');

  /// File path: assets/icons/heart_unselected.svg
  SvgGenImage get heartUnselected =>
      const SvgGenImage('assets/icons/heart_unselected.svg');

  /// File path: assets/icons/home_selected.png
  AssetGenImage get homeSelected =>
      const AssetGenImage('assets/icons/home_selected.png');

  /// File path: assets/icons/home_unselected.svg
  SvgGenImage get homeUnselected =>
      const SvgGenImage('assets/icons/home_unselected.svg');

  /// File path: assets/icons/lock.svg
  SvgGenImage get lock => const SvgGenImage('assets/icons/lock.svg');

  /// File path: assets/icons/map_selected.svg
  SvgGenImage get mapSelected =>
      const SvgGenImage('assets/icons/map_selected.svg');

  /// File path: assets/icons/map_unselected.svg
  SvgGenImage get mapUnselected =>
      const SvgGenImage('assets/icons/map_unselected.svg');

  /// File path: assets/icons/name_icon.svg
  SvgGenImage get nameIcon => const SvgGenImage('assets/icons/name_icon.svg');

  /// File path: assets/icons/profile_selected.svg
  SvgGenImage get profileSelected =>
      const SvgGenImage('assets/icons/profile_selected.svg');

  /// File path: assets/icons/profile_unselected.svg
  SvgGenImage get profileUnselected =>
      const SvgGenImage('assets/icons/profile_unselected.svg');

  /// List of all assets
  List<dynamic> get values => [
    sun,
    arIcon,
    email,
    enIcon,
    eye,
    googleIcon,
    heartSelected,
    heartUnselected,
    homeSelected,
    homeUnselected,
    lock,
    mapSelected,
    mapUnselected,
    nameIcon,
    profileSelected,
    profileUnselected,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Sport.png
  AssetGenImage get sport => const AssetGenImage('assets/images/Sport.png');

  /// File path: assets/images/app_icon.png
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/images/app_icon.png');

  /// File path: assets/images/birthday.png
  AssetGenImage get birthday =>
      const AssetGenImage('assets/images/birthday.png');

  /// File path: assets/images/eating.png
  AssetGenImage get eating => const AssetGenImage('assets/images/eating.png');

  /// File path: assets/images/forget_password.png
  AssetGenImage get forgetPassword =>
      const AssetGenImage('assets/images/forget_password.png');

  /// File path: assets/images/gaming.png
  AssetGenImage get gaming => const AssetGenImage('assets/images/gaming.png');

  /// File path: assets/images/intro_being_creative.png
  AssetGenImage get introBeingCreative =>
      const AssetGenImage('assets/images/intro_being_creative.png');

  /// File path: assets/images/intro_hot-trending.png
  AssetGenImage get introHotTrending =>
      const AssetGenImage('assets/images/intro_hot-trending.png');

  /// File path: assets/images/intro_manager_desk.png
  AssetGenImage get introManagerDesk =>
      const AssetGenImage('assets/images/intro_manager_desk.png');

  /// File path: assets/images/intro_social.png
  AssetGenImage get introSocial =>
      const AssetGenImage('assets/images/intro_social.png');

  /// File path: assets/images/meeting.png
  AssetGenImage get meeting => const AssetGenImage('assets/images/meeting.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    sport,
    appIcon,
    birthday,
    eating,
    forgetPassword,
    gaming,
    introBeingCreative,
    introHotTrending,
    introManagerDesk,
    introSocial,
    meeting,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
