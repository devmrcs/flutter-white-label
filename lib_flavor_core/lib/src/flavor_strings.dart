import 'package:flutter/widgets.dart';

import 'flavor_config.dart';
import 'flavor_config_data.dart';

class IFlavorStrings {
  final String flavorName;
  final String textButton;

  const IFlavorStrings({
    required this.flavorName,
    required this.textButton,
  });

  const IFlavorStrings.fallback()
      : flavorName = 'Fallback flavorName',
        textButton = 'Fallback textButton';

  static IFlavorStrings of(BuildContext context) {
    final IFlavorConfigData flavorConfigData = FlavorConfig.of(context);

    return flavorConfigData.strings;
  }
}
