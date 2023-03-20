import 'package:get/get.dart';


abstract class _CommonAssets {
  static const String _assetsPath = 'assets/graphics/common';
  static const _LogoAssets logo = _LogoAssets();
}

class _LightIcons {
  static const String _iconsPath = 'assets/graphics/light/icons';
  final bell = '$_iconsPath/bell.png';
  final bookmark = '$_iconsPath/bookmarks.png';
  final search = '$_iconsPath/search.png';
  final sun = '$_iconsPath/sun.png';
  final moon = '$_iconsPath/moon.png';
  final arrowLongRight = '$_iconsPath/arrow_long_right.png';
  final percentage = '$_iconsPath/percentage.png';
  final timeBack = '$_iconsPath/time_back.png';
  final exchangeArrow = '$_iconsPath/exchange_arrow.png';
  final arrowBoth = '$_iconsPath/arrow_both.png';
}

class _DarkIcons {
  static const String _iconsPath = 'assets/graphics/dark/icons';
  final bell = '$_iconsPath/bell.png';
  final bookmark = '$_iconsPath/bookmarks.png';
  final search = '$_iconsPath/search.png';
  final sun = '$_iconsPath/sun.png';
  final moon = '$_iconsPath/moon.png';
  final arrowLongRight = '$_iconsPath/arrow_long_right.png';
  final percentage = '$_iconsPath/percentage.png';
  final timeBack = '$_iconsPath/time_back.png';
  final exchangeArrow = '$_iconsPath/exchange_arrow.png';
  final arrowBoth = '$_iconsPath/arrow_both.png';
}


class _LightAssets extends _CommonAssets {
  static const String _assetsPath = 'assets/graphics/light';
  final icons = _LightIcons();
  final String appBg = '$_assetsPath/app_bg.png';
}

class _DarkAssets extends _CommonAssets {
  static const String _assetsPath = 'assets/graphics/dark';
  final icons = _DarkIcons();
  final String appBg = '$_assetsPath/app_bg.png';
}

class _LogoAssets {
  static const String _assetsPath = 'assets/graphics/logo';
  static const String textLogoLight = '$_assetsPath/text_logo_light.png';
  static const String textLogoDark = '$_assetsPath/text_logo_dark.png';

  //const constructor
  const _LogoAssets();
}

abstract class AppAssets {
  static final light = _LightAssets();
  static final dark = _DarkAssets();

  static String get textLogo => Get.isDarkMode ? _LogoAssets.textLogoDark : _LogoAssets.textLogoLight;
}