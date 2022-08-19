import 'package:flutter/widgets.dart';

import 'flavor_config.dart';
import 'flavor_config_data.dart';

class IFlavorAssets {
  final String logo;

  const IFlavorAssets({
    required this.logo,
  });

  const IFlavorAssets.fallback() : logo = 'assets/images/logo.png';

  static IFlavorAssets of(BuildContext context) {
    final IFlavorConfigData flavorConfigData = FlavorConfig.of(context);

    return flavorConfigData.assets;
  }
}
