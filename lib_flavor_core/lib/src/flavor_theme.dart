import 'package:flutter/material.dart';
import 'package:lib_flavor_core/lib_flavor_core.dart';

class IFlavorTheme {
  final BrandColors brandColors;

  const IFlavorTheme({
    required this.brandColors,
  });

  const IFlavorTheme.fallback() : brandColors = const BrandColors.fallback();

  ThemeData toMaterialThemeData() {
    return ThemeData(
      primaryColor: brandColors.primaryPure,
    );
  }

  static IFlavorTheme of(BuildContext context) {
    final IFlavorConfigData flavorConfigData = FlavorConfig.of(context);

    return flavorConfigData.theme;
  }
}

class BrandColors {
  final Color primaryPure;

  const BrandColors({
    required this.primaryPure,
  });

  const BrandColors.fallback() : primaryPure = Colors.red;
}
