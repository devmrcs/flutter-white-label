import 'package:lib_flavor_core/lib_flavor_core.dart';

class IFlavorConfigData {
  final IFlavorAssets assets;
  final IFlavorStrings strings;
  final IFlavorTheme theme;

  const IFlavorConfigData({
    required this.assets,
    required this.strings,
    required this.theme,
  });

  const IFlavorConfigData.fallback()
      : assets = const IFlavorAssets.fallback(),
        strings = const IFlavorStrings.fallback(),
        theme = const IFlavorTheme.fallback();
}
